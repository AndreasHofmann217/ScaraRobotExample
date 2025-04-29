#
# Copyright (c) 2025 Andreas Hofmann
# Licensed under the MIT license. See LICENSE file in the project root for details.
#

using DataInterpolations
using DelimitedFiles

function getScaraInputs(data::Symbol)

    path = ""
    if data == :train
    path = "./Scara_Data/train.txt"
    elseif data == :validate
        path = "./Scara_Data/validate.txt"
    else
        println("Invalid data selected")
        return -1
    end
    trajs = readdlm(path)
    
    interpolation_objects = []
    for i in 2:4
        push!(interpolation_objects,LinearInterpolation(trajs[:,i],trajs[:,1]; extrapolation = ExtrapolationType.Linear))
    end
    return interpolation_objects

end
