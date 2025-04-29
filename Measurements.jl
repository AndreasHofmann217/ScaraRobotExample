#
# Copyright (c) 2025 Andreas Hofmann
# Licensed under the MIT license. See LICENSE file in the project root for details.
#

using DataInterpolations
using OrderedCollections
using HDF5

#  this should actually be a own module, since the structs are used multiple times and include causes at least warnings
mutable struct Signal

    time::Union{Vector{Float64},Nothing}
    value::Union{Vector{Float64},Nothing}
    interpolation
    name::String

    function Signal(name::String, time::Vector{Float64},value::Vector{Float64})
        inst = new()
        inst.name = name
        inst.time = time
        inst.value = value
        inst.interpolation = DataInterpolations.LinearInterpolation(inst.value, inst.time,extrapolation = ExtrapolationType.Linear)
        return inst
    end
end


mutable struct Measurement
    name::Union{String,Nothing}
    states::Union{Vector{String}, Nothing} # states in correct order, which is used for fmu simulation
    signals::Union{Dict{String,Signal}, Nothing}
    t_start::Union{Float64,Nothing}
    t_stop::Union{Float64,Nothing}

    function Measurement(name::String, signals::Dict{String,Signal}, states::Vector{String})
        inst = new()
        inst.name = name
        inst.states = states
        inst.signals = signals
        _end_times = Vector{Float64}()
        for (k,v) in inst.signals
            push!(_end_times,v.time[end])
        end
        inst.t_start = 0.0
        inst.t_stop = minimum(_end_times)
        return inst
    end
end

mutable struct Sample
    
    origin::Union{Measurement,Nothing} # reference to measurement  the sample is coming from
    states::Union{Vector{String}, Nothing} # states in correct order, which is used for fmu simulation
    signals::Union{Dict{String,Signal}, Nothing}
    t_start::Union{Float64, Nothing}
    t_stop::Union{Float64,Nothing}
    sample_rate::Union{Float64,Nothing}

    loss_ref::Union{Matrix{Float64},Nothing}
end

function Sample(meas::Measurement, t_start::Float64, t_stop::Float64, sample_rate::Float64, loss_signals::Vector{Tuple{String,Int64}}, loss_idx::Vector{Int64})
    origin = meas
    states = meas.states
    t_start = t_start
    t_stop = t_stop

    signals = Dict{String,Signal}()
    saveat = collect(t_start:sample_rate:t_stop)
    new_time_data = saveat .-t_start #collect(0.0:dt:(t_stop-t_start)) --> can cause different length of array due to round off errors
    # perform interpolations on all signals
    for (k,sig) in meas.signals
        values = sig.interpolation(saveat)
        #inst.signals[k] = Signal(k,new_time_data,values) # using actual time rather than starting from zero
        signals[k] = Signal(k,saveat,values)
    end

    ref_data = []
    used_sig = []
    for i in loss_idx
        for sig in loss_signals
            if sig[2] == i
                push!(used_sig,sig)
            end
        end
    end

    for entry in used_sig
        push!(ref_data, signals[entry[1]].interpolation(saveat))
    end
    loss_ref = transpose(reduce(hcat,ref_data))

    return Sample(origin,states,signals,t_start,t_stop,sample_rate,loss_ref)

end



function getStates(meas::Union{Measurement,Sample};t::Union{Float64,Nothing} =nothing)
    state_vec = Vector{Float64}()
    _t = isnothing(t) ? meas.t_start : t
    for state in meas.states
        push!(state_vec,meas.signals[state].interpolation(_t))
    end

    return state_vec
end

function getInputFunctions(meas::Union{Measurement,Sample}, input_signals::Vector{String})

    inputFunctions = Vector{Function}()
    for (i,inp) in enumerate(input_signals)
        function _inputFunction(t)
            return meas.signals[inp].interpolation(t)
        end
        push!(inputFunctions,_inputFunction)
    end

    return inputFunctions
end


function generateSamples(meas::Measurement,
    batch_length::Float64,
    sample_rate::Float64,
    loss_signal_mapping::Vector{Tuple{String,Int64}},
    loss_idx::Vector{Int64};
    measurement_limits::Union{Nothing,Tuple{Float64,Float64}}=nothing,
    allow_short_batches::Bool=false,
    )

    batches = Vector{Sample}()
    # take shortest signal time from measurement and ajust batching for that
    t_start = isnothing(measurement_limits) ? meas.t_start : measurement_limits[1]
    t_stop  = isnothing(measurement_limits) ? meas.t_stop  : min(measurement_limits[2],meas.t_stop)
    
    # floor divide time by batch_length to get number of full samples
    duration = t_stop - t_start
    
    # number of full batches
    num_batches =  floor(Int,duration/batch_length)
    # start at zero and add up to batch_length
    for i in 1:num_batches
        push!(batches, Sample(meas, t_start + (i-1)*batch_length, t_start + i*batch_length, sample_rate, loss_signal_mapping, loss_idx))
    end 
    if allow_short_batches && (t_stop - num_batches * batch_length > sample_rate)
        push!(batches,Sample(meas,t_start + num_batches*batch_length, t_stop, sample_rate,loss_signal_mapping, loss_idx))
    end
    return batches
end

function generateSamples(meas_set::Vector{Measurement},
    batch_length::Float64,
    sample_rate::Float64,
    loss_signal_mapping::Vector{Tuple{String,Int64}},
    loss_idx::Vector{Int64};
    measurement_limits::Union{Nothing,Tuple{Float64,Float64}}=nothing,
    allow_short_batches::Bool=false
)
    batches = Vector{Sample}()
    for meas in meas_set
        batches = vcat(batches,generateSamples(meas,
            batch_length,
            sample_rate,
            loss_signal_mapping,
            loss_idx,
            measurement_limits=measurement_limits,
            allow_short_batches=allow_short_batches
        ))
    end
    return batches
end

function generateMeasurementsFromHDF5Measurements(data::Vector{Tuple{String,Dict}};states::Vector{String}=["current","motor_angle","motor_speed"])

    measurements = Vector{Measurement}()
    for (meas_name,meas_data) in data
        signals = Dict{String,Signal}()
        for (k,v) in meas_data
            signals[k] = Signal(k,v[1],v[2])
        end
        push!(measurements,Measurement(meas_name,signals,states))
    end

    return measurements

end

function readMeasurementsFromHDF5(filename::String;measurement_selection::Union{Vector{String},Nothing}=nothing)

    measurement_collection = Vector{Tuple{String,Dict}}()

    fid = h5open(filename,"r")
    measurement_keys = keys(fid)
    for meas in measurement_keys
        # only read defined signals if applicable - not efficient implementation!
        if isnothing(measurement_selection) || !(meas in measurement_selection)
            continue 
        end
        measurement = Dict{String,Tuple{Vector{Float64},Vector{Float64}}}()
        m_group = open_group(fid,meas)
        signal_keys = keys(m_group)
        for signal in signal_keys
            s_group = open_group(m_group,signal)
            value_keys = keys(s_group)
            time = nothing
            value = nothing
            for v in value_keys
                if v == "time"
                    time = read(s_group[v])
                else
                    value = read(s_group[v])
                end
            end
            measurement[signal] = (time,value)
        end
        push!(measurement_collection,(meas,measurement))
    end
    close(fid)

    return measurement_collection
end
