#
# Copyright (c) 2025 Andreas Hofmann
# Licensed under the MIT license. See LICENSE file in the project root for details.
#

using Lux
using ComponentArrays
using Optimisers

include("ZScore_Layer.jl")


function getNNandParameters_Scara_PeNODE(num_hidden,size_hidden,act_hidden, act_last)

    # initial guess values derived from simulation of friction based model
    #inputs tcpvx, tcpvy, forcez
    mean_input = [-0.0005,-0.0009,0.595]
    std_input = [0.036,0.040,0.491]
    # outputs - fx, fy 
    mean_output = [-0.016723291488818837,0.004317550471923802]
    std_output = [0.043517059155706375,0.06133174473266806]

    layers_chain1 = []
    push!(layers_chain1,MeanStdNormalizerLayer(mean_input,std_input))
    push!(layers_chain1, Dense(3,size_hidden,act_hidden))
    for i in 1:num_hidden
        push!(layers_chain1, Dense(size_hidden,size_hidden,act_hidden))
    end
    push!(layers_chain1, Dense(size_hidden,2,act_last))
    push!(layers_chain1,MeanStdUnNormalizerLayer(mean_output,std_output))
    chain1 = Lux.Chain(layers_chain1...)

    params1, states1 = Lux.setup(rng,chain1) |> f64 # rng is defined in Training.jl 
    p1_flat, re1 = Optimisers.destructure(params1)   


    function NN1(tcpvx, tcpvy, tcpfz, p)
        return Lux.apply(chain1,[tcpvx, tcpvy, tcpfz],re1(p),states1)[1]
    end


        # define componentarray with all trainable parameters
        p = ComponentArray{Float64}()
        g1 = ComponentArray{Float64}(0.0)
        nn1 = ComponentArray{Float64}(p1_flat)
        p = ComponentArray(p;g1)
        p = ComponentArray(p;nn1)

    return ([NN1],p)
end