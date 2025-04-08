using ChainRulesCore
using Optimisers
using LinearAlgebra
using PlotlyJS

include("TrainingManager.jl")

function prepareLossQuantities!(se::StepExecuter)
    # set ODEProblem, specific to sample (u0, inputfunctions)
    _ode_fun!(du,u,p,t) = se.penode_comp.penode_fun(du,u,p,t,se)
    
    ode_function = ODEFunction(_ode_fun!)

    # consider also daes
    if !isnothing(se.penode_comp.penode_mass_matrix)
        ode_function = ODEFunction(_ode_fun!;mass_matrix = se.penode_comp.penode_mass_matrix)    
    end

    se.penode_comp.input_fun = getInputFunctions(se.sample,se.penode_comp.input_signals)

    se.loss_comp.ode_prob = ODEProblem(ode_function,getStates(se.sample),(se.sample.t_start,se.sample.t_stop),se.p_flat)

    # solve the system to get correct initialization, otherwise there is an issue with reversediff and return code of ode solution
    begin
        u0 = getStates(se.sample)
        init_prob = remake(se.loss_comp.ode_prob,tspan=(se.sample.t_start,se.sample.t_start))
        init_sol = solve(se.loss_comp.ode_prob, se.sol_comp.solver)
        se.loss_comp.ode_prob = remake(se.loss_comp.ode_prob, u0=init_sol.u[1])
    end
    return nothing
end

function executeStep(se::StepExecuter)
    try
        prepareLossQuantities!(se)      
        # set loss_function w.r.t. sample
        loss_p(p) = se.loss_comp.loss_fun(p,se)
        # calculate gradient and loss
        grad = similar(se.p_flat)    
        se.grad_comp.grad_function!(grad,loss_p,se.p_flat)    
        sample_loss = loss_p(se.p_flat)
    
        put!(se.comm_ch,(grad,sample_loss))
    catch
        put!(se.comm_ch,nothing)
    end
    nothing
end

function calculateLoss(se::StepExecuter)
    try
        prepareLossQuantities!(se)
        # set loss_function w.r.t. sample
        loss_p(p) = se.loss_comp.loss_fun(p,se)
        sample_loss = loss_p(se.p_flat)
        put!(se.comm_ch,sample_loss)
    catch
        put!(se.comm_ch,nothing)
    end
    nothing
end

function simulateModel(se::StepExecuter)

    try
        # not all steps from here are required, should split into prepareSolve and PrepareLoss or
        prepareLossQuantities!(se)
        
        # solve ODEProblem
        _sol = solve(
            se.loss_comp.ode_prob,
            se.sol_comp.solver,
            callback = se.sol_comp.callbacks,
            saveat=collect(se.sample.t_start:se.loss_comp.sampling_rate:se.sample.t_stop),
            abstol = se.sol_comp.abstol,
            reltol = se.sol_comp.reltol,
            maxiters = se.sol_comp.maxiters,
            tstops = se.sol_comp.tstops
        )
        if se.sample isa Sample
            put!(se.comm_ch,(_sol,se.sample.origin.name))
        else
            put!(se.comm_ch,(_sol,se.sample.name))
        end
    catch
        put!(se.comm_ch,nothing)
    end
    nothing
end

function doStep(tm::TrainingManager)

    _grad = zeros(length(tm.p_flat))
    _loss = 0.0

    sample = rand(tm.training_samples);
    ch = Channel(1)
    _se = StepExecuter(
        sample,
        tm.p_flat,
        deepcopy(tm.penode_comp), # copy it since stepExecute will manipulate data here
        deepcopy(tm.loss_comp), # copy it since stepExecute will create individual odeproblem for each sample
        tm.grad_comp,
        tm.sol_comp,
        ch
    )
    executeStep(_se)
    _se = nothing
    sample_res = take!(ch)
    if !isnothing(sample_res)
        _grad = sample_res[1]
        _loss = sample_res[2]
    end            

    # update parameters
    Optimisers.update!(tm.opt_comp.optimizer_state, tm.p_flat, _grad)
    return _loss, _grad
end

function plotMeasurements(tm::TrainingManager, meas_set::Vector{Measurement}; plot_original_sim=false, sim_p::Union{Nothing, ComponentArray{Float64}} = nothing)

    # no multithreading considerations for now
    for meas in meas_set
        ch = Channel(1)
        _se = StepExecuter(
            meas,
            tm.p_flat,
            deepcopy(tm.penode_comp),
            deepcopy(tm.loss_comp),
            tm.grad_comp,
            tm.sol_comp,
            ch
        )
        simulateModel(_se)
        sol = take!(ch)
        if isnothing(sol)
            println("failed to simulate")
            continue
        end
        sol = sol[1] # 2nd element is name of measurement of origin of sample
        
        ref_traces = []
        sim_traces = []
        for sig in tm.loss_comp.loss_signal_mapping
            sig_name = sig[1]
            sig_sim_idx = sig[2]
            push!(ref_traces,scatter(;x=meas.signals[sig_name].time, y=meas.signals[sig_name].value, name="$(sig_name)"))
            push!(sim_traces, scatter(; x=sol.t, y=sol[sig_sim_idx,:], name="sim_$(sig_name)"))
        end
        _plot = plot(Layout(title=meas.name))
        display(_plot)
        addtraces!(_plot,ref_traces...)
        addtraces!(_plot,sim_traces...)
        orig_sim_traces = []
        if plot_original_sim
            p_flat = similar(tm.p_flat)
            if !isnothing(sim_p)
                p_flat = sim_p
            else
                for i in 1:length(p_flat)
                    p_flat[i] = 0.0
                end
            end
            _se.p_flat = p_flat
            simulateModel(_se)
            sol = take!(ch)
            if isnothing(sol)
                println("failed to calculate original sim")
                continue
            end
            sol = sol[1] # # 2nd element is name of measurement of origin of sample
            for sig in tm.loss_comp.loss_signal_mapping
                sig_name = sig[1]
                sig_sim_idx = sig[2]
                push!(orig_sim_traces, scatter(; x=sol.t, y=sol[sig_sim_idx,:], name="orig_sim_$(sig_name)"))
            end
            addtraces!(_plot,orig_sim_traces...)
        end
        close(ch)        
    end
end

function simulateMeasurements(tm::TrainingManager, meas_set::Vector{Measurement};p_custom::Union{Nothing,ComponentArray}=nothing)
    
    sol_array = Vector();

    for meas in meas_set
        ch = Channel(1)
        _se = StepExecuter(
            meas,
            isnothing(p_custom) ? tm.p_flat : p_custom,
            deepcopy(tm.penode_comp),
            deepcopy(tm.loss_comp),
            tm.grad_comp,
            tm.sol_comp,
            ch
        )
        simulateModel(_se)
        sol = take!(ch)
        if isnothing(sol)
            println("failed to simulate")
            continue
        end
        push!(sol_array,sol)
    end
    
    return sol_array
end