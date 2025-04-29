#
# Copyright (c) 2025 Andreas Hofmann
# Licensed under the MIT license. See LICENSE file in the project root for details.
#

using ModelingToolkit
using RuntimeGeneratedFunctions


# the code for obs_results is extremely slow but working for now...
function generateODESystem(prob::ODEProblem,mtk_sys::ODESystem; modelname::String="model", filename::String="generatedODESys.jl")
    # after generation still requires manual manipulation for adding the NN part

    params = prob.p[1] # do not keep complete mtk_parameter_array but only actual values
    parameter_names = string.(parameters(mtk_sys))
    mass_matrix = prob.f.mass_matrix

    rhs = modelname * "_ode=" *string(RuntimeGeneratedFunctions.get_expression(prob.f.f.f_iip))
    # add network parameters p and stepExecuter object to pass normal parameters and custom functions
    rhs = replace(rhs, "ˍ₋arg2"=>"p";count=1)
    rhs = replace(rhs,"t)"=>"t, se)";count=1)
    rhs = replace(rhs,"begin" => "begin\n\n\n\t\t\tˍ₋arg2 = se.penode_comp.penode_parameters\n\n"; count=1)



    obs = observed(mtk_sys)
    obs_array = []
    for entry in obs
        push!(obs_array,entry.lhs)
    end 

    obs_names = string.(obs_array)
    obs_rgf = ModelingToolkit.build_explicit_observed_function(mtk_sys,obs_array)
    obs_fun = modelname*"_obs=" * string(RuntimeGeneratedFunctions.get_expression(obs_rgf))
    # add network parameters p and steExecuter object ot pass custom functions
    obs_fun = replace(obs_fun,"t)"=> "t, p, se)";count=1)

    # write file
    open(filename,"w") do file
    
        # write header
        write(file,"# automatically generated using MTK_GenerateODESystem.jl\n\n")

        # write includes
        write(file, "using DifferentialEquations\n")
        write(file, "using ModelingToolkit\n") # some mtk specific functions might be in code w.r.t. array handling
        write(file, "using SymbolicUtils\n")
        write(file, "using NaNMath\n")
        write(file, "\n")

        # write function to get parameters
        write(file, "function get_$(modelname)_parameters()\n\n")
        write(file, "\tparam_values= $(params)\n")
        write(file, "\tparam_names= $(parameter_names)\n")
        write(file, "\treturn (param_values,param_names)\n")
        write(file, "end\n\n")

        #write function to get mass_matrix
        write(file, "function get_$(modelname)_mass_matrix()\n\n" )
        if isnothing(prob.f.mass_matrix)
            write(file,"\return nothing\n")
        else
            write(file,"\treturn $(prob.f.mass_matrix)\n")
        end
        write(file,"end\n\n")

        #write function to get rhs
        write(file, "function get_$(modelname)_rhs()\n\n")
        write(file, "\t$(rhs)\n\n")
        write(file, "\treturn $(modelname)_ode\n")
        write(file,"end\n\n")

        #write function to get obs
        write(file, "function get_$(modelname)_obs()\n\n")
        write(file, "\t$(obs_fun)\n\n")
        write(file, "\tobs_names = $(obs_names)\n\n")
        write(file, "\tobs_name_dict = Dict{String,Int64}()\n")
        write(file, "\tfor (i,sig) in enumerate(obs_names)\n")
        write(file, "\t\tobs_name_dict[sig] = i\n")
        write(file, "\tend\n\n")
        write(file, "\treturn ($(modelname)_obs, obs_names, obs_name_dict)\n")
        write(file,"end\n\n")

        #write function to calculate obs
        write(file, "function calc_$(modelname)_obs(ode_sol, obs_fun, ode_param, idx, network_param=nothing, se=nothing)\n\n")
        write(file, "\tobs_res = Vector{Vector{Any}}()\n")
        write(file, "\tfor i in 1:length(ode_sol.t)\n")
        write(file, "\t\t_u = ode_sol[i]\n")
        write(file, "\t\t_t = ode_sol.t[i]\n")
        write(file, "\t\tpush!(obs_res, obs_fun(_u,[ode_param],_t,network_param,se))\n")
        write(file, "\tend\n")
        write(file, "\treturn [obs_res[i][idx] for i in 1:length(obs_res)]\n")
        write(file, "end\n\n")
    end
end