# ScaraRobotExample

This repository contains the code for the example to the Modelica Conference 2025 Paper "Towards Integration of PeN-ODEs in a Modelica-based workflow"

(Link to paper to be added on acceptance.)


## Run the example (tested only on Windows)
### from Powershell/Bash
1. Download Julia in Version 1.11.1 from [https://julialang.org/](https://julialang.org/)
2. Start Julia from console in repository directory and define project via:
    ```
    julia --project=.
    ```
3. Instantiate project by opening the package manager and instantiating the project
    ```julia
    ]
    instantiate
    ```
4. Close Julia and start a new session to execute training via
    ```
    julia --project=. .\trainScaraModel.jl
    ```


### from VS Code with the Julia Extension
1. Install Julia in Version 1.11.1 (see link above) and install the VS Code extension afterwards
2. VS Code should automatically detect the ScaraRobotExample environment opening the directory (see bottom of VS Code window)
3. Start Julia REPL by pressing Alt+J Alt+O
4. Instantiate project from package manager
    ```julia
    ]
    instantiate
    ```
5. Execute training from trainScaraModel.jl by executing the file in VS Code or alternatively be executing line for line via Shift+Enter or Selection via Ctrl+Shift+Enter


## Additional information

Directory [checkpoints](https://github.com/AndreasHofmann217/ScaraRobotExample/tree/main/checkpoints) contains the pre-trained network parameters used for the plots of the paper. In [Scara_Data](https://github.com/AndreasHofmann217/ScaraRobotExample/tree/main/Scara_Data) reference data for training and set-point trajectories for the robot can be found. [ScaraModel](https://github.com/AndreasHofmann217/ScaraRobotExample/tree/main/ScaraModel) contains the component and system models used to generate the system model using [ModelingToolkit.jl](https://github.com/SciML/ModelingToolkit.jl)


## Used external sources
The example is build on the FMIFlux example [SciMLUsingFMUs](https://github.com/ThummeTo/FMIFlux.jl/tree/main/examples/pluto-src/SciMLUsingFMUs) and the corresponding youtube video [Scientific Machine Learning using Functional Mock-Up Units | Thummerer, Mikelsons | JuliaCon 2024](https://www.youtube.com/watch?v=sQ2MXSswrSo) but uses pure Julia and an object-oriented approach.

The scara model in this repository uses reimplementation of components/models from:
- Modelica Standard Library (MSL): https://github.com/modelica/ModelicaStandardLibrary
- Planar Mechanics Library: https://github.com/dzimmer/PlanarMechanics
- Servomechanism Library: https://github.com/afrhu/Servomechanisms
- FMIFlux.jl https://github.com/ThummeTo/FMIFlux.jl
