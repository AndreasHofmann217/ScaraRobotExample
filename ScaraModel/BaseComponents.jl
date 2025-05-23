#
# Copyright (c) 2025 Andreas Hofmann
# Licensed under the MIT license. See LICENSE file in the project root for details.
#

# Basic components required for ScaraRobot example
# partially based on the Modelica Standard Library https://github.com/modelica/ModelicaStandardLibrary

module BaseComponents

    using ModelingToolkit
    using ModelingToolkit: t_nounits as t, D_nounits as D
    using ModelingToolkitStandardLibrary
    using ModelingToolkitStandardLibrary.Electrical
    using ModelingToolkitStandardLibrary.Blocks
    using ModelingToolkitStandardLibrary.Mechanical: TranslationalModelica as Translational, Rotational



    @mtkmodel EMF begin
        @extend v,i = oneport = Electrical.OnePort()	
        @parameters begin
            k, [description = "Transformation coefficient"]
        end
        @variables begin
            phi(t), [description = "Angle"]
            w(t), [description = "Angular Velocity"]	
        end
        @components begin
            flange = Rotational.Flange()
        end	
        @equations begin
            phi ~ flange.phi
            D(phi) ~ w
            k * w ~ v
            flange.tau ~ -k * i	
        end
    end

    @mtkmodel ViscousFriction begin
        @parameters begin
            frictionFactor = 6.8e-5, [description = "Angular Velocity dependent Friction Factor [Nm.s/rad] "]
        end
        @components begin
            flange = Rotational.Flange()
        end
        @equations begin
            flange.tau ~ frictionFactor * D(flange.phi) # since friction force is negatively applied it acts inside the component rather than outside. Therefore, no negative sign is needed
        end
    end

end