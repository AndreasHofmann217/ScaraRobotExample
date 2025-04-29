# ScaraRobotExample

This repository contains the code for the example to the Modelica Conference 2025 Paper "Towards Integration of PeN-ODEs in a Modelica-based workflow"

(Link to paper to be added on acceptance.)


## Overview
Run trainScaraModel.jl to train the PeN-ODE SCARA robot and plot the reference data, untrained model and trained model.



Directory [checkpoints](https://github.com/AndreasHofmann217/ScaraRobotExample/tree/main/checkpoints) contains the pre-trained network parameters used for the plots of the paper. In [Scara_Data](https://github.com/AndreasHofmann217/ScaraRobotExample/tree/main/Scara_Data) reference data for training and set-point trajectories for the robot can be found. [ScaraModel](https://github.com/AndreasHofmann217/ScaraRobotExample/tree/main/ScaraModel) contains the component and system models used to generate the system model using [ModelingToolkit.jl](https://github.com/SciML/ModelingToolkit.jl)


## Used external sources
The example is build on the FMIFlux example [SciMLUsingFMUs](https://github.com/ThummeTo/FMIFlux.jl/tree/main/examples/pluto-src/SciMLUsingFMUs) and the corresponding youtube video [Scientific Machine Learning using Functional Mock-Up Units | Thummerer, Mikelsons | JuliaCon 2024](https://www.youtube.com/watch?v=sQ2MXSswrSo) but uses pure Julia and an object-oriented approach.

The scara model in this repository uses reimplementation of components/models from:
- Modelica Standard Library (MSL): https://github.com/modelica/ModelicaStandardLibrary
- Planar Mechanics Library: https://github.com/dzimmer/PlanarMechanics
- Servomechanics Library: https://github.com/afrhu/Servomechanisms
- FMIFlux.jl https://github.com/ThummeTo/FMIFlux.jl
