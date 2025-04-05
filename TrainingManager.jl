include("Measurements.jl")

mutable struct PENODE_COMPONENTS

    ode_fun::Function # ODEFunction with interface f!(du,u,p,t,stepExecuter)
    penode_fun::Function # PeN-ODE Function with interface F!(du,u,p,t,stepExecuter)
    nn_fun::Vector{Function} # Neural Network functions called within ode_fun
    input_fun::Union{Nothing,Vector{Function}} # Input functions used within ode and pen-ode fun
    input_signals::Vector{String} # Names of the Inputs w.r.t. Measurement data    
    ode_parameters::Union{Nothing,Vector{Float64}} # parameters used within the odefunc
    penode_parameters::Union{Nothing,Vector{Float64}} # parameters used within the penodefunc
    ode_mass_matrix::Union{Matrix{Float64},Nothing}
    penode_mass_matrix::Union{Matrix{Float64},Nothing}
end

mutable struct LOSS_COMPONENTS

    ode_prob::Union{ODEProblem,Nothing}
    loss_fun::Function # loss function to be called with interface loss(p,steExecuter)
    loss_signal_mapping::Vector{Tuple{String,Int64}} # names of signals/stateID used within loss for accumulation; used to build reference data
    loss_idx::Union{Nothing,Vector{Int64}} # preprocess idx of states that are used within odeproblem/odefunction/solution
    sampling_rate::Float64 # sampling of results (saveat)
end

mutable struct GRAD_COMPONENTS

    sensealg # algorithm to be used within ODE for calculating gradients
    grad_function!::Function # AD function to calculate gradients f!(grad,loss,p), i.e. ReverseDiff.gradient! or ForwardDiff.gradient!
end

mutable struct SOLVER_COMPONENTS

    solver
    abstol::Float64
    reltol::Float64
    maxiters::Float64
    tstops::Vector{Float64}
    callbacks
end

mutable struct StepExecuter

    sample::Union{Sample,Measurement} # sample to be executed during step
    p_flat

    penode_comp::PENODE_COMPONENTS
    loss_comp::LOSS_COMPONENTS
    grad_comp::GRAD_COMPONENTS
    sol_comp::SOLVER_COMPONENTS

    comm_ch::Union{Nothing,Channel} # channel use to communicate results

end

mutable struct OPT_COMPONENTS

    optimizer
    optimizer_state
end

mutable struct TrainingManager

    train_meas::Vector{Measurement}
    validation_meas::Vector{Measurement}

    p_flat

    penode_comp::PENODE_COMPONENTS
    loss_comp::LOSS_COMPONENTS
    grad_comp::GRAD_COMPONENTS
    sol_comp::SOLVER_COMPONENTS
    opt_comp::OPT_COMPONENTS

    training_samples::Union{Nothing,Vector{Sample}}
end













