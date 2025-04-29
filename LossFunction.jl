#
# Copyright (c) 2025 Andreas Hofmann
# Licensed under the MIT license. See LICENSE file in the project root for details.
#

using ChainRulesCore
using DifferentialEquations

include("TrainingManager.jl")


function loss_MAE(p,se::StepExecuter)

    tspan = (se.sample.t_start,se.sample.t_stop)
    saveat = collect(se.sample.t_start:se.loss_comp.sampling_rate:se.sample.t_stop)
    
    #remake ode problem
    prob_ = remake(se.loss_comp.ode_prob,p=p,tspan=tspan)
    sol_ = solve(prob_, se.sol_comp.solver,tstops = se.sol_comp.tstops, saveat=saveat,abstol=se.sol_comp.abstol,reltol=se.sol_comp.reltol,sensealg=se.grad_comp.sensealg,maxiters=se.sol_comp.maxiters,initializealg=NoInit())

    return sum(1/size(se.sample.loss_ref,2)*sum(abs.((view(sol_, se.loss_comp.loss_idx, :) - se.sample.loss_ref));dims=2)) 
end
