#
# Copyright (c) 2025 Andreas Hofmann
# Licensed under the MIT license. See LICENSE file in the project root for details.
#

# This is a reimplementation of the corresponding Flux Layers from FMIFlux.jl: https://github.com/ThummeTo/FMIFlux.jl

using Lux
using Random

# Layer for trainable transformation based on Z-Score (normalize)
struct MeanStdNormalizerLayer <: Lux.AbstractLuxLayer
    init_mean
    init_std
end

function MeanStdNormalizerLayer(means::AbstractArray, stds::AbstractArray)
    return MeanStdNormalizerLayer(() ->copy(means),()->copy(stds))
end

function Lux.initialparameters(::AbstractRNG,layer::MeanStdNormalizerLayer)
    (mean=layer.init_mean(), std=layer.init_std())
end

function (l::MeanStdNormalizerLayer)(x,ps,st)
    scaled = (x .- ps.mean) ./ ps.std    
    return scaled, st
end

# Layer for trainable transformation based on Z-Score (unnormalize)
struct MeanStdUnNormalizerLayer <: Lux.AbstractLuxLayer
    init_mean
    init_std
end

function MeanStdUnNormalizerLayer(means::AbstractArray, stds::AbstractArray)
    return MeanStdUnNormalizerLayer(()->copy(means), ()->copy(stds))
end

function Lux.initialparameters(::AbstractRNG,layer::MeanStdUnNormalizerLayer)
    (mean=layer.init_mean(), std=layer.init_std())
end

function (l::MeanStdUnNormalizerLayer)(x,ps,st)
    unscaled = x .* ps.std .+ ps.mean
    return unscaled, st
end