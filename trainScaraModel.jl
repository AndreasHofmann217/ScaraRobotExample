using ModelingToolkit
using ReverseDiff
using Random
Random.seed!(0815)
rng = Random.default_rng()
using Optimisers
using SciMLSensitivity
using JLD2

include("ScaraModel/ScaraRobot.jl")
using .ScaraRobot

include("generateDAEData.jl")
include("Scara_Data/ScaraTrajectories.jl")
include("Scara_Data/ScaraData.jl")
include("NN_Architecture.jl")
include("TrainingManager.jl")
include("TrainingMethods.jl")
include("LossFunction.jl")


include("Scara_ReferenceODE.jl")
include("Scara_PeNODE.jl")


## it is not required to generate files again, since they are available int he repository already including the required manual modifications
## make sure to manually adapt generated files after generation
# @mtkbuild scara_ref = ScaraRobot.ScaraModel()
# ref_prob = ODEProblem(scara_ref,zeros(9))
# generateODESystem(ref_prob,scara_ref;modelname="Scara_ReferenceODE",filename="Scara_ReferenceODE.jl")
# @mtkbuild scara_penode = ScaraRobot.TrainableScaraModel()
# penode_prob = ODEProblem(scara_penode,zeros(9))
# generateODESystem(penode_prob,scara_penode;modelname="Scara_PeNODE",filename="Scara_PeNODE.jl")

# load training and validation data as well as t_stops for discontinuities of input_signals
scara_t_stops_train = getScaraInputs(:train)[1].t;
scara_t_stops_validate = getScaraInputs(:validate)[1].t;
(train_meas, valid_meas, states, state_derivatives, input_signals) = getData();

# which signal name in reference data does correspond to which idx of the penode_function
loss_signal_mapping = [("rev1.phi", 1), ("motor1.i",2), ("rev1.w",3), ("rev2.phi",4), ("motor2.i",5), ("rev2.w",6), ("mass2.f2",7), ("toMass1.phi_tt", 8), ("toTCP.phi_tt",9)];
loss_selection = [2,5]; # only consider motor currents for loss aggregation

# get the function replacing the original dummy and the parameters of the NN
(nn_fun, p) = getNNandParameters_Scara_PeNODE(1,32,tanh,tanh);


# initialize settings for TrainingManager
penode_settings = PENODE_COMPONENTS(get_Scara_ReferenceODE_rhs(),get_Scara_PeNODE_rhs(),nn_fun,nothing,input_signals,get_Scara_ReferenceODE_parameters()[1],get_Scara_PeNODE_parameters()[1],get_Scara_ReferenceODE_mass_matrix(),get_Scara_PeNODE_mass_matrix());
loss_settings = LOSS_COMPONENTS(nothing,loss_MAE,loss_signal_mapping,loss_selection,1e-4);
grad_settings = GRAD_COMPONENTS(ReverseDiffAdjoint() #= actual method for gradient calculation across the dae =#,   ReverseDiff.gradient! #= method to call loss_function from=#);
sol_settings = SOLVER_COMPONENTS(Rodas5P(autodiff=false),1e-6,1e-6,2e7,scara_t_stops_train,nothing);

rule = Optimisers.Adam()
opt_state = Optimisers.setup(rule,p)
opt_settings = OPT_COMPONENTS(rule,opt_state);

tm = TrainingManager(train_meas,valid_meas,p,penode_settings,loss_settings,grad_settings,sol_settings,opt_settings,nothing);

# simulate the PeN-ODE and compare to measurements, make sure the correct t_stops are set in the sol_comp (training)
plotMeasurements(tm, tm.train_meas)

# generate samples for training
tm.training_samples = generateSamples(tm.train_meas,0.05, 1e-4, tm.loss_comp.loss_signal_mapping,tm.loss_comp.loss_idx; allow_short_batches = true);

losses = Vector{Float64}()

for (i,_) in enumerate(Iterators.repeated((),500))
    println("step: $(i)")
    @time (_loss,_grad) = doStep(tm)
    push!(losses,_loss)

    if (i%100==0)    
        JLD2.save(joinpath(pwd(),"checkpoints","checkpoint$(i).jld2"),Dict("parameters" => tm.p_flat, "opt_state" => tm.opt_comp.optimizer_state))
    end

end

# check training results and compare to model without friction
p_sim = deepcopy(tm.p_flat)
p_sim.g1 = 0.0
plotMeasurements(tm, tm.train_meas;plot_original_sim=true, sim_p = p_sim)

# check validation trajectory
tm.sol_comp.tstops = scara_t_stops_validate
plotMeasurements(tm, tm.validation_meas;plot_original_sim=true, sim_p = p_sim)

# get solution object to generate further results such as MSE/RMSE/MAE, ...
sol_array = simulateMeasurements(tm,tm.validation_meas;p_custom=p_sim)

# MAE
# MSE
# RMSE

# AbsMaximumError pro state