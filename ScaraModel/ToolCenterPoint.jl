#
# Copyright (c) 2025 Andreas Hofmann
# Licensed under the MIT license. See LICENSE file in the project root for details.
#

module ToolCenterPoint

    using ModelingToolkit
    using ModelingToolkit: t_nounits as t, D_nounits as D
    using ModelingToolkitStandardLibrary.Blocks

    using NaNMath

    include("PlanarMechanics.jl")
    using .PlanarMechanics

    "Frictin based TCP"
    @mtkmodel TCP begin
        @parameters begin
            eps = 1e-6
            mu_A = 0.3
            mu_S = 0.1
            vSlide = 0.001
            delta = 2
            viscousFrictionFactor = 5e-4
        end
        @variables begin
            x(t)
            y(t)
            vx(t)
            vy(t)
            f_abs(t)
            v_abs(t)
            fx(t)
            fy(t)
            Fs(t)
            Fc(t)
            Fv(t)
            Fstribeck(t)
        end
        @components begin
            frame_a = PlanarMechanics.Frame()
            zForceIn = Blocks.RealInput()
            posXOut = Blocks.RealOutput()
            posYOut = Blocks.RealOutput()
        end
        @equations begin
            frame_a.tau ~ 0.0
            frame_a.fx ~ fx
            frame_a.fy ~ fy
            
            frame_a.x ~ posXOut.u
            frame_a.y ~ posYOut.u
    
            frame_a.x ~ x
            frame_a.y ~ y
            D(x) ~ vx
            D(y) ~ vy
    
            # implementation of stribeck friction based upon
            # https://mogi.bme.hu/TAMOP/robot_applications/ch07.html#ch-8.3.4
            Fc ~ zForceIn.u * mu_S
            Fs ~ zForceIn.u * mu_A
            Fv ~ viscousFrictionFactor * v_abs
            Fstribeck ~ Fc + (Fs-Fc)*exp(-(v_abs/vSlide)^delta) + Fv
            f_abs ~ Fstribeck 
            v_abs ~ NaNMath.sqrt(vx^2 + vy^2)
            fx ~ ifelse(v_abs > eps,-f_abs * vx/v_abs,0.0)
            fy ~ ifelse(v_abs > eps,-f_abs * vy/v_abs,0.0)
        end
    end



    function NN_dummy(a,b,c,d)
        return [sin(b),cos(c*d)]
    end

    @register_array_symbolic NN_dummy(a,b,c,d) begin
    size=(2,)
    eltype=eltype(a)
    ndims=1
    end

    @mtkmodel TrainableTCP begin
        @variables begin
            x(t)
            y(t)
            vx(t)
            vy(t)
            f(t)[1:2]
        end
        @components begin
            frame_a = PlanarMechanics.Frame()
            zForceIn = Blocks.RealInput()
            posXOut = Blocks.RealOutput()
            posYOut = Blocks.RealOutput()
        end
        @equations begin
            frame_a.tau ~ 0.0
            frame_a.fx ~ f[1]
            frame_a.fy ~ f[2]
            
            frame_a.x ~ posXOut.u
            frame_a.y ~ posYOut.u
    
            frame_a.x ~ x
            frame_a.y ~ y
            D(x) ~ vx
            D(y) ~ vy
    
            # instead of using the symbolic function here, also a structural parameter could have been used,
            # allowing to define the symbolic function outside of the component.
            f ~ NN_dummy(1.0,vx,vy,zForceIn.u)    
        end
    end

end