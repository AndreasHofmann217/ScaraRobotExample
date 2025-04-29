#
# Copyright (c) 2025 Andreas Hofmann
# Licensed under the MIT license. See LICENSE file in the project root for details.
#

module ScaraRobot

    using ModelingToolkit
    using ModelingToolkit: t_nounits as t, D_nounits as D
    using ModelingToolkitStandardLibrary.Blocks
    using ModelingToolkitStandardLibrary.Mechanical: TranslationalModelica as Translational, Rotational

    using NaNMath

    include("PlanarMechanics.jl")
    using .PlanarMechanics

    include("DriveTrainComponents.jl")
    using .DriveTrainComponents

    include("ToolCenterPoint.jl")
    using .ToolCenterPoint

    # the ScaraRobot has 3 inputs: joint1, joint2 and force into the plane
    # since the inputs will be replaced later, we define some simple symbolic functions here, that will later be manually replaced after code generation
    function traj_1(t)
        return 1.0
    end
    function traj_2(t)
        return 2.0
    end
    function traj_3(t)
        return 3.0
    end
    @register_symbolic traj_1(t)
    @register_symbolic traj_2(t)
    @register_symbolic traj_3(t)


    @mtkmodel ScaraMechanics begin
        @parameters begin
            m1 = 0.008, [description="mass of Link1"]
            J1 = 2.7e-5, [description="Inertia of Link1"]
            L1 = 0.2, [description="Length of Link1"]
            m2 = 0.004, [description="mass of Link2"]
            J2 = 3.5e-6, [description="Inertia of Link2"]
            L2 = 0.1, [description="Length of Link2"]
            eps = 1e-6, [description="Stiction threshold"]
            vSlide = 0.001, [description = "Sliding velocity"]
            mu_A = 0.3, [description = "Friction coefficient at adhesion"]
            mu_S = 0.1, [description = "Friction coefficient at sliding"]
        end
        @components begin
            fixed = PlanarMechanics.Fixed()
            rev1 = PlanarMechanics.RevoluteJointActive()
            toRev2 = PlanarMechanics.FixedTranslation(r=[0.2,0.0])
            toMass1 = PlanarMechanics.FixedTranslation(r=[0.1,0.0])
            mass1 = PlanarMechanics.Body(m=m1,J=J1)
            rev2 = PlanarMechanics.RevoluteJointActive()
            toTCP = PlanarMechanics.FixedTranslation(r=[0.1,0.0])
            toMass2 = PlanarMechanics.FixedTranslation(r=[0.05,0.0])
            mass2 = PlanarMechanics.Body(m=m1,J=J1)
            tcp = ToolCenterPoint.TCP(eps=eps, mu_A= mu_A, mu_S=mu_S, vSlide=vSlide)
            flange1 = Rotational.Flange()
            flange2 = Rotational.Flange()
            zForceIn = Blocks.RealInput() 
            posXOut = Blocks.RealOutput()
            posYOut = Blocks.RealOutput()       
        end
        @equations begin
            connect(fixed.frame_a,rev1.frame_a)
            connect(rev1.frame_b,toRev2.frame_a)
            connect(rev1.frame_b,toMass1.frame_a)
            connect(toMass1.frame_b,mass1.frame_a)
            connect(toRev2.frame_b,rev2.frame_a)
            connect(rev2.frame_b,toTCP.frame_a)
            connect(rev2.frame_b,toMass2.frame_a)
            connect(toMass2.frame_b,mass2.frame_a)
            connect(toTCP.frame_b,tcp.frame_a)
            connect(zForceIn, tcp.zForceIn)
            connect(flange1,rev1.flange_a)
            connect(flange2,rev2.flange_a)
            connect(posXOut,tcp.posXOut)
            connect(posYOut,tcp.posYOut)
        end
    end

    @mtkmodel ScaraModel begin
        @parameters begin
            m1 = 0.008, [description="mass of Link1"]
            J1 = 3.4e-4, [description="Inertia of Link1"]
            L1 = 0.2, [description="Length of Link1"]
            m2 = 0.004, [description="mass of Link2"]
            J2 = 4.35e-5, [description="Inertia of Link2"]
            L2 = 0.1, [description="Lengthof Link2"]
            elbow = -1.0, [description="elbow of Scara -1 - up, 1 down"]
            eps = 1e-6, [description="Stiction threshold"]
            vSlide = 0.001, [description = "Sliding velocity"]
            mu_A = 0.3, [description = "Friction coefficient at adhesion"]
            mu_S = 0.1, [description = "Friction coefficient at sliding"]
            R = 0.101, [description = "Motor Resistance [Ω]"]
            L = 2.66e-5, [description = "Motor Inductivity [H]"]
            k = 0.0115, [description = "Motor Constant [N.m/A]"]
            Jmotor = 0.0000119, [description = "Motor Inertia [kg.m2]"]
            v = 0.0, [description = "Viscous friction factor [Nm.s/rad]"]
            gearratio1 = 10.0, [description = "Gearratio for motor1"]
            gearratio2 = 5.0, [description = "Gearratio for motor2"]
            voltageLimit = 12.0, [description = "Limit of motor voltage input"]
            controllerGain2 = 4.423, [description = "Gain of P-Controller Motor1"]
            controllerGain1 = 7.1543, [description = "Gain of P-Controller Motor2"]
        end
        @components begin
            # input section
            inp1_traj = Blocks.TimeVaryingFunction(f = traj_1)
            inp2_traj = Blocks.TimeVaryingFunction(f = traj_2)
            inp3_traj = Blocks.TimeVaryingFunction(f = traj_3)
            inv_kin = DriveTrainComponents.ScaraInverseKinematics(L1=L1,L2=L2,elbow=elbow)
            # drive 1
            motor1 = DriveTrainComponents.SignalDCMotor(R=R,L=L,k=k,J=Jmotor,v=v)
            gear1 = Rotational.IdealGear(ratio=gearratio1)
            angleSensor1 = Rotational.AngleSensor()
            feedback1 = Blocks.Feedback()
            gain1 = Blocks.Gain(k=controllerGain1)
            # drive 2
            motor2 = DriveTrainComponents.SignalDCMotor(R=R,L=L,k=k,J=Jmotor,v=v)
            gear2 = Rotational.IdealGear(ratio = gearratio2)
            angleSensor2 = Rotational.AngleSensor()
            feedback2 = Blocks.Feedback()
            gain2 = Blocks.Gain(k=controllerGain2)
            scara = ScaraMechanics(m1=m1, J1=J1, L1=L1, m2=m2, J2=J2, L2=L2, eps=eps,
                vSlide=vSlide,mu_A=mu_A,mu_S=mu_S)
        end
        @equations begin
            connect(inp1_traj.output,inv_kin.inp1)
            connect(inp2_traj.output,inv_kin.inp2)
            # drive 1
            connect(inv_kin.out1,feedback1.input1)
            connect(feedback1.output, gain1.input)
            connect(gain1.output,motor1.vSignal)
            connect(motor1.flange_a,gear1.flange_a)
            connect(gear1.flange_b,angleSensor1.flange)
            connect(angleSensor1.phi,feedback1.input2)
            #drive 2
            connect(inv_kin.out2,feedback2.input1)
            connect(feedback2.output,gain2.input)
            connect(gain2.output, motor2.vSignal)
            connect(motor2.flange_a,gear2.flange_a)
            connect(gear2.flange_b,angleSensor2.flange)
            connect(angleSensor2.phi,feedback2.input2)
            # scara mechanics
            connect(gear1.flange_b,scara.flange1)
            connect(gear2.flange_b,scara.flange2)
            connect(inp3_traj.output,scara.zForceIn)
        end
    end


    @mtkmodel TrainableScaraMechanics begin
        @parameters begin
            m1 = 0.008, [description="mass of Link1"]
            J1 = 2.7e-5, [description="Inertia of Link1"]
            L1 = 0.2, [description="Length of Link1"]
            m2 = 0.004, [description="mass of Link2"]
            J2 = 3.5e-6, [description="Inertia of Link2"]
            L2 = 0.1, [description="Length of Link2"]
        end
        @components begin
            fixed = PlanarMechanics.Fixed()
            rev1 = PlanarMechanics.RevoluteJointActive()
            toRev2 = PlanarMechanics.FixedTranslation(r=[0.2,0.0])
            toMass1 = PlanarMechanics.FixedTranslation(r=[0.1,0.0])
            mass1 = PlanarMechanics.Body(m=m1,J=J1)
            rev2 = PlanarMechanics.RevoluteJointActive()
            toTCP = PlanarMechanics.FixedTranslation(r=[0.1,0.0])
            toMass2 = PlanarMechanics.FixedTranslation(r=[0.05,0.0])
            mass2 = PlanarMechanics.Body(m=m1,J=J1)
            tcp = ToolCenterPoint.TrainableTCP()
            flange1 = Rotational.Flange()
            flange2 = Rotational.Flange()
            zForceIn = Blocks.RealInput() 
            posXOut = Blocks.RealOutput()
            posYOut = Blocks.RealOutput()       
        end
        @equations begin
            connect(fixed.frame_a,rev1.frame_a)
            connect(rev1.frame_b,toRev2.frame_a)
            connect(rev1.frame_b,toMass1.frame_a)
            connect(toMass1.frame_b,mass1.frame_a)
            connect(toRev2.frame_b,rev2.frame_a)
            connect(rev2.frame_b,toTCP.frame_a)
            connect(rev2.frame_b,toMass2.frame_a)
            connect(toMass2.frame_b,mass2.frame_a)
            connect(toTCP.frame_b,tcp.frame_a)
            connect(zForceIn, tcp.zForceIn)
            connect(flange1,rev1.flange_a)
            connect(flange2,rev2.flange_a)
            connect(posXOut,tcp.posXOut)
            connect(posYOut,tcp.posYOut)
        end
    end

    @mtkmodel TrainableScaraModel begin
        @parameters begin
            m1 = 0.008, [description="mass of Link1"]
            J1 = 3.4e-4, [description="Inertia of Link1"] # w.r.t. steiner (pure inertia of box = 2.7e-5)
            L1 = 0.2, [description="Length of Link1"]
            m2 = 0.004, [description="mass of Link2"]
            J2 = 4.35e-5, [description="Inertia of Link2"] # w.r.t. steiner (pure inertia of box = 3.5e-6)
            L2 = 0.1, [description="Lengthof Link2"]
            elbow = -1.0, [description="elbow of Scara -1 - up, 1 down"]
            R = 0.101, [description = "Motor Resistance [Ω]"]
            L = 2.66e-5, [description = "Motor Inductivity [H]"]
            k = 0.0115, [description = "Motor Constant [N.m/A]"]
            Jmotor = 0.0000119, [description = "Motor Inertia [kg.m2]"]
            v = 0.0, [description = "Viscous friction factor [Nm.s/rad]"]
            gearratio1 = 10.0, [description = "Gearratio for motor1"]
            gearratio2 = 5.0, [description = "Gearratio for motor2"]
            voltageLimit = 12.0, [description = "Limit of motor voltage input"]
            controllerGain2 = 4.423, [description = "Gain of P-Controller Motor1"]
            controllerGain1 = 7.1543, [description = "Gain of P-Controller Motor2"]
        end
        @components begin
            # input section
            inp1_traj = Blocks.TimeVaryingFunction(f = traj_1)
            inp2_traj = Blocks.TimeVaryingFunction(f = traj_2)
            inp3_traj = Blocks.TimeVaryingFunction(f = traj_3)
            inv_kin = DriveTrainComponents.ScaraInverseKinematics(L1=L1,L2=L2,elbow=elbow)
            # drive 1
            motor1 = DriveTrainComponents.SignalDCMotor(R=R,L=L,k=k,J=Jmotor,v=v)
            gear1 = Rotational.IdealGear(ratio=gearratio1)
            angleSensor1 = Rotational.AngleSensor()
            feedback1 = Blocks.Feedback()
            gain1 = Blocks.Gain(k=controllerGain1)
            # drive 2
            motor2 = DriveTrainComponents.SignalDCMotor(R=R,L=L,k=k,J=Jmotor,v=v)
            gear2 = Rotational.IdealGear(ratio = gearratio2)
            angleSensor2 = Rotational.AngleSensor()
            feedback2 = Blocks.Feedback()
            gain2 = Blocks.Gain(k=controllerGain2)
            scara = TrainableScaraMechanics(m1=m1, J1=J1, L1=L1, m2=m2, J2=J2, L2=L2)
        end
        @equations begin
            connect(inp1_traj.output,inv_kin.inp1)
            connect(inp2_traj.output,inv_kin.inp2)
            # drive 1
            connect(inv_kin.out1,feedback1.input1)
            connect(feedback1.output, gain1.input)
            connect(gain1.output,motor1.vSignal)
            connect(motor1.flange_a,gear1.flange_a)
            connect(gear1.flange_b,angleSensor1.flange)
            connect(angleSensor1.phi,feedback1.input2)
            #drive 2
            connect(inv_kin.out2,feedback2.input1)
            connect(feedback2.output,gain2.input)
            connect(gain2.output, motor2.vSignal)
            connect(motor2.flange_a,gear2.flange_a)
            connect(gear2.flange_b,angleSensor2.flange)
            connect(angleSensor2.phi,feedback2.input2)
            # scara mechanics
            connect(gear1.flange_b,scara.flange1)
            connect(gear2.flange_b,scara.flange2)
            connect(inp3_traj.output,scara.zForceIn)
        end
    end

end