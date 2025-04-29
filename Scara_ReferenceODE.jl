#
# Copyright (c) 2025 Andreas Hofmann
# Licensed under the MIT license. See LICENSE file in the project root for details.
#

# automatically generated using generateDAEData.jl

using DifferentialEquations
using ModelingToolkit
using SymbolicUtils
using NaNMath

function get_Scara_ReferenceODE_parameters()

	param_values= [1.19e-5, 0.0115, 0.1, 4.423, 0.0, 0.00034, 1.0e-6, 0.0115, 0.008, 1.0e-6, 0.00034, 0.1, 4.423, 1.19e-5, 0.0, 0.101, 7.1543, 0.101, 0.0005, 0.0, 10.0, 0.0, 0.004, 0.0, 0.0115, 2.66e-5, 0.0, 0.0, 10.0, 2.66e-5, 0.3, 0.00034, 4.35e-5, 0.0, 0.0115, 1.19e-5, 0.1, 0.0, 2.66e-5, 0.0, 4.35e-5, 5.0, 0.101, 0.05, 0.001, 0.008, 5.0, -9.81, 0.0, 1.19e-5, 0.1, 0.0, 0.1, 1.19e-5, 0.001, 2.66e-5, 12.0, 0.008, 0.0, 0.2, 0.0, -9.81, 0.3, -1.0, 0.0, 0.1, 0.001, 0.0115, 0.2, 0.2, 0.2, 0.0, 1.0e-6, 0.008, 7.1543, 0.101, 0.1, 0.0, 0.004, 0.00034, 0.3, 0.1, 2.66e-5, -1.0, 2.0, 0.0, 0.101]
	param_names= ["motor1₊J", "motor2₊emf₊k", "L2", "controllerGain2", "scara₊toMass1₊r[2]", "scara₊mass1₊J", "scara₊eps", "k", "scara₊mass1₊m", "eps", "J1", "mu_S", "gain2₊k", "motor1₊inertia₊J", "motor1₊v", "motor1₊resistor₊R", "gain1₊k", "R", "scara₊tcp₊viscousFrictionFactor", "scara₊mass2₊g[1]", "gear1₊ratio", "motor1₊viscousFriction₊frictionFactor", "m2", "scara₊mass1₊g[1]", "motor1₊emf₊k", "motor2₊L", "v", "scara₊fixed₊r[2]", "gearratio1", "motor2₊inductor₊L", "mu_A", "scara₊mass2₊J", "J2", "gain2₊u_start", "motor1₊k", "motor2₊inertia₊J", "scara₊mu_S", "scara₊fixed₊phi", "motor1₊L", "scara₊toTCP₊r[2]", "scara₊J2", "gear2₊ratio", "motor2₊R", "scara₊toMass2₊r[1]", "scara₊vSlide", "m1", "gearratio2", "scara₊mass2₊g[2]", "gain2₊y_start", "Jmotor", "inv_kin₊L2", "scara₊toMass2₊r[2]", "scara₊toTCP₊r[1]", "motor2₊J", "vSlide", "L", "voltageLimit", "scara₊m1", "scara₊fixed₊r[1]", "scara₊L1", "motor2₊viscousFriction₊frictionFactor", "scara₊mass1₊g[2]", "scara₊tcp₊mu_A", "inv_kin₊elbow", "scara₊toRev2₊r[2]", "scara₊L2", "scara₊tcp₊vSlide", "motor2₊k", "scara₊toRev2₊r[1]", "inv_kin₊L1", "L1", "gain1₊y_start", "scara₊tcp₊eps", "scara₊mass2₊m", "controllerGain1", "motor2₊resistor₊R", "scara₊tcp₊mu_S", "gain1₊u_start", "scara₊m2", "scara₊J1", "scara₊mu_A", "scara₊toMass1₊r[1]", "motor1₊inductor₊L", "elbow", "scara₊tcp₊delta", "motor2₊v", "motor1₊R"]
	return (param_values,param_names)
end

function get_Scara_ReferenceODE_mass_matrix()

	return [1.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0; 0.0 1.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0; 0.0 0.0 1.0 0.0 0.0 0.0 0.0 0.0 0.0; 0.0 0.0 0.0 1.0 0.0 0.0 0.0 0.0 0.0; 0.0 0.0 0.0 0.0 1.0 0.0 0.0 0.0 0.0; 0.0 0.0 0.0 0.0 0.0 1.0 0.0 0.0 0.0; 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0; 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0; 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0]
end

function get_Scara_ReferenceODE_rhs()

	Scara_ReferenceODE_ode=(ˍ₋out, ˍ₋arg1, p, t, se)->#= C:\Users\hofmaand\.julia\packages\Symbolics\TvWan\src\build_function.jl:348 =# @inbounds(begin


			ˍ₋arg2 = se.penode_comp.penode_parameters


            #= C:\Users\hofmaand\.julia\packages\Symbolics\TvWan\src\build_function.jl:348 =#
            begin
                #= C:\Users\hofmaand\.julia\packages\SymbolicUtils\QUEf3\src\code.jl:395 =#
                #= C:\Users\hofmaand\.julia\packages\SymbolicUtils\QUEf3\src\code.jl:396 =#
                #= C:\Users\hofmaand\.julia\packages\SymbolicUtils\QUEf3\src\code.jl:397 =#
                begin
                    begin
                        var"scara₊mass2₊f(t)" = view(ˍ₋arg1, 7:7)
                        scara₊toMass2₊r = reshape(view(ˍ₋arg2, [44, 52]), (2,))
                        scara₊mass2₊g = reshape(view(ˍ₋arg2, [20, 48]), (2,))
                        scara₊fixed₊r = reshape(view(ˍ₋arg2, [59, 28]), (2,))
                        scara₊mass1₊g = reshape(view(ˍ₋arg2, [24, 62]), (2,))
                        scara₊toTCP₊r = reshape(view(ˍ₋arg2, [53, 40]), (2,))
                        scara₊toRev2₊r = reshape(view(ˍ₋arg2, [69, 65]), (2,))
                        scara₊toMass1₊r = reshape(view(ˍ₋arg2, [82, 5]), (2,))
                        begin
                            begin
                                var"inp1_traj₊output₊u(t)" = se.penode_comp.input_fun[1](t)#(Main.ScaraRobot.traj_1)(t)
                                var"inp2_traj₊output₊u(t)" = se.penode_comp.input_fun[2](t)#(Main.ScaraRobot.traj_2)(t)
                                var"inp3_traj₊output₊u(t)" = se.penode_comp.input_fun[3](t)#(Main.ScaraRobot.traj_3)(t)
                                var"motor1₊emf₊i(t)" = ˍ₋arg1[2]
                                var"gear1₊phi_bˍt(t)" = ˍ₋arg1[3]
                                var"gear1₊phi_b(t)" = ˍ₋arg1[1]
                                var"motor1₊ground₊g₊v(t)" = 0.0
                                var"motor1₊currentSensor₊p₊v(t)" = -0.0
                                var"scara₊fixed₊frame_a₊phiˍtt(t)" = 0.0
                                var"scara₊mass1₊phiˍtt(t)" = ˍ₋arg1[8]
                                var"gear1₊phi_support(t)" = 0.0
                                var"angleSensor1₊flange₊tau(t)" = 0.0
                                var"motor2₊resistor₊i(t)" = ˍ₋arg1[5]
                                var"gear2₊phi_bˍt(t)" = ˍ₋arg1[6]
                                var"motor2₊inductor₊p₊i(t)" = ˍ₋arg1[5]
                                var"motor2₊emf₊i(t)" = ˍ₋arg1[5]
                                var"gear2₊phi_b(t)" = ˍ₋arg1[4]
                                var"motor2₊ground₊g₊v(t)" = 0.0
                                var"motor2₊currentSensor₊p₊v(t)" = 0.0
                                var"scara₊toMass2₊frame_a₊phiˍtt(t)" = ˍ₋arg1[9]
                                var"scara₊toMass2₊frame_b₊fy(t)" = (*)(-1, ˍ₋arg1[7])
                                var"scara₊fixed₊frame_a₊phiˍt(t)" = 0.0
                                var"scara₊fixed₊frame_a₊phi(t)" = ˍ₋arg2[38]
                                var"scara₊toRev2₊frame_a₊phiˍtt(t)" = ˍ₋arg1[8]
                                var"scara₊fixed₊frame_a₊xˍtt(t)" = 0.0
                                var"scara₊toTCP₊frame_b₊tau(t)" = -0.0
                                var"scara₊fixed₊frame_a₊yˍt(t)" = 0.0
                                var"scara₊fixed₊frame_a₊xˍt(t)" = 0.0
                                var"gear2₊phi_support(t)" = 0.0
                                var"angleSensor2₊flange₊tau(t)" = 0.0
                                var"scara₊fixed₊frame_a₊x(t)" = ˍ₋arg2[59]
                                var"scara₊fixed₊frame_a₊y(t)" = ˍ₋arg2[28]
                                var"scara₊rev1₊flange_a₊phi(t)" = ˍ₋arg1[1]
                                var"scara₊fixed₊frame_a₊yˍtt(t)" = 0.0
                                var"scara₊rev2₊flange_a₊phi(t)" = ˍ₋arg1[4]
                                var"(scara₊mass2₊a(t))[2]" = (/)((+)(ˍ₋arg1[7], (*)(ˍ₋arg2[48], ˍ₋arg2[74])), ˍ₋arg2[74])
                                var"scara₊mass2₊frame_a₊fy(t)" = ˍ₋arg1[7]
                                var"scara₊tcp₊frame_a₊tau(t)" = 0.0
                                var"motor1₊emf₊n₊v(t)" = 0.0
                                var"motor1₊signalVoltage₊n₊v(t)" = 0.0
                                var"motor1₊currentSensor₊n₊v(t)" = -0.0
                                var"motor2₊emf₊n₊v(t)" = 0.0
                                var"motor2₊signalVoltage₊n₊v(t)" = -0.0
                                var"motor2₊currentSensor₊n₊v(t)" = 0.0
                                var"inv_kin₊u1(t)" = var"inp1_traj₊output₊u(t)"
                                var"inv_kin₊u2(t)" = var"inp2_traj₊output₊u(t)"
                                var"scara₊tcp₊zForceIn₊u(t)" = var"inp3_traj₊output₊u(t)"
                                var"scara₊zForceIn₊u(t)" = var"inp3_traj₊output₊u(t)"
                                var"motor1₊inductor₊p₊i(t)" = var"motor1₊emf₊i(t)"
                                var"motor1₊resistor₊i(t)" = var"motor1₊emf₊i(t)"
                                var"motor1₊emf₊p₊i(t)" = var"motor1₊emf₊i(t)"
                                var"motor1₊emf₊flange₊tau(t)" = (*)((*)(-1, ˍ₋arg2[25]), var"motor1₊emf₊i(t)")
                                var"motor1₊currentSensor₊n₊i(t)" = (*)(-1, var"motor1₊emf₊i(t)")
                                var"gear1₊phi_aˍt(t)" = (*)(ˍ₋arg2[21], var"gear1₊phi_bˍt(t)")
                                var"gear1₊phi_a(t)" = (*)(ˍ₋arg2[21], var"gear1₊phi_b(t)")
                                var"gear1₊flange_b₊phi(t)" = var"gear1₊phi_b(t)"
                                var"angleSensor1₊phi₊u(t)" = var"gear1₊phi_b(t)"
                                var"scara₊flange1₊phi(t)" = var"gear1₊phi_b(t)"
                                var"feedback1₊input2₊u(t)" = var"gear1₊phi_b(t)"
                                var"scara₊rev1₊frame_a₊phiˍtt(t)" = var"scara₊fixed₊frame_a₊phiˍtt(t)"
                                var"scara₊mass1₊wˍt(t)" = var"scara₊mass1₊phiˍtt(t)"
                                var"motor2₊signalVoltage₊i(t)" = (*)(-1, var"motor2₊resistor₊i(t)")
                                var"motor2₊resistor₊v(t)" = (*)(ˍ₋arg2[76], var"motor2₊resistor₊i(t)")
                                var"motor2₊resistor₊n₊i(t)" = (*)(-1, var"motor2₊resistor₊i(t)")
                                var"gear2₊phi_aˍt(t)" = (*)(ˍ₋arg2[42], var"gear2₊phi_bˍt(t)")
                                var"motor2₊inductor₊n₊i(t)" = (*)(-1, var"motor2₊inductor₊p₊i(t)")
                                var"motor2₊emf₊p₊i(t)" = var"motor2₊emf₊i(t)"
                                var"motor2₊emf₊flange₊tau(t)" = (*)((*)(-1, ˍ₋arg2[2]), var"motor2₊emf₊i(t)")
                                var"motor2₊currentSensor₊n₊i(t)" = (*)(-1, var"motor2₊emf₊i(t)")
                                var"motor2₊ground₊g₊i(t)" = (+)((*)(-1, var"motor2₊resistor₊i(t)"), var"motor2₊emf₊i(t)")
                                var"gear2₊phi_a(t)" = (*)(ˍ₋arg2[42], var"gear2₊phi_b(t)")
                                var"gear2₊flange_b₊phi(t)" = var"gear2₊phi_b(t)"
                                var"angleSensor2₊phi₊u(t)" = var"gear2₊phi_b(t)"
                                var"scara₊flange2₊phi(t)" = var"gear2₊phi_b(t)"
                                var"feedback2₊input2₊u(t)" = var"gear2₊phi_b(t)"
                                var"scara₊mass2₊phiˍtt(t)" = var"scara₊toMass2₊frame_a₊phiˍtt(t)"
                                var"scara₊toMass2₊frame_a₊fy(t)" = (*)(-1, var"scara₊toMass2₊frame_b₊fy(t)")
                                var"scara₊rev1₊frame_a₊phiˍt(t)" = var"scara₊fixed₊frame_a₊phiˍt(t)"
                                var"scara₊rev1₊frame_a₊phi(t)" = var"scara₊fixed₊frame_a₊phi(t)"
                                var"scara₊rev1₊frame_b₊x(t)" = var"scara₊fixed₊frame_a₊x(t)"
                                var"scara₊toRev2₊frame_a₊x(t)" = var"scara₊fixed₊frame_a₊x(t)"
                                var"scara₊toMass1₊frame_a₊x(t)" = var"scara₊fixed₊frame_a₊x(t)"
                                var"scara₊rev1₊frame_b₊y(t)" = var"scara₊fixed₊frame_a₊y(t)"
                                var"scara₊toRev2₊frame_a₊y(t)" = var"scara₊fixed₊frame_a₊y(t)"
                                var"scara₊toMass1₊frame_a₊y(t)" = var"scara₊fixed₊frame_a₊y(t)"
                                var"var\"scara₊mass2₊v(t)ˍt\"[2]" = var"(scara₊mass2₊a(t))[2]"
                                var"inv_kin₊inp1₊u(t)" = var"inv_kin₊u1(t)"
                                var"inv_kin₊inp2₊u(t)" = var"inv_kin₊u2(t)"
                                var"inv_kin₊y2(t)" = (atan)((*)(ˍ₋arg2[64], (NaNMath.sqrt)((+)(1, (*)(-1, (^)((/)((+)((+)((+)((*)(-1, (^)(ˍ₋arg2[70], 2)), (*)(-1, (^)(ˍ₋arg2[51], 2))), (^)(var"inv_kin₊u2(t)", 2)), (^)(var"inv_kin₊u1(t)", 2)), (*)((*)(2, ˍ₋arg2[70]), ˍ₋arg2[51])), 2))))), (/)((+)((+)((+)((*)(-1, (^)(ˍ₋arg2[70], 2)), (*)(-1, (^)(ˍ₋arg2[51], 2))), (^)(var"inv_kin₊u2(t)", 2)), (^)(var"inv_kin₊u1(t)", 2)), (*)((*)(2, ˍ₋arg2[70]), ˍ₋arg2[51])))
                                var"scara₊tcp₊Fs(t)" = (*)(ˍ₋arg2[63], var"scara₊tcp₊zForceIn₊u(t)")
                                var"scara₊tcp₊Fc(t)" = (*)(ˍ₋arg2[77], var"scara₊tcp₊zForceIn₊u(t)")
                                var"motor1₊resistor₊p₊i(t)" = var"motor1₊inductor₊p₊i(t)"
                                var"motor1₊inductor₊n₊i(t)" = (*)(-1, var"motor1₊inductor₊p₊i(t)")
                                var"motor1₊resistor₊n₊i(t)" = (*)(-1, var"motor1₊inductor₊p₊i(t)")
                                var"motor1₊ground₊g₊i(t)" = (+)((*)(-1, var"motor1₊inductor₊p₊i(t)"), var"motor1₊emf₊i(t)")
                                var"motor1₊resistor₊v(t)" = (*)(ˍ₋arg2[16], var"motor1₊resistor₊i(t)")
                                var"motor1₊emf₊n₊i(t)" = (*)(-1, var"motor1₊emf₊p₊i(t)")
                                var"motor1₊currentSensor₊p₊i(t)" = (*)(-1, var"motor1₊currentSensor₊n₊i(t)")
                                var"motor1₊inertia₊phiˍt(t)" = var"gear1₊phi_aˍt(t)"
                                var"motor1₊inertia₊phi(t)" = var"gear1₊phi_a(t)"
                                var"gear1₊flange_a₊phi(t)" = var"gear1₊phi_a(t)"
                                var"motor1₊flange_a₊phi(t)" = var"gear1₊phi_a(t)"
                                var"motor1₊inertia₊flange_b₊phi(t)" = var"gear1₊phi_a(t)"
                                var"angleSensor1₊flange₊phi(t)" = var"angleSensor1₊phi₊u(t)"
                                var"gear1₊phi_bˍtt(t)" = (+)((*)(-1, var"scara₊rev1₊frame_a₊phiˍtt(t)"), var"scara₊mass1₊phiˍtt(t)")
                                var"scara₊rev1₊wˍt(t)" = (+)((*)(-1, var"scara₊rev1₊frame_a₊phiˍtt(t)"), var"scara₊mass1₊phiˍtt(t)")
                                var"scara₊mass1₊z(t)" = var"scara₊mass1₊wˍt(t)"
                                var"motor2₊signalVoltage₊p₊i(t)" = var"motor2₊signalVoltage₊i(t)"
                                var"motor2₊resistor₊p₊i(t)" = (*)(-1, var"motor2₊resistor₊n₊i(t)")
                                var"motor2₊inertia₊phiˍt(t)" = var"gear2₊phi_aˍt(t)"
                                var"motor2₊emf₊n₊i(t)" = (*)(-1, var"motor2₊emf₊p₊i(t)")
                                var"motor2₊currentSensor₊i(t)" = (*)(-1, var"motor2₊currentSensor₊n₊i(t)")
                                var"motor2₊inertia₊phi(t)" = var"gear2₊phi_a(t)"
                                var"gear2₊flange_a₊phi(t)" = var"gear2₊phi_a(t)"
                                var"motor2₊flange_a₊phi(t)" = var"gear2₊phi_a(t)"
                                var"motor2₊inertia₊flange_b₊phi(t)" = var"gear2₊phi_a(t)"
                                var"angleSensor2₊flange₊phi(t)" = var"angleSensor2₊phi₊u(t)"
                                var"scara₊mass2₊wˍt(t)" = var"scara₊mass2₊phiˍtt(t)"
                                var"scara₊rev2₊wˍt(t)" = (+)((*)(-1, var"scara₊mass1₊phiˍtt(t)"), var"scara₊mass2₊phiˍtt(t)")
                                var"gear2₊phi_bˍtt(t)" = (+)((*)(-1, var"scara₊mass1₊phiˍtt(t)"), var"scara₊mass2₊phiˍtt(t)")
                                var"scara₊mass1₊phiˍt(t)" = (+)(var"scara₊rev1₊frame_a₊phiˍt(t)", ˍ₋arg1[3])
                                var"scara₊mass1₊phi(t)" = (+)(ˍ₋arg1[1], var"scara₊rev1₊frame_a₊phi(t)")
                                var"scara₊rev1₊frame_a₊x(t)" = var"scara₊rev1₊frame_b₊x(t)"
                                var"scara₊rev1₊frame_a₊y(t)" = var"scara₊rev1₊frame_b₊y(t)"
                                var"var\"scara₊mass2₊r(t)ˍtt\"[2]" = var"var\"scara₊mass2₊v(t)ˍt\"[2]"
                                var"inv_kin₊y1(t)" = (+)((atan)(var"inv_kin₊u2(t)", var"inv_kin₊u1(t)"), (*)(-1, (atan)((*)(ˍ₋arg2[51], NaNMath.sin(var"inv_kin₊y2(t)")), (+)(ˍ₋arg2[70], (*)(ˍ₋arg2[51], NaNMath.cos(var"inv_kin₊y2(t)"))))))
                                var"inv_kin₊out2₊u(t)" = var"inv_kin₊y2(t)"
                                var"gain2₊u(t)" = (+)((*)(-1, ˍ₋arg1[4]), var"inv_kin₊y2(t)")
                                var"feedback2₊input1₊u(t)" = var"inv_kin₊y2(t)"
                                var"motor1₊signalVoltage₊i(t)" = (*)(-1, var"motor1₊resistor₊p₊i(t)")
                                var"motor1₊currentSensor₊i(t)" = var"motor1₊currentSensor₊p₊i(t)"
                                var"motor1₊viscousFriction₊flange₊phiˍt(t)" = var"motor1₊inertia₊phiˍt(t)"
                                var"motor1₊inertia₊w(t)" = var"motor1₊inertia₊phiˍt(t)"
                                var"motor1₊viscousFriction₊flange₊phi(t)" = var"motor1₊inertia₊phi(t)"
                                var"gear1₊phi_aˍtt(t)" = (*)(ˍ₋arg2[21], var"gear1₊phi_bˍtt(t)")
                                var"scara₊rev1₊z(t)" = var"scara₊rev1₊wˍt(t)"
                                var"motor2₊signalVoltage₊n₊i(t)" = (*)(-1, var"motor2₊signalVoltage₊p₊i(t)")
                                var"motor2₊viscousFriction₊flange₊phiˍt(t)" = var"motor2₊inertia₊phiˍt(t)"
                                var"motor2₊inertia₊w(t)" = var"motor2₊inertia₊phiˍt(t)"
                                var"motor2₊currentSensor₊p₊i(t)" = var"motor2₊currentSensor₊i(t)"
                                var"motor2₊viscousFriction₊flange₊phi(t)" = var"motor2₊inertia₊phi(t)"
                                var"scara₊mass2₊z(t)" = var"scara₊mass2₊wˍt(t)"
                                var"scara₊rev2₊z(t)" = var"scara₊rev2₊wˍt(t)"
                                var"scara₊mass2₊phiˍt(t)" = (+)(ˍ₋arg1[6], var"scara₊mass1₊phiˍt(t)")
                                var"scara₊toMass1₊frame_a₊phiˍt(t)" = var"scara₊mass1₊phiˍt(t)"
                                var"scara₊mass1₊w(t)" = var"scara₊mass1₊phiˍt(t)"
                                var"scara₊mass2₊phi(t)" = (+)(ˍ₋arg1[4], var"scara₊mass1₊phi(t)")
                                var"scara₊toMass1₊frame_a₊phi(t)" = var"scara₊mass1₊phi(t)"
                                var"scara₊mass1₊frame_a₊phi(t)" = var"scara₊mass1₊phi(t)"
                                var"scara₊rev2₊frame_a₊phi(t)" = var"scara₊mass1₊phi(t)"
                                var"inv_kin₊out1₊u(t)" = var"inv_kin₊y1(t)"
                                var"gain1₊u(t)" = (+)((*)(-1, ˍ₋arg1[1]), var"inv_kin₊y1(t)")
                                var"feedback1₊input1₊u(t)" = var"inv_kin₊y1(t)"
                                var"gain2₊y(t)" = (*)(ˍ₋arg2[13], var"gain2₊u(t)")
                                var"gain2₊input₊u(t)" = var"gain2₊u(t)"
                                var"feedback2₊output₊u(t)" = var"gain2₊u(t)"
                                var"motor1₊signalVoltage₊n₊i(t)" = (*)(-1, var"motor1₊signalVoltage₊i(t)")
                                var"motor1₊emf₊phiˍt(t)" = var"motor1₊viscousFriction₊flange₊phiˍt(t)"
                                var"motor1₊viscousFriction₊flange₊tau(t)" = (*)(ˍ₋arg2[22], var"motor1₊viscousFriction₊flange₊phiˍt(t)")
                                var"motor1₊emf₊phi(t)" = var"motor1₊viscousFriction₊flange₊phi(t)"
                                var"motor1₊inertia₊flange_a₊phi(t)" = var"motor1₊viscousFriction₊flange₊phi(t)"
                                var"motor1₊inertia₊phiˍtt(t)" = var"gear1₊phi_aˍtt(t)"
                                var"motor2₊emf₊phiˍt(t)" = var"motor2₊viscousFriction₊flange₊phiˍt(t)"
                                var"motor2₊viscousFriction₊flange₊tau(t)" = (*)(ˍ₋arg2[61], var"motor2₊viscousFriction₊flange₊phiˍt(t)")
                                var"motor2₊emf₊phi(t)" = var"motor2₊viscousFriction₊flange₊phi(t)"
                                var"scara₊mass2₊frame_a₊tau(t)" = (*)(ˍ₋arg2[32], var"scara₊mass2₊z(t)")
                                var"scara₊toMass2₊frame_a₊phiˍt(t)" = var"scara₊mass2₊phiˍt(t)"
                                var"scara₊mass2₊w(t)" = var"scara₊mass2₊phiˍt(t)"
                                var"scara₊toRev2₊frame_a₊phiˍt(t)" = var"scara₊toMass1₊frame_a₊phiˍt(t)"
                                var"scara₊toMass2₊frame_a₊phi(t)" = var"scara₊mass2₊phi(t)"
                                var"scara₊mass2₊frame_a₊phi(t)" = var"scara₊mass2₊phi(t)"
                                var"scara₊toRev2₊frame_a₊phi(t)" = var"scara₊toMass1₊frame_a₊phi(t)"
                                var"var\"scara₊toMass1₊R(t)ˍtˍt\"[1, 2]" = (+)((*)((*)(-1, NaNMath.cos(var"scara₊toMass1₊frame_a₊phi(t)")), ˍ₋arg1[8]), (*)((^)(var"scara₊toMass1₊frame_a₊phiˍt(t)", 2), NaNMath.sin(var"scara₊toMass1₊frame_a₊phi(t)")))
                                var"var\"scara₊toMass1₊R(t)ˍtˍt\"[1, 1]" = (+)((*)((*)(-1, ˍ₋arg1[8]), NaNMath.sin(var"scara₊toMass1₊frame_a₊phi(t)")), (*)((*)(-1, NaNMath.cos(var"scara₊toMass1₊frame_a₊phi(t)")), (^)(var"scara₊toMass1₊frame_a₊phiˍt(t)", 2)))
                                var"var\"scara₊toMass1₊R(t)ˍtˍt\"[2, 2]" = (+)((*)((*)(-1, ˍ₋arg1[8]), NaNMath.sin(var"scara₊toMass1₊frame_a₊phi(t)")), (*)((*)(-1, NaNMath.cos(var"scara₊toMass1₊frame_a₊phi(t)")), (^)(var"scara₊toMass1₊frame_a₊phiˍt(t)", 2)))
                                var"var\"scara₊toMass1₊R(t)ˍtˍt\"[2, 1]" = (+)((*)(NaNMath.cos(var"scara₊toMass1₊frame_a₊phi(t)"), ˍ₋arg1[8]), (*)((*)(-1, (^)(var"scara₊toMass1₊frame_a₊phiˍt(t)", 2)), NaNMath.sin(var"scara₊toMass1₊frame_a₊phi(t)")))
                                var"(scara₊toMass1₊R(t))[1, 1]" = NaNMath.cos(var"scara₊toMass1₊frame_a₊phi(t)")
                                var"(scara₊toMass1₊R(t))[2, 1]" = NaNMath.sin(var"scara₊toMass1₊frame_a₊phi(t)")
                                var"(scara₊toMass1₊R(t))[1, 2]" = (*)(-1, NaNMath.sin(var"scara₊toMass1₊frame_a₊phi(t)"))
                                var"(scara₊toMass1₊R(t))[2, 2]" = NaNMath.cos(var"scara₊toMass1₊frame_a₊phi(t)")
                                var"scara₊toMass1₊frame_b₊phi(t)" = var"scara₊toMass1₊frame_a₊phi(t)"
                                var"var\"scara₊toMass1₊R(t)ˍt\"[1, 2]" = (*)((*)(-1, NaNMath.cos(var"scara₊toMass1₊frame_a₊phi(t)")), var"scara₊toMass1₊frame_a₊phiˍt(t)")
                                var"var\"scara₊toMass1₊R(t)ˍt\"[1, 1]" = (*)((*)(-1, var"scara₊toMass1₊frame_a₊phiˍt(t)"), NaNMath.sin(var"scara₊toMass1₊frame_a₊phi(t)"))
                                var"var\"scara₊toMass1₊R(t)ˍt\"[2, 2]" = (*)((*)(-1, var"scara₊toMass1₊frame_a₊phiˍt(t)"), NaNMath.sin(var"scara₊toMass1₊frame_a₊phi(t)"))
                                var"var\"scara₊toMass1₊R(t)ˍt\"[2, 1]" = (*)(NaNMath.cos(var"scara₊toMass1₊frame_a₊phi(t)"), var"scara₊toMass1₊frame_a₊phiˍt(t)")
                                var"gain1₊y(t)" = (*)(ˍ₋arg2[17], var"gain1₊u(t)")
                                var"gain1₊input₊u(t)" = var"gain1₊u(t)"
                                var"feedback1₊output₊u(t)" = var"gain1₊u(t)"
                                var"motor2₊signalVoltage₊V₊u(t)" = var"gain2₊y(t)"
                                var"motor2₊inductor₊p₊v(t)" = (+)(var"gain2₊y(t)", (*)(-1, var"motor2₊resistor₊v(t)"))
                                var"gain2₊output₊u(t)" = var"gain2₊y(t)"
                                var"motor2₊vSignal₊u(t)" = var"gain2₊y(t)"
                                var"motor2₊resistor₊p₊v(t)" = var"gain2₊y(t)"
                                var"motor1₊signalVoltage₊p₊i(t)" = (*)(-1, var"motor1₊signalVoltage₊n₊i(t)")
                                var"motor1₊emf₊w(t)" = var"motor1₊emf₊phiˍt(t)"
                                var"motor1₊inertia₊flange_a₊tau(t)" = (+)((*)(-1, var"motor1₊emf₊flange₊tau(t)"), (*)(-1, var"motor1₊viscousFriction₊flange₊tau(t)"))
                                var"motor1₊emf₊flange₊phi(t)" = var"motor1₊inertia₊flange_a₊phi(t)"
                                var"motor1₊inertia₊wˍt(t)" = var"motor1₊inertia₊phiˍtt(t)"
                                var"motor2₊emf₊w(t)" = var"motor2₊emf₊phiˍt(t)"
                                var"motor2₊inertia₊flange_a₊tau(t)" = (+)((*)(-1, var"motor2₊emf₊flange₊tau(t)"), (*)(-1, var"motor2₊viscousFriction₊flange₊tau(t)"))
                                var"motor2₊emf₊flange₊phi(t)" = var"motor2₊emf₊phi(t)"
                                var"motor2₊inertia₊flange_a₊phi(t)" = var"motor2₊emf₊phi(t)"
                                var"scara₊toMass2₊frame_b₊tau(t)" = (*)(-1, var"scara₊mass2₊frame_a₊tau(t)")
                                var"scara₊toTCP₊frame_a₊phiˍt(t)" = var"scara₊toMass2₊frame_a₊phiˍt(t)"
                                var"var\"scara₊toMass2₊R(t)ˍtˍt\"[1, 2]" = (+)((*)((*)(-1, var"scara₊toMass2₊frame_a₊phiˍtt(t)"), NaNMath.cos(var"scara₊toMass2₊frame_a₊phi(t)")), (*)(NaNMath.sin(var"scara₊toMass2₊frame_a₊phi(t)"), (^)(var"scara₊toMass2₊frame_a₊phiˍt(t)", 2)))
                                var"var\"scara₊toMass2₊R(t)ˍtˍt\"[1, 1]" = (+)((*)((*)(-1, NaNMath.sin(var"scara₊toMass2₊frame_a₊phi(t)")), var"scara₊toMass2₊frame_a₊phiˍtt(t)"), (*)((*)(-1, (^)(var"scara₊toMass2₊frame_a₊phiˍt(t)", 2)), NaNMath.cos(var"scara₊toMass2₊frame_a₊phi(t)")))
                                var"(scara₊toMass2₊R(t))[2, 2]" = NaNMath.cos(var"scara₊toMass2₊frame_a₊phi(t)")
                                var"(scara₊toMass2₊R(t))[2, 1]" = NaNMath.sin(var"scara₊toMass2₊frame_a₊phi(t)")
                                var"(scara₊toMass2₊R(t))[1, 2]" = (*)(-1, NaNMath.sin(var"scara₊toMass2₊frame_a₊phi(t)"))
                                var"(scara₊toMass2₊R(t))[1, 1]" = NaNMath.cos(var"scara₊toMass2₊frame_a₊phi(t)")
                                var"scara₊toTCP₊frame_a₊phi(t)" = var"scara₊toMass2₊frame_a₊phi(t)"
                                var"var\"scara₊toMass2₊R(t)ˍt\"[1, 2]" = (*)((*)(-1, var"scara₊toMass2₊frame_a₊phiˍt(t)"), NaNMath.cos(var"scara₊toMass2₊frame_a₊phi(t)"))
                                var"var\"scara₊toMass2₊R(t)ˍt\"[1, 1]" = (*)((*)(-1, NaNMath.sin(var"scara₊toMass2₊frame_a₊phi(t)")), var"scara₊toMass2₊frame_a₊phiˍt(t)")
                                var"scara₊toMass2₊frame_b₊phi(t)" = var"scara₊toMass2₊frame_a₊phi(t)"
                                var"var\"scara₊toMass2₊R(t)ˍt\"[2, 2]" = (*)((*)(-1, NaNMath.sin(var"scara₊toMass2₊frame_a₊phi(t)")), var"scara₊toMass2₊frame_a₊phiˍt(t)")
                                var"var\"scara₊toMass2₊R(t)ˍt\"[2, 1]" = (*)(var"scara₊toMass2₊frame_a₊phiˍt(t)", NaNMath.cos(var"scara₊toMass2₊frame_a₊phi(t)"))
                                var"var\"scara₊toMass2₊R(t)ˍtˍt\"[2, 1]" = (+)((*)(var"scara₊toMass2₊frame_a₊phiˍtt(t)", NaNMath.cos(var"scara₊toMass2₊frame_a₊phi(t)")), (*)((*)(-1, NaNMath.sin(var"scara₊toMass2₊frame_a₊phi(t)")), (^)(var"scara₊toMass2₊frame_a₊phiˍt(t)", 2)))
                                var"var\"scara₊toMass2₊R(t)ˍtˍt\"[2, 2]" = (+)((*)((*)(-1, NaNMath.sin(var"scara₊toMass2₊frame_a₊phi(t)")), var"scara₊toMass2₊frame_a₊phiˍtt(t)"), (*)((*)(-1, (^)(var"scara₊toMass2₊frame_a₊phiˍt(t)", 2)), NaNMath.cos(var"scara₊toMass2₊frame_a₊phi(t)")))
                                var"var\"scara₊toRev2₊R(t)ˍtˍt\"[1, 2]" = (+)((*)((*)(-1, NaNMath.cos(var"scara₊toRev2₊frame_a₊phi(t)")), var"scara₊toRev2₊frame_a₊phiˍtt(t)"), (*)((^)(var"scara₊toRev2₊frame_a₊phiˍt(t)", 2), NaNMath.sin(var"scara₊toRev2₊frame_a₊phi(t)")))
                                var"var\"scara₊toRev2₊R(t)ˍtˍt\"[1, 1]" = (+)((*)((*)(-1, var"scara₊toRev2₊frame_a₊phiˍtt(t)"), NaNMath.sin(var"scara₊toRev2₊frame_a₊phi(t)")), (*)((*)(-1, NaNMath.cos(var"scara₊toRev2₊frame_a₊phi(t)")), (^)(var"scara₊toRev2₊frame_a₊phiˍt(t)", 2)))
                                var"var\"scara₊toRev2₊R(t)ˍt\"[2, 2]" = (*)((*)(-1, var"scara₊toRev2₊frame_a₊phiˍt(t)"), NaNMath.sin(var"scara₊toRev2₊frame_a₊phi(t)"))
                                var"var\"scara₊toRev2₊R(t)ˍt\"[2, 1]" = (*)(NaNMath.cos(var"scara₊toRev2₊frame_a₊phi(t)"), var"scara₊toRev2₊frame_a₊phiˍt(t)")
                                var"var\"scara₊toRev2₊R(t)ˍt\"[1, 2]" = (*)((*)(-1, NaNMath.cos(var"scara₊toRev2₊frame_a₊phi(t)")), var"scara₊toRev2₊frame_a₊phiˍt(t)")
                                var"var\"scara₊toRev2₊R(t)ˍt\"[1, 1]" = (*)((*)(-1, var"scara₊toRev2₊frame_a₊phiˍt(t)"), NaNMath.sin(var"scara₊toRev2₊frame_a₊phi(t)"))
                                var"var\"scara₊toRev2₊R(t)ˍtˍt\"[2, 2]" = (+)((*)((*)(-1, var"scara₊toRev2₊frame_a₊phiˍtt(t)"), NaNMath.sin(var"scara₊toRev2₊frame_a₊phi(t)")), (*)((*)(-1, NaNMath.cos(var"scara₊toRev2₊frame_a₊phi(t)")), (^)(var"scara₊toRev2₊frame_a₊phiˍt(t)", 2)))
                                var"var\"scara₊toRev2₊R(t)ˍtˍt\"[2, 1]" = (+)((*)(NaNMath.cos(var"scara₊toRev2₊frame_a₊phi(t)"), var"scara₊toRev2₊frame_a₊phiˍtt(t)"), (*)((*)(-1, (^)(var"scara₊toRev2₊frame_a₊phiˍt(t)", 2)), NaNMath.sin(var"scara₊toRev2₊frame_a₊phi(t)")))
                                var"(scara₊toRev2₊R(t))[1, 1]" = NaNMath.cos(var"scara₊toRev2₊frame_a₊phi(t)")
                                var"(scara₊toRev2₊R(t))[2, 1]" = NaNMath.sin(var"scara₊toRev2₊frame_a₊phi(t)")
                                var"(scara₊toRev2₊R(t))[1, 2]" = (*)(-1, NaNMath.sin(var"scara₊toRev2₊frame_a₊phi(t)"))
                                var"(scara₊toRev2₊R(t))[2, 2]" = NaNMath.cos(var"scara₊toRev2₊frame_a₊phi(t)")
                                var"scara₊toRev2₊frame_b₊phi(t)" = var"scara₊toRev2₊frame_a₊phi(t)"
                                var"scara₊rev1₊frame_b₊phi(t)" = var"scara₊toRev2₊frame_a₊phi(t)"
                                var"var\"scara₊toMass1₊r0(t)ˍtˍt\"[1]" = (+)((*)(var"var\"scara₊toMass1₊R(t)ˍtˍt\"[1, 1]", ˍ₋arg2[82]), (*)(var"var\"scara₊toMass1₊R(t)ˍtˍt\"[1, 2]", ˍ₋arg2[5]))
                                var"var\"scara₊toMass1₊r0(t)ˍtˍt\"[2]" = (+)((*)(var"var\"scara₊toMass1₊R(t)ˍtˍt\"[2, 1]", ˍ₋arg2[82]), (*)(var"var\"scara₊toMass1₊R(t)ˍtˍt\"[2, 2]", ˍ₋arg2[5]))
                                var"(scara₊toMass1₊r0(t))[1]" = (+)((*)(var"(scara₊toMass1₊R(t))[1, 1]", ˍ₋arg2[82]), (*)(var"(scara₊toMass1₊R(t))[1, 2]", ˍ₋arg2[5]))
                                var"(scara₊toMass1₊r0(t))[2]" = (+)((*)(var"(scara₊toMass1₊R(t))[2, 1]", ˍ₋arg2[82]), (*)(var"(scara₊toMass1₊R(t))[2, 2]", ˍ₋arg2[5]))
                                var"var\"scara₊toMass1₊r0(t)ˍt\"[1]" = (+)((*)(var"var\"scara₊toMass1₊R(t)ˍt\"[1, 1]", ˍ₋arg2[82]), (*)(var"var\"scara₊toMass1₊R(t)ˍt\"[1, 2]", ˍ₋arg2[5]))
                                var"var\"scara₊toMass1₊r0(t)ˍt\"[2]" = (+)((*)(var"var\"scara₊toMass1₊R(t)ˍt\"[2, 1]", ˍ₋arg2[82]), (*)(var"var\"scara₊toMass1₊R(t)ˍt\"[2, 2]", ˍ₋arg2[5]))
                                var"motor1₊resistor₊p₊v(t)" = var"gain1₊y(t)"
                                var"motor1₊inductor₊p₊v(t)" = (+)(var"gain1₊y(t)", (*)(-1, var"motor1₊resistor₊v(t)"))
                                var"gain1₊output₊u(t)" = var"gain1₊y(t)"
                                var"motor1₊vSignal₊u(t)" = var"gain1₊y(t)"
                                var"motor1₊signalVoltage₊V₊u(t)" = var"gain1₊y(t)"
                                var"motor2₊signalVoltage₊v(t)" = var"motor2₊signalVoltage₊V₊u(t)"
                                var"motor2₊resistor₊n₊v(t)" = var"motor2₊inductor₊p₊v(t)"
                                var"motor1₊emf₊v(t)" = (*)(ˍ₋arg2[25], var"motor1₊emf₊w(t)")
                                var"motor1₊inertia₊a(t)" = var"motor1₊inertia₊wˍt(t)"
                                var"motor2₊emf₊v(t)" = (*)(ˍ₋arg2[2], var"motor2₊emf₊w(t)")
                                var"var\"scara₊toMass2₊r0(t)ˍtˍt\"[1]" = (+)((*)(var"var\"scara₊toMass2₊R(t)ˍtˍt\"[1, 1]", ˍ₋arg2[44]), (*)(var"var\"scara₊toMass2₊R(t)ˍtˍt\"[1, 2]", ˍ₋arg2[52]))
                                var"(scara₊toMass2₊r0(t))[2]" = (+)((*)(var"(scara₊toMass2₊R(t))[2, 1]", ˍ₋arg2[44]), (*)(var"(scara₊toMass2₊R(t))[2, 2]", ˍ₋arg2[52]))
                                var"(scara₊toMass2₊r0(t))[1]" = (+)((*)(var"(scara₊toMass2₊R(t))[1, 1]", ˍ₋arg2[44]), (*)(var"(scara₊toMass2₊R(t))[1, 2]", ˍ₋arg2[52]))
                                var"var\"scara₊toTCP₊R(t)ˍt\"[2, 2]" = (*)((*)(-1, var"scara₊toTCP₊frame_a₊phiˍt(t)"), NaNMath.sin(var"scara₊toTCP₊frame_a₊phi(t)"))
                                var"var\"scara₊toTCP₊R(t)ˍt\"[2, 1]" = (*)(var"scara₊toTCP₊frame_a₊phiˍt(t)", NaNMath.cos(var"scara₊toTCP₊frame_a₊phi(t)"))
                                var"var\"scara₊toTCP₊R(t)ˍt\"[1, 2]" = (*)((*)(-1, var"scara₊toTCP₊frame_a₊phiˍt(t)"), NaNMath.cos(var"scara₊toTCP₊frame_a₊phi(t)"))
                                var"var\"scara₊toTCP₊R(t)ˍt\"[1, 1]" = (*)((*)(-1, var"scara₊toTCP₊frame_a₊phiˍt(t)"), NaNMath.sin(var"scara₊toTCP₊frame_a₊phi(t)"))
                                var"(scara₊toTCP₊R(t))[2, 2]" = NaNMath.cos(var"scara₊toTCP₊frame_a₊phi(t)")
                                var"(scara₊toTCP₊R(t))[2, 1]" = NaNMath.sin(var"scara₊toTCP₊frame_a₊phi(t)")
                                var"(scara₊toTCP₊R(t))[1, 2]" = (*)(-1, NaNMath.sin(var"scara₊toTCP₊frame_a₊phi(t)"))
                                var"(scara₊toTCP₊R(t))[1, 1]" = NaNMath.cos(var"scara₊toTCP₊frame_a₊phi(t)")
                                var"var\"scara₊toTCP₊R(t)ˍtˍt\"[2, 2]" = (+)((*)((*)(-1, NaNMath.sin(var"scara₊toTCP₊frame_a₊phi(t)")), ˍ₋arg1[9]), (*)((*)(-1, (^)(var"scara₊toTCP₊frame_a₊phiˍt(t)", 2)), NaNMath.cos(var"scara₊toTCP₊frame_a₊phi(t)")))
                                var"var\"scara₊toTCP₊R(t)ˍtˍt\"[2, 1]" = (+)((*)(ˍ₋arg1[9], NaNMath.cos(var"scara₊toTCP₊frame_a₊phi(t)")), (*)((*)(-1, (^)(var"scara₊toTCP₊frame_a₊phiˍt(t)", 2)), NaNMath.sin(var"scara₊toTCP₊frame_a₊phi(t)")))
                                var"scara₊toTCP₊frame_b₊phi(t)" = var"scara₊toTCP₊frame_a₊phi(t)"
                                var"scara₊rev2₊frame_b₊phi(t)" = var"scara₊toTCP₊frame_a₊phi(t)"
                                var"scara₊tcp₊frame_a₊phi(t)" = var"scara₊toTCP₊frame_a₊phi(t)"
                                var"var\"scara₊toMass2₊r0(t)ˍt\"[1]" = (+)((*)(var"var\"scara₊toMass2₊R(t)ˍt\"[1, 1]", ˍ₋arg2[44]), (*)(var"var\"scara₊toMass2₊R(t)ˍt\"[1, 2]", ˍ₋arg2[52]))
                                var"var\"scara₊toMass2₊r0(t)ˍt\"[2]" = (+)((*)(var"var\"scara₊toMass2₊R(t)ˍt\"[2, 1]", ˍ₋arg2[44]), (*)(var"var\"scara₊toMass2₊R(t)ˍt\"[2, 2]", ˍ₋arg2[52]))
                                var"var\"scara₊toMass2₊r0(t)ˍtˍt\"[2]" = (+)((*)(var"var\"scara₊toMass2₊R(t)ˍtˍt\"[2, 1]", ˍ₋arg2[44]), (*)(var"var\"scara₊toMass2₊R(t)ˍtˍt\"[2, 2]", ˍ₋arg2[52]))
                                var"var\"scara₊toRev2₊r0(t)ˍtˍt\"[1]" = (+)((*)(var"var\"scara₊toRev2₊R(t)ˍtˍt\"[1, 1]", ˍ₋arg2[69]), (*)(var"var\"scara₊toRev2₊R(t)ˍtˍt\"[1, 2]", ˍ₋arg2[65]))
                                var"var\"scara₊toRev2₊r0(t)ˍt\"[2]" = (+)((*)(var"var\"scara₊toRev2₊R(t)ˍt\"[2, 1]", ˍ₋arg2[69]), (*)(var"var\"scara₊toRev2₊R(t)ˍt\"[2, 2]", ˍ₋arg2[65]))
                                var"var\"scara₊toRev2₊r0(t)ˍt\"[1]" = (+)((*)(var"var\"scara₊toRev2₊R(t)ˍt\"[1, 1]", ˍ₋arg2[69]), (*)(var"var\"scara₊toRev2₊R(t)ˍt\"[1, 2]", ˍ₋arg2[65]))
                                var"var\"scara₊toRev2₊r0(t)ˍtˍt\"[2]" = (+)((*)(var"var\"scara₊toRev2₊R(t)ˍtˍt\"[2, 1]", ˍ₋arg2[69]), (*)(var"var\"scara₊toRev2₊R(t)ˍtˍt\"[2, 2]", ˍ₋arg2[65]))
                                var"(scara₊toRev2₊r0(t))[1]" = (+)((*)(var"(scara₊toRev2₊R(t))[1, 1]", ˍ₋arg2[69]), (*)(var"(scara₊toRev2₊R(t))[1, 2]", ˍ₋arg2[65]))
                                var"(scara₊toRev2₊r0(t))[2]" = (+)((*)(var"(scara₊toRev2₊R(t))[2, 1]", ˍ₋arg2[69]), (*)(var"(scara₊toRev2₊R(t))[2, 2]", ˍ₋arg2[65]))
                                var"motor1₊signalVoltage₊v(t)" = var"motor1₊resistor₊p₊v(t)"
                                var"motor1₊resistor₊n₊v(t)" = var"motor1₊inductor₊p₊v(t)"
                                var"motor2₊signalVoltage₊p₊v(t)" = var"motor2₊signalVoltage₊v(t)"
                                var"motor1₊inductor₊v(t)" = (+)((+)(var"gain1₊y(t)", (*)(-1, var"motor1₊resistor₊v(t)")), (*)(-1, var"motor1₊emf₊v(t)"))
                                var"motor1₊emf₊p₊v(t)" = var"motor1₊emf₊v(t)"
                                var"motor1₊inertia₊flange_b₊tau(t)" = (+)((*)(-1, var"motor1₊inertia₊flange_a₊tau(t)"), (*)(ˍ₋arg2[14], var"motor1₊inertia₊a(t)"))
                                var"motor2₊inductor₊v(t)" = (+)((+)(var"gain2₊y(t)", (*)(-1, var"motor2₊emf₊v(t)")), (*)(-1, var"motor2₊resistor₊v(t)"))
                                var"motor2₊emf₊p₊v(t)" = var"motor2₊emf₊v(t)"
                                var"motor2₊inductor₊n₊v(t)" = var"motor2₊emf₊v(t)"
                                var"var\"scara₊toTCP₊r0(t)ˍt\"[2]" = (+)((*)(var"var\"scara₊toTCP₊R(t)ˍt\"[2, 1]", ˍ₋arg2[53]), (*)(var"var\"scara₊toTCP₊R(t)ˍt\"[2, 2]", ˍ₋arg2[40]))
                                var"var\"scara₊toTCP₊r0(t)ˍt\"[1]" = (+)((*)(var"var\"scara₊toTCP₊R(t)ˍt\"[1, 1]", ˍ₋arg2[53]), (*)(var"var\"scara₊toTCP₊R(t)ˍt\"[1, 2]", ˍ₋arg2[40]))
                                var"(scara₊toTCP₊r0(t))[2]" = (+)((*)(var"(scara₊toTCP₊R(t))[2, 1]", ˍ₋arg2[53]), (*)(var"(scara₊toTCP₊R(t))[2, 2]", ˍ₋arg2[40]))
                                var"(scara₊toTCP₊r0(t))[1]" = (+)((*)(var"(scara₊toTCP₊R(t))[1, 1]", ˍ₋arg2[53]), (*)(var"(scara₊toTCP₊R(t))[1, 2]", ˍ₋arg2[40]))
                                var"var\"scara₊toTCP₊r0(t)ˍtˍt\"[2]" = (+)((*)(var"var\"scara₊toTCP₊R(t)ˍtˍt\"[2, 1]", ˍ₋arg2[53]), (*)(var"var\"scara₊toTCP₊R(t)ˍtˍt\"[2, 2]", ˍ₋arg2[40]))
                                var"var\"scara₊mass2₊r(t)ˍtt\"[1]" = (+)((+)(var"var\"scara₊toMass2₊r0(t)ˍtˍt\"[1]", var"var\"scara₊toRev2₊r0(t)ˍtˍt\"[1]"), var"scara₊fixed₊frame_a₊xˍtt(t)")
                                var"var\"scara₊mass2₊r(t)ˍt\"[1]" = (+)((+)(var"var\"scara₊toMass2₊r0(t)ˍt\"[1]", var"var\"scara₊toRev2₊r0(t)ˍt\"[1]"), var"scara₊fixed₊frame_a₊xˍt(t)")
                                var"(scara₊mass2₊r(t))[1]" = (+)((+)(var"(scara₊toMass2₊r0(t))[1]", var"(scara₊toRev2₊r0(t))[1]"), var"scara₊fixed₊frame_a₊x(t)")
                                var"motor1₊signalVoltage₊p₊v(t)" = var"motor1₊signalVoltage₊v(t)"
                                var"motor1₊inductor₊n₊v(t)" = var"motor1₊emf₊p₊v(t)"
                                var"gear1₊flange_a₊tau(t)" = (*)(-1, var"motor1₊inertia₊flange_b₊tau(t)")
                                var"scara₊tcp₊yˍt(t)" = (+)((+)(var"var\"scara₊toRev2₊r0(t)ˍt\"[2]", var"var\"scara₊toTCP₊r0(t)ˍt\"[2]"), var"scara₊fixed₊frame_a₊yˍt(t)")
                                var"scara₊tcp₊y(t)" = (+)((+)(var"(scara₊toRev2₊r0(t))[2]", var"(scara₊toTCP₊r0(t))[2]"), var"scara₊fixed₊frame_a₊y(t)")
                                var"scara₊tcp₊yˍtt(t)" = (+)((+)(var"var\"scara₊toRev2₊r0(t)ˍtˍt\"[2]", var"var\"scara₊toTCP₊r0(t)ˍtˍt\"[2]"), var"scara₊fixed₊frame_a₊yˍtt(t)")
                                var"var\"scara₊mass2₊v(t)ˍt\"[1]" = var"var\"scara₊mass2₊r(t)ˍtt\"[1]"
                                var"var\"scara₊mass1₊r(t)ˍtt\"[1]" = (+)((+)((+)(var"var\"scara₊mass2₊r(t)ˍtt\"[1]", var"var\"scara₊toMass1₊r0(t)ˍtˍt\"[1]"), (*)(-1, var"var\"scara₊toMass2₊r0(t)ˍtˍt\"[1]")), (*)(-1, var"var\"scara₊toRev2₊r0(t)ˍtˍt\"[1]"))
                                var"scara₊tcp₊xˍt(t)" = (+)((+)(var"var\"scara₊mass2₊r(t)ˍt\"[1]", (*)(-1, var"var\"scara₊toMass2₊r0(t)ˍt\"[1]")), var"var\"scara₊toTCP₊r0(t)ˍt\"[1]")
                                var"var\"scara₊mass1₊r(t)ˍt\"[1]" = (+)((+)((+)(var"var\"scara₊mass2₊r(t)ˍt\"[1]", var"var\"scara₊toMass1₊r0(t)ˍt\"[1]"), (*)(-1, var"var\"scara₊toMass2₊r0(t)ˍt\"[1]")), (*)(-1, var"var\"scara₊toRev2₊r0(t)ˍt\"[1]"))
                                var"(scara₊mass2₊v(t))[1]" = var"var\"scara₊mass2₊r(t)ˍt\"[1]"
                                var"(scara₊mass1₊r(t))[1]" = (+)((+)((+)(var"(scara₊mass2₊r(t))[1]", var"(scara₊toMass1₊r0(t))[1]"), (*)(-1, var"(scara₊toMass2₊r0(t))[1]")), (*)(-1, var"(scara₊toRev2₊r0(t))[1]"))
                                var"scara₊tcp₊x(t)" = (+)((+)(var"(scara₊mass2₊r(t))[1]", (*)(-1, var"(scara₊toMass2₊r0(t))[1]")), var"(scara₊toTCP₊r0(t))[1]")
                                var"scara₊mass2₊frame_a₊x(t)" = var"(scara₊mass2₊r(t))[1]"
                                var"gear1₊flange_b₊tau(t)" = (*)((*)(-1, ˍ₋arg2[21]), var"gear1₊flange_a₊tau(t)")
                                var"motor1₊flange_a₊tau(t)" = (*)(-1, var"gear1₊flange_a₊tau(t)")
                                var"scara₊tcp₊vy(t)" = var"scara₊tcp₊yˍt(t)"
                                var"var\"scara₊mass1₊r(t)ˍt\"[2]" = (+)((+)((+)(var"var\"scara₊toMass1₊r0(t)ˍt\"[2]", (*)(-1, var"var\"scara₊toRev2₊r0(t)ˍt\"[2]")), (*)(-1, var"var\"scara₊toTCP₊r0(t)ˍt\"[2]")), var"scara₊tcp₊yˍt(t)")
                                var"var\"scara₊mass2₊r(t)ˍt\"[2]" = (+)((+)(var"var\"scara₊toMass2₊r0(t)ˍt\"[2]", (*)(-1, var"var\"scara₊toTCP₊r0(t)ˍt\"[2]")), var"scara₊tcp₊yˍt(t)")
                                var"(scara₊mass1₊r(t))[2]" = (+)((+)((+)(var"(scara₊toMass1₊r0(t))[2]", (*)(-1, var"(scara₊toRev2₊r0(t))[2]")), (*)(-1, var"(scara₊toTCP₊r0(t))[2]")), var"scara₊tcp₊y(t)")
                                var"scara₊tcp₊frame_a₊y(t)" = var"scara₊tcp₊y(t)"
                                var"(scara₊mass2₊r(t))[2]" = (+)((+)(var"(scara₊toMass2₊r0(t))[2]", (*)(-1, var"(scara₊toTCP₊r0(t))[2]")), var"scara₊tcp₊y(t)")
                                var"var\"scara₊mass1₊r(t)ˍtt\"[2]" = (+)((+)((+)(var"var\"scara₊toMass1₊r0(t)ˍtˍt\"[2]", (*)(-1, var"var\"scara₊toRev2₊r0(t)ˍtˍt\"[2]")), (*)(-1, var"var\"scara₊toTCP₊r0(t)ˍtˍt\"[2]")), var"scara₊tcp₊yˍtt(t)")
                                var"(scara₊mass2₊a(t))[1]" = var"var\"scara₊mass2₊v(t)ˍt\"[1]"
                                var"var\"scara₊mass1₊v(t)ˍt\"[1]" = var"var\"scara₊mass1₊r(t)ˍtt\"[1]"
                                var"scara₊tcp₊vx(t)" = var"scara₊tcp₊xˍt(t)"
                                var"(scara₊mass1₊v(t))[1]" = var"var\"scara₊mass1₊r(t)ˍt\"[1]"
                                var"scara₊mass1₊frame_a₊x(t)" = var"(scara₊mass1₊r(t))[1]"
                                var"scara₊tcp₊frame_a₊x(t)" = var"scara₊tcp₊x(t)"
                                var"scara₊toMass2₊frame_b₊x(t)" = var"scara₊mass2₊frame_a₊x(t)"
                                var"scara₊fixed₊frame_a₊tau(t)" = var"gear1₊flange_b₊tau(t)"
                                var"scara₊flange1₊tau(t)" = (*)(-1, var"gear1₊flange_b₊tau(t)")
                                var"(scara₊mass1₊v(t))[2]" = var"var\"scara₊mass1₊r(t)ˍt\"[2]"
                                var"(scara₊mass2₊v(t))[2]" = var"var\"scara₊mass2₊r(t)ˍt\"[2]"
                                var"scara₊mass1₊frame_a₊y(t)" = var"(scara₊mass1₊r(t))[2]"
                                var"scara₊toMass2₊frame_a₊y(t)" = (+)((*)(-1, var"(scara₊toTCP₊r0(t))[2]"), var"scara₊tcp₊frame_a₊y(t)")
                                var"scara₊tcp₊posYOut₊u(t)" = var"scara₊tcp₊frame_a₊y(t)"
                                var"scara₊toTCP₊frame_b₊y(t)" = var"scara₊tcp₊frame_a₊y(t)"
                                var"scara₊posYOut₊u(t)" = var"scara₊tcp₊frame_a₊y(t)"
                                var"scara₊mass2₊frame_a₊y(t)" = var"(scara₊mass2₊r(t))[2]"
                                var"var\"scara₊mass1₊v(t)ˍt\"[2]" = var"var\"scara₊mass1₊r(t)ˍtt\"[2]"
                                var"(scara₊mass2₊f(t))[1]" = (+)((*)(var"(scara₊mass2₊a(t))[1]", ˍ₋arg2[74]), (*)((*)(-1, ˍ₋arg2[20]), ˍ₋arg2[74]))
                                var"(scara₊mass1₊a(t))[1]" = var"var\"scara₊mass1₊v(t)ˍt\"[1]"
                                var"scara₊tcp₊v_abs(t)" = (NaNMath.sqrt)((+)((^)(var"scara₊tcp₊vx(t)", 2), (^)(var"scara₊tcp₊vy(t)", 2)))
                                var"scara₊toMass1₊frame_b₊x(t)" = var"scara₊mass1₊frame_a₊x(t)"
                                var"scara₊toMass2₊frame_a₊x(t)" = (+)((*)(-1, var"(scara₊toTCP₊r0(t))[1]"), var"scara₊tcp₊frame_a₊x(t)")
                                var"scara₊tcp₊posXOut₊u(t)" = var"scara₊tcp₊frame_a₊x(t)"
                                var"scara₊toTCP₊frame_b₊x(t)" = var"scara₊tcp₊frame_a₊x(t)"
                                var"scara₊posXOut₊u(t)" = var"scara₊tcp₊frame_a₊x(t)"
                                var"scara₊rev1₊frame_b₊tau(t)" = var"scara₊fixed₊frame_a₊tau(t)"
                                var"scara₊toMass1₊frame_b₊y(t)" = var"scara₊mass1₊frame_a₊y(t)"
                                var"scara₊toTCP₊frame_a₊y(t)" = var"scara₊toMass2₊frame_a₊y(t)"
                                var"scara₊toMass2₊frame_b₊y(t)" = var"scara₊mass2₊frame_a₊y(t)"
                                var"(scara₊mass1₊a(t))[2]" = var"var\"scara₊mass1₊v(t)ˍt\"[2]"
                                var"scara₊toMass2₊frame_b₊fx(t)" = (*)(-1, var"(scara₊mass2₊f(t))[1]")
                                var"scara₊mass2₊frame_a₊fx(t)" = var"(scara₊mass2₊f(t))[1]"
                                var"(scara₊mass1₊f(t))[1]" = (+)((*)(var"(scara₊mass1₊a(t))[1]", ˍ₋arg2[9]), (*)((*)(-1, ˍ₋arg2[24]), ˍ₋arg2[9]))
                                var"scara₊tcp₊Fv(t)" = (*)(ˍ₋arg2[19], var"scara₊tcp₊v_abs(t)")
                                var"scara₊toTCP₊frame_a₊x(t)" = var"scara₊toMass2₊frame_a₊x(t)"
                                var"scara₊rev1₊frame_a₊tau(t)" = (*)(-1, var"scara₊rev1₊frame_b₊tau(t)")
                                var"scara₊rev2₊frame_b₊y(t)" = var"scara₊toTCP₊frame_a₊y(t)"
                                var"(scara₊mass1₊f(t))[2]" = (+)((*)(var"(scara₊mass1₊a(t))[2]", ˍ₋arg2[9]), (*)((*)(-1, ˍ₋arg2[62]), ˍ₋arg2[9]))
                                var"scara₊toMass2₊frame_a₊tau(t)" = (+)((+)((*)(-1, var"scara₊toMass2₊frame_b₊tau(t)"), (*)((*)(-1, var"(scara₊toMass2₊r0(t))[1]"), var"scara₊toMass2₊frame_b₊fy(t)")), (*)(var"(scara₊toMass2₊r0(t))[2]", var"scara₊toMass2₊frame_b₊fx(t)"))
                                var"scara₊toMass2₊frame_a₊fx(t)" = (*)(-1, var"scara₊toMass2₊frame_b₊fx(t)")
                                var"scara₊toMass1₊frame_b₊fx(t)" = (*)(-1, var"(scara₊mass1₊f(t))[1]")
                                var"scara₊mass1₊frame_a₊fx(t)" = var"(scara₊mass1₊f(t))[1]"
                                var"scara₊tcp₊Fstribeck(t)" = (+)((+)(var"scara₊tcp₊Fc(t)", var"scara₊tcp₊Fv(t)"), (*)((exp)((*)(-1, (NaNMath.pow)((/)(var"scara₊tcp₊v_abs(t)", ˍ₋arg2[67]), ˍ₋arg2[85]))), (+)(var"scara₊tcp₊Fs(t)", (*)(-1, var"scara₊tcp₊Fc(t)"))))
                                var"scara₊rev2₊frame_b₊x(t)" = var"scara₊toTCP₊frame_a₊x(t)"
                                var"scara₊rev1₊flange_a₊tau(t)" = var"scara₊rev1₊frame_a₊tau(t)"
                                var"scara₊rev2₊frame_a₊y(t)" = var"scara₊rev2₊frame_b₊y(t)"
                                var"scara₊toRev2₊frame_b₊y(t)" = var"scara₊rev2₊frame_b₊y(t)"
                                var"scara₊toMass1₊frame_b₊fy(t)" = (*)(-1, var"(scara₊mass1₊f(t))[2]")
                                var"scara₊mass1₊frame_a₊fy(t)" = var"(scara₊mass1₊f(t))[2]"
                                var"scara₊toMass1₊frame_a₊fx(t)" = (*)(-1, var"scara₊toMass1₊frame_b₊fx(t)")
                                var"scara₊tcp₊f_abs(t)" = var"scara₊tcp₊Fstribeck(t)"
                                var"scara₊rev2₊frame_a₊x(t)" = var"scara₊rev2₊frame_b₊x(t)"
                                var"scara₊toRev2₊frame_b₊x(t)" = var"scara₊rev2₊frame_b₊x(t)"
                                var"scara₊rev1₊tau(t)" = var"scara₊rev1₊flange_a₊tau(t)"
                                var"scara₊toMass1₊frame_a₊fy(t)" = (*)(-1, var"scara₊toMass1₊frame_b₊fy(t)")
                                var"scara₊tcp₊fy(t)" = if (>)(var"scara₊tcp₊v_abs(t)", ˍ₋arg2[73])
                                        (/)((*)((*)(-1, var"scara₊tcp₊vy(t)"), var"scara₊tcp₊f_abs(t)"), var"scara₊tcp₊v_abs(t)")
                                    else
                                        0.0
                                    end
                                var"scara₊tcp₊fx(t)" = if (>)(var"scara₊tcp₊v_abs(t)", ˍ₋arg2[73])
                                        (/)((*)((*)(-1, var"scara₊tcp₊vx(t)"), var"scara₊tcp₊f_abs(t)"), var"scara₊tcp₊v_abs(t)")
                                    else
                                        0.0
                                    end
                                var"scara₊toTCP₊frame_b₊fy(t)" = (*)(-1, var"scara₊tcp₊fy(t)")
                                var"scara₊toRev2₊frame_b₊fy(t)" = (+)((*)(-1, ˍ₋arg1[7]), (*)(-1, var"scara₊tcp₊fy(t)"))
                                var"scara₊tcp₊frame_a₊fy(t)" = var"scara₊tcp₊fy(t)"
                                var"scara₊toTCP₊frame_b₊fx(t)" = (*)(-1, var"scara₊tcp₊fx(t)")
                                var"scara₊toRev2₊frame_b₊fx(t)" = (+)((*)(-1, var"(scara₊mass2₊f(t))[1]"), (*)(-1, var"scara₊tcp₊fx(t)"))
                                var"scara₊tcp₊frame_a₊fx(t)" = var"scara₊tcp₊fx(t)"
                                var"scara₊toTCP₊frame_a₊fy(t)" = (*)(-1, var"scara₊toTCP₊frame_b₊fy(t)")
                                var"scara₊fixed₊frame_a₊fy(t)" = (+)(var"scara₊toRev2₊frame_b₊fy(t)", var"scara₊toMass1₊frame_b₊fy(t)")
                                var"scara₊toRev2₊frame_a₊fy(t)" = (*)(-1, var"scara₊toRev2₊frame_b₊fy(t)")
                                var"scara₊rev2₊frame_b₊fy(t)" = var"scara₊toRev2₊frame_b₊fy(t)"
                                var"scara₊toTCP₊frame_a₊tau(t)" = (+)((+)((*)(-1, var"scara₊toTCP₊frame_b₊tau(t)"), (*)((*)(-1, var"(scara₊toTCP₊r0(t))[1]"), var"scara₊toTCP₊frame_b₊fy(t)")), (*)(var"(scara₊toTCP₊r0(t))[2]", var"scara₊toTCP₊frame_b₊fx(t)"))
                                var"scara₊toTCP₊frame_a₊fx(t)" = (*)(-1, var"scara₊toTCP₊frame_b₊fx(t)")
                                var"scara₊fixed₊frame_a₊fx(t)" = (+)(var"scara₊toMass1₊frame_b₊fx(t)", var"scara₊toRev2₊frame_b₊fx(t)")
                                var"scara₊toRev2₊frame_a₊fx(t)" = (*)(-1, var"scara₊toRev2₊frame_b₊fx(t)")
                                var"scara₊rev2₊frame_b₊fx(t)" = var"scara₊toRev2₊frame_b₊fx(t)"
                                var"scara₊rev1₊frame_b₊fy(t)" = var"scara₊fixed₊frame_a₊fy(t)"
                                var"scara₊rev2₊frame_a₊fy(t)" = (*)(-1, var"scara₊rev2₊frame_b₊fy(t)")
                                var"scara₊toRev2₊frame_b₊tau(t)" = (+)((*)(-1, var"scara₊toMass2₊frame_a₊tau(t)"), (*)(-1, var"scara₊toTCP₊frame_a₊tau(t)"))
                                var"scara₊rev1₊frame_a₊fx(t)" = (*)(-1, var"scara₊fixed₊frame_a₊fx(t)")
                                var"scara₊rev2₊frame_a₊fx(t)" = (*)(-1, var"scara₊rev2₊frame_b₊fx(t)")
                                var"scara₊rev1₊frame_a₊fy(t)" = (*)(-1, var"scara₊rev1₊frame_b₊fy(t)")
                                var"gear2₊flange_b₊tau(t)" = var"scara₊toRev2₊frame_b₊tau(t)"
                                var"scara₊toRev2₊frame_a₊tau(t)" = (+)((+)((*)(-1, var"scara₊toRev2₊frame_b₊tau(t)"), (*)((*)(-1, var"(scara₊toRev2₊r0(t))[1]"), var"scara₊toRev2₊frame_b₊fy(t)")), (*)(var"(scara₊toRev2₊r0(t))[2]", var"scara₊toRev2₊frame_b₊fx(t)"))
                                var"scara₊rev2₊frame_b₊tau(t)" = var"scara₊toRev2₊frame_b₊tau(t)"
                                var"scara₊rev1₊frame_b₊fx(t)" = (*)(-1, var"scara₊rev1₊frame_a₊fx(t)")
                                var"gear2₊flange_a₊tau(t)" = (/)(var"gear2₊flange_b₊tau(t)", (*)(-1, ˍ₋arg2[42]))
                                var"scara₊flange2₊tau(t)" = (*)(-1, var"gear2₊flange_b₊tau(t)")
                                var"scara₊toMass1₊frame_a₊tau(t)" = (+)((*)(-1, var"scara₊toRev2₊frame_a₊tau(t)"), (*)(-1, var"gear1₊flange_b₊tau(t)"))
                                var"scara₊rev2₊frame_a₊tau(t)" = (*)(-1, var"scara₊rev2₊frame_b₊tau(t)")
                                var"motor2₊inertia₊flange_b₊tau(t)" = (*)(-1, var"gear2₊flange_a₊tau(t)")
                                var"motor2₊flange_a₊tau(t)" = (*)(-1, var"gear2₊flange_a₊tau(t)")
                                var"scara₊toMass1₊frame_b₊tau(t)" = (+)((+)((*)(-1, var"scara₊toMass1₊frame_a₊tau(t)"), (*)((*)(-1, var"(scara₊toMass1₊r0(t))[1]"), var"scara₊toMass1₊frame_b₊fy(t)")), (*)(var"(scara₊toMass1₊r0(t))[2]", var"scara₊toMass1₊frame_b₊fx(t)"))
                                var"scara₊rev2₊tau(t)" = var"scara₊rev2₊frame_a₊tau(t)"
                                var"motor2₊inertia₊a(t)" = (/)((+)(var"motor2₊inertia₊flange_a₊tau(t)", var"motor2₊inertia₊flange_b₊tau(t)"), ˍ₋arg2[36])
                                var"scara₊mass1₊frame_a₊tau(t)" = (*)(-1, var"scara₊toMass1₊frame_b₊tau(t)")
                                var"scara₊rev2₊flange_a₊tau(t)" = var"scara₊rev2₊tau(t)"
                                var"motor2₊inertia₊wˍt(t)" = var"motor2₊inertia₊a(t)"
                                var"motor2₊inertia₊phiˍtt(t)" = var"motor2₊inertia₊wˍt(t)"
                                var"gear2₊phi_aˍtt(t)" = var"motor2₊inertia₊phiˍtt(t)"
                                begin
                                    #= C:\Users\hofmaand\.julia\packages\Symbolics\TvWan\src\build_function.jl:564 =#
                                    #= C:\Users\hofmaand\.julia\packages\SymbolicUtils\QUEf3\src\code.jl:444 =# @inbounds begin
                                            #= C:\Users\hofmaand\.julia\packages\SymbolicUtils\QUEf3\src\code.jl:440 =#
                                            ˍ₋out[1] = ˍ₋arg1[3]
                                            ˍ₋out[2] = (/)(var"motor1₊inductor₊v(t)", ˍ₋arg2[83])
                                            ˍ₋out[3] = (+)((*)(-1, var"scara₊rev1₊frame_a₊phiˍtt(t)"), var"scara₊mass1₊phiˍtt(t)")
                                            ˍ₋out[4] = ˍ₋arg1[6]
                                            ˍ₋out[5] = (/)(var"motor2₊inductor₊v(t)", ˍ₋arg2[30])
                                            ˍ₋out[6] = (+)((*)(-1, var"scara₊mass1₊phiˍtt(t)"), var"scara₊mass2₊phiˍtt(t)")
                                            ˍ₋out[7] = (+)((*)(-1, var"scara₊mass1₊frame_a₊tau(t)"), (*)(ˍ₋arg2[6], var"scara₊mass1₊z(t)"))
                                            ˍ₋out[8] = (+)((+)((+)((*)(-1, var"var\"scara₊mass2₊r(t)ˍtt\"[2]"), var"var\"scara₊toMass2₊r0(t)ˍtˍt\"[2]"), (*)(-1, var"var\"scara₊toTCP₊r0(t)ˍtˍt\"[2]")), var"scara₊tcp₊yˍtt(t)")
                                            ˍ₋out[9] = (+)((*)(-1, var"gear2₊phi_aˍtt(t)"), (*)(ˍ₋arg2[42], var"gear2₊phi_bˍtt(t)"))
                                            #= C:\Users\hofmaand\.julia\packages\SymbolicUtils\QUEf3\src\code.jl:442 =#
                                            nothing
                                        end
                                end
                            end
                        end
                    end
                end
            end
        end)

	return Scara_ReferenceODE_ode
end

function get_Scara_ReferenceODE_obs()

	Scara_ReferenceODE_obs=(var"##arg#17830385436281994436", ___mtkparameters___, t, p, se)->begin
        #= C:\Users\hofmaand\.julia\packages\SymbolicUtils\QUEf3\src\code.jl:395 =#
        #= C:\Users\hofmaand\.julia\packages\SymbolicUtils\QUEf3\src\code.jl:396 =#
        #= C:\Users\hofmaand\.julia\packages\SymbolicUtils\QUEf3\src\code.jl:397 =#
        begin
            var"scara₊rev1₊phi(t)" = var"##arg#17830385436281994436"[1]
            var"motor1₊inductor₊i(t)" = var"##arg#17830385436281994436"[2]
            var"scara₊rev1₊w(t)" = var"##arg#17830385436281994436"[3]
            var"scara₊rev2₊phi(t)" = var"##arg#17830385436281994436"[4]
            var"motor2₊inductor₊i(t)" = var"##arg#17830385436281994436"[5]
            var"scara₊rev2₊w(t)" = var"##arg#17830385436281994436"[6]
            var"(scara₊mass2₊f(t))[2]" = var"##arg#17830385436281994436"[7]
            var"scara₊toMass1₊frame_a₊phiˍtt(t)" = var"##arg#17830385436281994436"[8]
            var"scara₊toTCP₊frame_a₊phiˍtt(t)" = var"##arg#17830385436281994436"[9]
            var"##arg#1784648527064982485" = ___mtkparameters___[1]
            begin
                motor1₊J = var"##arg#1784648527064982485"[1]
                motor2₊emf₊k = var"##arg#1784648527064982485"[2]
                L2 = var"##arg#1784648527064982485"[3]
                controllerGain2 = var"##arg#1784648527064982485"[4]
                var"scara₊toMass1₊r[2]" = var"##arg#1784648527064982485"[5]
                scara₊mass1₊J = var"##arg#1784648527064982485"[6]
                scara₊eps = var"##arg#1784648527064982485"[7]
                k = var"##arg#1784648527064982485"[8]
                scara₊mass1₊m = var"##arg#1784648527064982485"[9]
                eps = var"##arg#1784648527064982485"[10]
                J1 = var"##arg#1784648527064982485"[11]
                mu_S = var"##arg#1784648527064982485"[12]
                gain2₊k = var"##arg#1784648527064982485"[13]
                motor1₊inertia₊J = var"##arg#1784648527064982485"[14]
                motor1₊v = var"##arg#1784648527064982485"[15]
                motor1₊resistor₊R = var"##arg#1784648527064982485"[16]
                gain1₊k = var"##arg#1784648527064982485"[17]
                R = var"##arg#1784648527064982485"[18]
                scara₊tcp₊viscousFrictionFactor = var"##arg#1784648527064982485"[19]
                var"scara₊mass2₊g[1]" = var"##arg#1784648527064982485"[20]
                gear1₊ratio = var"##arg#1784648527064982485"[21]
                motor1₊viscousFriction₊frictionFactor = var"##arg#1784648527064982485"[22]
                m2 = var"##arg#1784648527064982485"[23]
                var"scara₊mass1₊g[1]" = var"##arg#1784648527064982485"[24]
                motor1₊emf₊k = var"##arg#1784648527064982485"[25]
                motor2₊L = var"##arg#1784648527064982485"[26]
                v = var"##arg#1784648527064982485"[27]
                var"scara₊fixed₊r[2]" = var"##arg#1784648527064982485"[28]
                gearratio1 = var"##arg#1784648527064982485"[29]
                motor2₊inductor₊L = var"##arg#1784648527064982485"[30]
                mu_A = var"##arg#1784648527064982485"[31]
                scara₊mass2₊J = var"##arg#1784648527064982485"[32]
                J2 = var"##arg#1784648527064982485"[33]
                gain2₊u_start = var"##arg#1784648527064982485"[34]
                motor1₊k = var"##arg#1784648527064982485"[35]
                motor2₊inertia₊J = var"##arg#1784648527064982485"[36]
                scara₊mu_S = var"##arg#1784648527064982485"[37]
                scara₊fixed₊phi = var"##arg#1784648527064982485"[38]
                motor1₊L = var"##arg#1784648527064982485"[39]
                var"scara₊toTCP₊r[2]" = var"##arg#1784648527064982485"[40]
                scara₊J2 = var"##arg#1784648527064982485"[41]
                gear2₊ratio = var"##arg#1784648527064982485"[42]
                motor2₊R = var"##arg#1784648527064982485"[43]
                var"scara₊toMass2₊r[1]" = var"##arg#1784648527064982485"[44]
                scara₊vSlide = var"##arg#1784648527064982485"[45]
                m1 = var"##arg#1784648527064982485"[46]
                gearratio2 = var"##arg#1784648527064982485"[47]
                var"scara₊mass2₊g[2]" = var"##arg#1784648527064982485"[48]
                gain2₊y_start = var"##arg#1784648527064982485"[49]
                Jmotor = var"##arg#1784648527064982485"[50]
                inv_kin₊L2 = var"##arg#1784648527064982485"[51]
                var"scara₊toMass2₊r[2]" = var"##arg#1784648527064982485"[52]
                var"scara₊toTCP₊r[1]" = var"##arg#1784648527064982485"[53]
                motor2₊J = var"##arg#1784648527064982485"[54]
                vSlide = var"##arg#1784648527064982485"[55]
                L = var"##arg#1784648527064982485"[56]
                voltageLimit = var"##arg#1784648527064982485"[57]
                scara₊m1 = var"##arg#1784648527064982485"[58]
                var"scara₊fixed₊r[1]" = var"##arg#1784648527064982485"[59]
                scara₊L1 = var"##arg#1784648527064982485"[60]
                motor2₊viscousFriction₊frictionFactor = var"##arg#1784648527064982485"[61]
                var"scara₊mass1₊g[2]" = var"##arg#1784648527064982485"[62]
                scara₊tcp₊mu_A = var"##arg#1784648527064982485"[63]
                inv_kin₊elbow = var"##arg#1784648527064982485"[64]
                var"scara₊toRev2₊r[2]" = var"##arg#1784648527064982485"[65]
                scara₊L2 = var"##arg#1784648527064982485"[66]
                scara₊tcp₊vSlide = var"##arg#1784648527064982485"[67]
                motor2₊k = var"##arg#1784648527064982485"[68]
                var"scara₊toRev2₊r[1]" = var"##arg#1784648527064982485"[69]
                inv_kin₊L1 = var"##arg#1784648527064982485"[70]
                L1 = var"##arg#1784648527064982485"[71]
                gain1₊y_start = var"##arg#1784648527064982485"[72]
                scara₊tcp₊eps = var"##arg#1784648527064982485"[73]
                scara₊mass2₊m = var"##arg#1784648527064982485"[74]
                controllerGain1 = var"##arg#1784648527064982485"[75]
                motor2₊resistor₊R = var"##arg#1784648527064982485"[76]
                scara₊tcp₊mu_S = var"##arg#1784648527064982485"[77]
                gain1₊u_start = var"##arg#1784648527064982485"[78]
                scara₊m2 = var"##arg#1784648527064982485"[79]
                scara₊J1 = var"##arg#1784648527064982485"[80]
                scara₊mu_A = var"##arg#1784648527064982485"[81]
                var"scara₊toMass1₊r[1]" = var"##arg#1784648527064982485"[82]
                motor1₊inductor₊L = var"##arg#1784648527064982485"[83]
                elbow = var"##arg#1784648527064982485"[84]
                scara₊tcp₊delta = var"##arg#1784648527064982485"[85]
                motor2₊v = var"##arg#1784648527064982485"[86]
                motor1₊R = var"##arg#1784648527064982485"[87]
                begin
                    var"scara₊mass2₊f(t)" = view(var"##arg#17830385436281994436", 7:7)
                    scara₊toMass2₊r = reshape(view(var"##arg#1784648527064982485", [44, 52]), (2,))
                    scara₊mass2₊g = reshape(view(var"##arg#1784648527064982485", [20, 48]), (2,))
                    scara₊fixed₊r = reshape(view(var"##arg#1784648527064982485", [59, 28]), (2,))
                    scara₊mass1₊g = reshape(view(var"##arg#1784648527064982485", [24, 62]), (2,))
                    scara₊toTCP₊r = reshape(view(var"##arg#1784648527064982485", [53, 40]), (2,))
                    scara₊toRev2₊r = reshape(view(var"##arg#1784648527064982485", [69, 65]), (2,))
                    scara₊toMass1₊r = reshape(view(var"##arg#1784648527064982485", [82, 5]), (2,))
                    begin
                        begin
                            var"inp1_traj₊output₊u(t)" = se.penode_comp.input_fun[1](t)#(Main.ScaraRobot.traj_1)(t)
                            var"inp2_traj₊output₊u(t)" = se.penode_comp.input_fun[2](t)#(Main.ScaraRobot.traj_2)(t)
                            var"inp3_traj₊output₊u(t)" = se.penode_comp.input_fun[3](t)#(Main.ScaraRobot.traj_3)(t)
                            var"motor1₊emf₊i(t)" = var"motor1₊inductor₊i(t)"
                            var"gear1₊phi_bˍt(t)" = var"scara₊rev1₊w(t)"
                            var"gear1₊phi_b(t)" = var"scara₊rev1₊phi(t)"
                            var"motor1₊ground₊g₊v(t)" = 0.0
                            var"motor1₊currentSensor₊p₊v(t)" = -0.0
                            var"scara₊fixed₊frame_a₊phiˍtt(t)" = 0.0
                            var"scara₊mass1₊phiˍtt(t)" = var"scara₊toMass1₊frame_a₊phiˍtt(t)"
                            var"gear1₊phi_support(t)" = 0.0
                            var"angleSensor1₊flange₊tau(t)" = 0.0
                            var"motor2₊resistor₊i(t)" = var"motor2₊inductor₊i(t)"
                            var"gear2₊phi_bˍt(t)" = var"scara₊rev2₊w(t)"
                            var"motor2₊inductor₊p₊i(t)" = var"motor2₊inductor₊i(t)"
                            var"motor2₊emf₊i(t)" = var"motor2₊inductor₊i(t)"
                            var"gear2₊phi_b(t)" = var"scara₊rev2₊phi(t)"
                            var"motor2₊ground₊g₊v(t)" = 0.0
                            var"motor2₊currentSensor₊p₊v(t)" = 0.0
                            var"scara₊toMass2₊frame_a₊phiˍtt(t)" = var"scara₊toTCP₊frame_a₊phiˍtt(t)"
                            var"scara₊toMass2₊frame_b₊fy(t)" = (*)(-1, var"(scara₊mass2₊f(t))[2]")
                            var"scara₊fixed₊frame_a₊phiˍt(t)" = 0.0
                            var"scara₊fixed₊frame_a₊phi(t)" = scara₊fixed₊phi
                            var"scara₊toRev2₊frame_a₊phiˍtt(t)" = var"scara₊toMass1₊frame_a₊phiˍtt(t)"
                            var"scara₊fixed₊frame_a₊xˍtt(t)" = 0.0
                            var"scara₊toTCP₊frame_b₊tau(t)" = -0.0
                            var"scara₊fixed₊frame_a₊yˍt(t)" = 0.0
                            var"scara₊fixed₊frame_a₊xˍt(t)" = 0.0
                            var"gear2₊phi_support(t)" = 0.0
                            var"angleSensor2₊flange₊tau(t)" = 0.0
                            var"scara₊fixed₊frame_a₊x(t)" = var"scara₊fixed₊r[1]"
                            var"scara₊fixed₊frame_a₊y(t)" = var"scara₊fixed₊r[2]"
                            var"scara₊rev1₊flange_a₊phi(t)" = var"scara₊rev1₊phi(t)"
                            var"scara₊fixed₊frame_a₊yˍtt(t)" = 0.0
                            var"scara₊rev2₊flange_a₊phi(t)" = var"scara₊rev2₊phi(t)"
                            var"(scara₊mass2₊a(t))[2]" = (/)((+)(var"(scara₊mass2₊f(t))[2]", (*)(var"scara₊mass2₊g[2]", scara₊mass2₊m)), scara₊mass2₊m)
                            var"scara₊mass2₊frame_a₊fy(t)" = var"(scara₊mass2₊f(t))[2]"
                            var"scara₊tcp₊frame_a₊tau(t)" = 0.0
                            var"motor1₊emf₊n₊v(t)" = 0.0
                            var"motor1₊signalVoltage₊n₊v(t)" = 0.0
                            var"motor1₊currentSensor₊n₊v(t)" = -0.0
                            var"motor2₊emf₊n₊v(t)" = 0.0
                            var"motor2₊signalVoltage₊n₊v(t)" = -0.0
                            var"motor2₊currentSensor₊n₊v(t)" = 0.0
                            var"inv_kin₊u1(t)" = var"inp1_traj₊output₊u(t)"
                            var"inv_kin₊u2(t)" = var"inp2_traj₊output₊u(t)"
                            var"scara₊tcp₊zForceIn₊u(t)" = var"inp3_traj₊output₊u(t)"
                            var"scara₊zForceIn₊u(t)" = var"inp3_traj₊output₊u(t)"
                            var"motor1₊inductor₊p₊i(t)" = var"motor1₊emf₊i(t)"
                            var"motor1₊resistor₊i(t)" = var"motor1₊emf₊i(t)"
                            var"motor1₊emf₊p₊i(t)" = var"motor1₊emf₊i(t)"
                            var"motor1₊emf₊flange₊tau(t)" = (*)((*)(-1, motor1₊emf₊k), var"motor1₊emf₊i(t)")
                            var"motor1₊currentSensor₊n₊i(t)" = (*)(-1, var"motor1₊emf₊i(t)")
                            var"gear1₊phi_aˍt(t)" = (*)(gear1₊ratio, var"gear1₊phi_bˍt(t)")
                            var"gear1₊phi_a(t)" = (*)(gear1₊ratio, var"gear1₊phi_b(t)")
                            var"gear1₊flange_b₊phi(t)" = var"gear1₊phi_b(t)"
                            var"angleSensor1₊phi₊u(t)" = var"gear1₊phi_b(t)"
                            var"scara₊flange1₊phi(t)" = var"gear1₊phi_b(t)"
                            var"feedback1₊input2₊u(t)" = var"gear1₊phi_b(t)"
                            var"scara₊rev1₊frame_a₊phiˍtt(t)" = var"scara₊fixed₊frame_a₊phiˍtt(t)"
                            var"scara₊mass1₊wˍt(t)" = var"scara₊mass1₊phiˍtt(t)"
                            var"motor2₊signalVoltage₊i(t)" = (*)(-1, var"motor2₊resistor₊i(t)")
                            var"motor2₊resistor₊v(t)" = (*)(motor2₊resistor₊R, var"motor2₊resistor₊i(t)")
                            var"motor2₊resistor₊n₊i(t)" = (*)(-1, var"motor2₊resistor₊i(t)")
                            var"gear2₊phi_aˍt(t)" = (*)(gear2₊ratio, var"gear2₊phi_bˍt(t)")
                            var"motor2₊inductor₊n₊i(t)" = (*)(-1, var"motor2₊inductor₊p₊i(t)")
                            var"motor2₊emf₊p₊i(t)" = var"motor2₊emf₊i(t)"
                            var"motor2₊emf₊flange₊tau(t)" = (*)((*)(-1, motor2₊emf₊k), var"motor2₊emf₊i(t)")
                            var"motor2₊currentSensor₊n₊i(t)" = (*)(-1, var"motor2₊emf₊i(t)")
                            var"motor2₊ground₊g₊i(t)" = (+)((*)(-1, var"motor2₊resistor₊i(t)"), var"motor2₊emf₊i(t)")
                            var"gear2₊phi_a(t)" = (*)(gear2₊ratio, var"gear2₊phi_b(t)")
                            var"gear2₊flange_b₊phi(t)" = var"gear2₊phi_b(t)"
                            var"angleSensor2₊phi₊u(t)" = var"gear2₊phi_b(t)"
                            var"scara₊flange2₊phi(t)" = var"gear2₊phi_b(t)"
                            var"feedback2₊input2₊u(t)" = var"gear2₊phi_b(t)"
                            var"scara₊mass2₊phiˍtt(t)" = var"scara₊toMass2₊frame_a₊phiˍtt(t)"
                            var"scara₊toMass2₊frame_a₊fy(t)" = (*)(-1, var"scara₊toMass2₊frame_b₊fy(t)")
                            var"scara₊rev1₊frame_a₊phiˍt(t)" = var"scara₊fixed₊frame_a₊phiˍt(t)"
                            var"scara₊rev1₊frame_a₊phi(t)" = var"scara₊fixed₊frame_a₊phi(t)"
                            var"scara₊rev1₊frame_b₊x(t)" = var"scara₊fixed₊frame_a₊x(t)"
                            var"scara₊toRev2₊frame_a₊x(t)" = var"scara₊fixed₊frame_a₊x(t)"
                            var"scara₊toMass1₊frame_a₊x(t)" = var"scara₊fixed₊frame_a₊x(t)"
                            var"scara₊rev1₊frame_b₊y(t)" = var"scara₊fixed₊frame_a₊y(t)"
                            var"scara₊toRev2₊frame_a₊y(t)" = var"scara₊fixed₊frame_a₊y(t)"
                            var"scara₊toMass1₊frame_a₊y(t)" = var"scara₊fixed₊frame_a₊y(t)"
                            var"var\"scara₊mass2₊v(t)ˍt\"[2]" = var"(scara₊mass2₊a(t))[2]"
                            var"inv_kin₊inp1₊u(t)" = var"inv_kin₊u1(t)"
                            var"inv_kin₊inp2₊u(t)" = var"inv_kin₊u2(t)"
                            var"inv_kin₊y2(t)" = (atan)((*)(inv_kin₊elbow, (NaNMath.sqrt)((+)(1, (*)(-1, (^)((/)((+)((+)((+)((*)(-1, (^)(inv_kin₊L1, 2)), (*)(-1, (^)(inv_kin₊L2, 2))), (^)(var"inv_kin₊u2(t)", 2)), (^)(var"inv_kin₊u1(t)", 2)), (*)((*)(2, inv_kin₊L1), inv_kin₊L2)), 2))))), (/)((+)((+)((+)((*)(-1, (^)(inv_kin₊L1, 2)), (*)(-1, (^)(inv_kin₊L2, 2))), (^)(var"inv_kin₊u2(t)", 2)), (^)(var"inv_kin₊u1(t)", 2)), (*)((*)(2, inv_kin₊L1), inv_kin₊L2)))
                            var"scara₊tcp₊Fs(t)" = (*)(scara₊tcp₊mu_A, var"scara₊tcp₊zForceIn₊u(t)")
                            var"scara₊tcp₊Fc(t)" = (*)(scara₊tcp₊mu_S, var"scara₊tcp₊zForceIn₊u(t)")
                            var"motor1₊resistor₊p₊i(t)" = var"motor1₊inductor₊p₊i(t)"
                            var"motor1₊inductor₊n₊i(t)" = (*)(-1, var"motor1₊inductor₊p₊i(t)")
                            var"motor1₊resistor₊n₊i(t)" = (*)(-1, var"motor1₊inductor₊p₊i(t)")
                            var"motor1₊ground₊g₊i(t)" = (+)((*)(-1, var"motor1₊inductor₊p₊i(t)"), var"motor1₊emf₊i(t)")
                            var"motor1₊resistor₊v(t)" = (*)(motor1₊resistor₊R, var"motor1₊resistor₊i(t)")
                            var"motor1₊emf₊n₊i(t)" = (*)(-1, var"motor1₊emf₊p₊i(t)")
                            var"motor1₊currentSensor₊p₊i(t)" = (*)(-1, var"motor1₊currentSensor₊n₊i(t)")
                            var"motor1₊inertia₊phiˍt(t)" = var"gear1₊phi_aˍt(t)"
                            var"motor1₊inertia₊phi(t)" = var"gear1₊phi_a(t)"
                            var"gear1₊flange_a₊phi(t)" = var"gear1₊phi_a(t)"
                            var"motor1₊flange_a₊phi(t)" = var"gear1₊phi_a(t)"
                            var"motor1₊inertia₊flange_b₊phi(t)" = var"gear1₊phi_a(t)"
                            var"angleSensor1₊flange₊phi(t)" = var"angleSensor1₊phi₊u(t)"
                            var"gear1₊phi_bˍtt(t)" = (+)((*)(-1, var"scara₊rev1₊frame_a₊phiˍtt(t)"), var"scara₊mass1₊phiˍtt(t)")
                            var"scara₊rev1₊wˍt(t)" = (+)((*)(-1, var"scara₊rev1₊frame_a₊phiˍtt(t)"), var"scara₊mass1₊phiˍtt(t)")
                            var"scara₊mass1₊z(t)" = var"scara₊mass1₊wˍt(t)"
                            var"motor2₊signalVoltage₊p₊i(t)" = var"motor2₊signalVoltage₊i(t)"
                            var"motor2₊resistor₊p₊i(t)" = (*)(-1, var"motor2₊resistor₊n₊i(t)")
                            var"motor2₊inertia₊phiˍt(t)" = var"gear2₊phi_aˍt(t)"
                            var"motor2₊emf₊n₊i(t)" = (*)(-1, var"motor2₊emf₊p₊i(t)")
                            var"motor2₊currentSensor₊i(t)" = (*)(-1, var"motor2₊currentSensor₊n₊i(t)")
                            var"motor2₊inertia₊phi(t)" = var"gear2₊phi_a(t)"
                            var"gear2₊flange_a₊phi(t)" = var"gear2₊phi_a(t)"
                            var"motor2₊flange_a₊phi(t)" = var"gear2₊phi_a(t)"
                            var"motor2₊inertia₊flange_b₊phi(t)" = var"gear2₊phi_a(t)"
                            var"angleSensor2₊flange₊phi(t)" = var"angleSensor2₊phi₊u(t)"
                            var"scara₊mass2₊wˍt(t)" = var"scara₊mass2₊phiˍtt(t)"
                            var"scara₊rev2₊wˍt(t)" = (+)((*)(-1, var"scara₊mass1₊phiˍtt(t)"), var"scara₊mass2₊phiˍtt(t)")
                            var"gear2₊phi_bˍtt(t)" = (+)((*)(-1, var"scara₊mass1₊phiˍtt(t)"), var"scara₊mass2₊phiˍtt(t)")
                            var"scara₊mass1₊phiˍt(t)" = (+)(var"scara₊rev1₊frame_a₊phiˍt(t)", var"scara₊rev1₊w(t)")
                            var"scara₊mass1₊phi(t)" = (+)(var"scara₊rev1₊phi(t)", var"scara₊rev1₊frame_a₊phi(t)")
                            var"scara₊rev1₊frame_a₊x(t)" = var"scara₊rev1₊frame_b₊x(t)"
                            var"scara₊rev1₊frame_a₊y(t)" = var"scara₊rev1₊frame_b₊y(t)"
                            var"var\"scara₊mass2₊r(t)ˍtt\"[2]" = var"var\"scara₊mass2₊v(t)ˍt\"[2]"
                            var"inv_kin₊y1(t)" = (+)((atan)(var"inv_kin₊u2(t)", var"inv_kin₊u1(t)"), (*)(-1, (atan)((*)(inv_kin₊L2, (sin)(var"inv_kin₊y2(t)")), (+)(inv_kin₊L1, (*)(inv_kin₊L2, (cos)(var"inv_kin₊y2(t)"))))))
                            var"inv_kin₊out2₊u(t)" = var"inv_kin₊y2(t)"
                            var"gain2₊u(t)" = (+)((*)(-1, var"scara₊rev2₊phi(t)"), var"inv_kin₊y2(t)")
                            var"feedback2₊input1₊u(t)" = var"inv_kin₊y2(t)"
                            var"motor1₊signalVoltage₊i(t)" = (*)(-1, var"motor1₊resistor₊p₊i(t)")
                            var"motor1₊currentSensor₊i(t)" = var"motor1₊currentSensor₊p₊i(t)"
                            var"motor1₊viscousFriction₊flange₊phiˍt(t)" = var"motor1₊inertia₊phiˍt(t)"
                            var"motor1₊inertia₊w(t)" = var"motor1₊inertia₊phiˍt(t)"
                            var"motor1₊viscousFriction₊flange₊phi(t)" = var"motor1₊inertia₊phi(t)"
                            var"gear1₊phi_aˍtt(t)" = (*)(gear1₊ratio, var"gear1₊phi_bˍtt(t)")
                            var"scara₊rev1₊z(t)" = var"scara₊rev1₊wˍt(t)"
                            var"motor2₊signalVoltage₊n₊i(t)" = (*)(-1, var"motor2₊signalVoltage₊p₊i(t)")
                            var"motor2₊viscousFriction₊flange₊phiˍt(t)" = var"motor2₊inertia₊phiˍt(t)"
                            var"motor2₊inertia₊w(t)" = var"motor2₊inertia₊phiˍt(t)"
                            var"motor2₊currentSensor₊p₊i(t)" = var"motor2₊currentSensor₊i(t)"
                            var"motor2₊viscousFriction₊flange₊phi(t)" = var"motor2₊inertia₊phi(t)"
                            var"scara₊mass2₊z(t)" = var"scara₊mass2₊wˍt(t)"
                            var"scara₊rev2₊z(t)" = var"scara₊rev2₊wˍt(t)"
                            var"scara₊mass2₊phiˍt(t)" = (+)(var"scara₊rev2₊w(t)", var"scara₊mass1₊phiˍt(t)")
                            var"scara₊toMass1₊frame_a₊phiˍt(t)" = var"scara₊mass1₊phiˍt(t)"
                            var"scara₊mass1₊w(t)" = var"scara₊mass1₊phiˍt(t)"
                            var"scara₊mass2₊phi(t)" = (+)(var"scara₊rev2₊phi(t)", var"scara₊mass1₊phi(t)")
                            var"scara₊toMass1₊frame_a₊phi(t)" = var"scara₊mass1₊phi(t)"
                            var"scara₊mass1₊frame_a₊phi(t)" = var"scara₊mass1₊phi(t)"
                            var"scara₊rev2₊frame_a₊phi(t)" = var"scara₊mass1₊phi(t)"
                            var"inv_kin₊out1₊u(t)" = var"inv_kin₊y1(t)"
                            var"gain1₊u(t)" = (+)((*)(-1, var"scara₊rev1₊phi(t)"), var"inv_kin₊y1(t)")
                            var"feedback1₊input1₊u(t)" = var"inv_kin₊y1(t)"
                            var"gain2₊y(t)" = (*)(gain2₊k, var"gain2₊u(t)")
                            var"gain2₊input₊u(t)" = var"gain2₊u(t)"
                            var"feedback2₊output₊u(t)" = var"gain2₊u(t)"
                            var"motor1₊signalVoltage₊n₊i(t)" = (*)(-1, var"motor1₊signalVoltage₊i(t)")
                            var"motor1₊emf₊phiˍt(t)" = var"motor1₊viscousFriction₊flange₊phiˍt(t)"
                            var"motor1₊viscousFriction₊flange₊tau(t)" = (*)(motor1₊viscousFriction₊frictionFactor, var"motor1₊viscousFriction₊flange₊phiˍt(t)")
                            var"motor1₊emf₊phi(t)" = var"motor1₊viscousFriction₊flange₊phi(t)"
                            var"motor1₊inertia₊flange_a₊phi(t)" = var"motor1₊viscousFriction₊flange₊phi(t)"
                            var"motor1₊inertia₊phiˍtt(t)" = var"gear1₊phi_aˍtt(t)"
                            var"motor2₊emf₊phiˍt(t)" = var"motor2₊viscousFriction₊flange₊phiˍt(t)"
                            var"motor2₊viscousFriction₊flange₊tau(t)" = (*)(motor2₊viscousFriction₊frictionFactor, var"motor2₊viscousFriction₊flange₊phiˍt(t)")
                            var"motor2₊emf₊phi(t)" = var"motor2₊viscousFriction₊flange₊phi(t)"
                            var"scara₊mass2₊frame_a₊tau(t)" = (*)(scara₊mass2₊J, var"scara₊mass2₊z(t)")
                            var"scara₊toMass2₊frame_a₊phiˍt(t)" = var"scara₊mass2₊phiˍt(t)"
                            var"scara₊mass2₊w(t)" = var"scara₊mass2₊phiˍt(t)"
                            var"scara₊toRev2₊frame_a₊phiˍt(t)" = var"scara₊toMass1₊frame_a₊phiˍt(t)"
                            var"scara₊toMass2₊frame_a₊phi(t)" = var"scara₊mass2₊phi(t)"
                            var"scara₊mass2₊frame_a₊phi(t)" = var"scara₊mass2₊phi(t)"
                            var"scara₊toRev2₊frame_a₊phi(t)" = var"scara₊toMass1₊frame_a₊phi(t)"
                            var"var\"scara₊toMass1₊R(t)ˍtˍt\"[1, 2]" = (+)((*)((*)(-1, (cos)(var"scara₊toMass1₊frame_a₊phi(t)")), var"scara₊toMass1₊frame_a₊phiˍtt(t)"), (*)((^)(var"scara₊toMass1₊frame_a₊phiˍt(t)", 2), (sin)(var"scara₊toMass1₊frame_a₊phi(t)")))
                            var"var\"scara₊toMass1₊R(t)ˍtˍt\"[1, 1]" = (+)((*)((*)(-1, var"scara₊toMass1₊frame_a₊phiˍtt(t)"), (sin)(var"scara₊toMass1₊frame_a₊phi(t)")), (*)((*)(-1, (cos)(var"scara₊toMass1₊frame_a₊phi(t)")), (^)(var"scara₊toMass1₊frame_a₊phiˍt(t)", 2)))
                            var"var\"scara₊toMass1₊R(t)ˍtˍt\"[2, 2]" = (+)((*)((*)(-1, var"scara₊toMass1₊frame_a₊phiˍtt(t)"), (sin)(var"scara₊toMass1₊frame_a₊phi(t)")), (*)((*)(-1, (cos)(var"scara₊toMass1₊frame_a₊phi(t)")), (^)(var"scara₊toMass1₊frame_a₊phiˍt(t)", 2)))
                            var"var\"scara₊toMass1₊R(t)ˍtˍt\"[2, 1]" = (+)((*)((cos)(var"scara₊toMass1₊frame_a₊phi(t)"), var"scara₊toMass1₊frame_a₊phiˍtt(t)"), (*)((*)(-1, (^)(var"scara₊toMass1₊frame_a₊phiˍt(t)", 2)), (sin)(var"scara₊toMass1₊frame_a₊phi(t)")))
                            var"(scara₊toMass1₊R(t))[1, 1]" = (cos)(var"scara₊toMass1₊frame_a₊phi(t)")
                            var"(scara₊toMass1₊R(t))[2, 1]" = (sin)(var"scara₊toMass1₊frame_a₊phi(t)")
                            var"(scara₊toMass1₊R(t))[1, 2]" = (*)(-1, (sin)(var"scara₊toMass1₊frame_a₊phi(t)"))
                            var"(scara₊toMass1₊R(t))[2, 2]" = (cos)(var"scara₊toMass1₊frame_a₊phi(t)")
                            var"scara₊toMass1₊frame_b₊phi(t)" = var"scara₊toMass1₊frame_a₊phi(t)"
                            var"var\"scara₊toMass1₊R(t)ˍt\"[1, 2]" = (*)((*)(-1, (cos)(var"scara₊toMass1₊frame_a₊phi(t)")), var"scara₊toMass1₊frame_a₊phiˍt(t)")
                            var"var\"scara₊toMass1₊R(t)ˍt\"[1, 1]" = (*)((*)(-1, var"scara₊toMass1₊frame_a₊phiˍt(t)"), (sin)(var"scara₊toMass1₊frame_a₊phi(t)"))
                            var"var\"scara₊toMass1₊R(t)ˍt\"[2, 2]" = (*)((*)(-1, var"scara₊toMass1₊frame_a₊phiˍt(t)"), (sin)(var"scara₊toMass1₊frame_a₊phi(t)"))
                            var"var\"scara₊toMass1₊R(t)ˍt\"[2, 1]" = (*)((cos)(var"scara₊toMass1₊frame_a₊phi(t)"), var"scara₊toMass1₊frame_a₊phiˍt(t)")
                            var"gain1₊y(t)" = (*)(gain1₊k, var"gain1₊u(t)")
                            var"gain1₊input₊u(t)" = var"gain1₊u(t)"
                            var"feedback1₊output₊u(t)" = var"gain1₊u(t)"
                            var"motor2₊signalVoltage₊V₊u(t)" = var"gain2₊y(t)"
                            var"motor2₊inductor₊p₊v(t)" = (+)(var"gain2₊y(t)", (*)(-1, var"motor2₊resistor₊v(t)"))
                            var"gain2₊output₊u(t)" = var"gain2₊y(t)"
                            var"motor2₊vSignal₊u(t)" = var"gain2₊y(t)"
                            var"motor2₊resistor₊p₊v(t)" = var"gain2₊y(t)"
                            var"motor1₊signalVoltage₊p₊i(t)" = (*)(-1, var"motor1₊signalVoltage₊n₊i(t)")
                            var"motor1₊emf₊w(t)" = var"motor1₊emf₊phiˍt(t)"
                            var"motor1₊inertia₊flange_a₊tau(t)" = (+)((*)(-1, var"motor1₊emf₊flange₊tau(t)"), (*)(-1, var"motor1₊viscousFriction₊flange₊tau(t)"))
                            var"motor1₊emf₊flange₊phi(t)" = var"motor1₊inertia₊flange_a₊phi(t)"
                            var"motor1₊inertia₊wˍt(t)" = var"motor1₊inertia₊phiˍtt(t)"
                            var"motor2₊emf₊w(t)" = var"motor2₊emf₊phiˍt(t)"
                            var"motor2₊inertia₊flange_a₊tau(t)" = (+)((*)(-1, var"motor2₊emf₊flange₊tau(t)"), (*)(-1, var"motor2₊viscousFriction₊flange₊tau(t)"))
                            var"motor2₊emf₊flange₊phi(t)" = var"motor2₊emf₊phi(t)"
                            var"motor2₊inertia₊flange_a₊phi(t)" = var"motor2₊emf₊phi(t)"
                            var"scara₊toMass2₊frame_b₊tau(t)" = (*)(-1, var"scara₊mass2₊frame_a₊tau(t)")
                            var"scara₊toTCP₊frame_a₊phiˍt(t)" = var"scara₊toMass2₊frame_a₊phiˍt(t)"
                            var"var\"scara₊toMass2₊R(t)ˍtˍt\"[1, 2]" = (+)((*)((*)(-1, var"scara₊toMass2₊frame_a₊phiˍtt(t)"), (cos)(var"scara₊toMass2₊frame_a₊phi(t)")), (*)((sin)(var"scara₊toMass2₊frame_a₊phi(t)"), (^)(var"scara₊toMass2₊frame_a₊phiˍt(t)", 2)))
                            var"var\"scara₊toMass2₊R(t)ˍtˍt\"[1, 1]" = (+)((*)((*)(-1, (sin)(var"scara₊toMass2₊frame_a₊phi(t)")), var"scara₊toMass2₊frame_a₊phiˍtt(t)"), (*)((*)(-1, (^)(var"scara₊toMass2₊frame_a₊phiˍt(t)", 2)), (cos)(var"scara₊toMass2₊frame_a₊phi(t)")))
                            var"(scara₊toMass2₊R(t))[2, 2]" = (cos)(var"scara₊toMass2₊frame_a₊phi(t)")
                            var"(scara₊toMass2₊R(t))[2, 1]" = (sin)(var"scara₊toMass2₊frame_a₊phi(t)")
                            var"(scara₊toMass2₊R(t))[1, 2]" = (*)(-1, (sin)(var"scara₊toMass2₊frame_a₊phi(t)"))
                            var"(scara₊toMass2₊R(t))[1, 1]" = (cos)(var"scara₊toMass2₊frame_a₊phi(t)")
                            var"scara₊toTCP₊frame_a₊phi(t)" = var"scara₊toMass2₊frame_a₊phi(t)"
                            var"var\"scara₊toMass2₊R(t)ˍt\"[1, 2]" = (*)((*)(-1, var"scara₊toMass2₊frame_a₊phiˍt(t)"), (cos)(var"scara₊toMass2₊frame_a₊phi(t)"))
                            var"var\"scara₊toMass2₊R(t)ˍt\"[1, 1]" = (*)((*)(-1, (sin)(var"scara₊toMass2₊frame_a₊phi(t)")), var"scara₊toMass2₊frame_a₊phiˍt(t)")
                            var"scara₊toMass2₊frame_b₊phi(t)" = var"scara₊toMass2₊frame_a₊phi(t)"
                            var"var\"scara₊toMass2₊R(t)ˍt\"[2, 2]" = (*)((*)(-1, (sin)(var"scara₊toMass2₊frame_a₊phi(t)")), var"scara₊toMass2₊frame_a₊phiˍt(t)")
                            var"var\"scara₊toMass2₊R(t)ˍt\"[2, 1]" = (*)(var"scara₊toMass2₊frame_a₊phiˍt(t)", (cos)(var"scara₊toMass2₊frame_a₊phi(t)"))
                            var"var\"scara₊toMass2₊R(t)ˍtˍt\"[2, 1]" = (+)((*)(var"scara₊toMass2₊frame_a₊phiˍtt(t)", (cos)(var"scara₊toMass2₊frame_a₊phi(t)")), (*)((*)(-1, (sin)(var"scara₊toMass2₊frame_a₊phi(t)")), (^)(var"scara₊toMass2₊frame_a₊phiˍt(t)", 2)))
                            var"var\"scara₊toMass2₊R(t)ˍtˍt\"[2, 2]" = (+)((*)((*)(-1, (sin)(var"scara₊toMass2₊frame_a₊phi(t)")), var"scara₊toMass2₊frame_a₊phiˍtt(t)"), (*)((*)(-1, (^)(var"scara₊toMass2₊frame_a₊phiˍt(t)", 2)), (cos)(var"scara₊toMass2₊frame_a₊phi(t)")))
                            var"var\"scara₊toRev2₊R(t)ˍtˍt\"[1, 2]" = (+)((*)((*)(-1, (cos)(var"scara₊toRev2₊frame_a₊phi(t)")), var"scara₊toRev2₊frame_a₊phiˍtt(t)"), (*)((^)(var"scara₊toRev2₊frame_a₊phiˍt(t)", 2), (sin)(var"scara₊toRev2₊frame_a₊phi(t)")))
                            var"var\"scara₊toRev2₊R(t)ˍtˍt\"[1, 1]" = (+)((*)((*)(-1, var"scara₊toRev2₊frame_a₊phiˍtt(t)"), (sin)(var"scara₊toRev2₊frame_a₊phi(t)")), (*)((*)(-1, (cos)(var"scara₊toRev2₊frame_a₊phi(t)")), (^)(var"scara₊toRev2₊frame_a₊phiˍt(t)", 2)))
                            var"var\"scara₊toRev2₊R(t)ˍt\"[2, 2]" = (*)((*)(-1, var"scara₊toRev2₊frame_a₊phiˍt(t)"), (sin)(var"scara₊toRev2₊frame_a₊phi(t)"))
                            var"var\"scara₊toRev2₊R(t)ˍt\"[2, 1]" = (*)((cos)(var"scara₊toRev2₊frame_a₊phi(t)"), var"scara₊toRev2₊frame_a₊phiˍt(t)")
                            var"var\"scara₊toRev2₊R(t)ˍt\"[1, 2]" = (*)((*)(-1, (cos)(var"scara₊toRev2₊frame_a₊phi(t)")), var"scara₊toRev2₊frame_a₊phiˍt(t)")
                            var"var\"scara₊toRev2₊R(t)ˍt\"[1, 1]" = (*)((*)(-1, var"scara₊toRev2₊frame_a₊phiˍt(t)"), (sin)(var"scara₊toRev2₊frame_a₊phi(t)"))
                            var"var\"scara₊toRev2₊R(t)ˍtˍt\"[2, 2]" = (+)((*)((*)(-1, var"scara₊toRev2₊frame_a₊phiˍtt(t)"), (sin)(var"scara₊toRev2₊frame_a₊phi(t)")), (*)((*)(-1, (cos)(var"scara₊toRev2₊frame_a₊phi(t)")), (^)(var"scara₊toRev2₊frame_a₊phiˍt(t)", 2)))
                            var"var\"scara₊toRev2₊R(t)ˍtˍt\"[2, 1]" = (+)((*)((cos)(var"scara₊toRev2₊frame_a₊phi(t)"), var"scara₊toRev2₊frame_a₊phiˍtt(t)"), (*)((*)(-1, (^)(var"scara₊toRev2₊frame_a₊phiˍt(t)", 2)), (sin)(var"scara₊toRev2₊frame_a₊phi(t)")))
                            var"(scara₊toRev2₊R(t))[1, 1]" = (cos)(var"scara₊toRev2₊frame_a₊phi(t)")
                            var"(scara₊toRev2₊R(t))[2, 1]" = (sin)(var"scara₊toRev2₊frame_a₊phi(t)")
                            var"(scara₊toRev2₊R(t))[1, 2]" = (*)(-1, (sin)(var"scara₊toRev2₊frame_a₊phi(t)"))
                            var"(scara₊toRev2₊R(t))[2, 2]" = (cos)(var"scara₊toRev2₊frame_a₊phi(t)")
                            var"scara₊toRev2₊frame_b₊phi(t)" = var"scara₊toRev2₊frame_a₊phi(t)"
                            var"scara₊rev1₊frame_b₊phi(t)" = var"scara₊toRev2₊frame_a₊phi(t)"
                            var"var\"scara₊toMass1₊r0(t)ˍtˍt\"[1]" = (+)((*)(var"var\"scara₊toMass1₊R(t)ˍtˍt\"[1, 1]", var"scara₊toMass1₊r[1]"), (*)(var"var\"scara₊toMass1₊R(t)ˍtˍt\"[1, 2]", var"scara₊toMass1₊r[2]"))
                            var"var\"scara₊toMass1₊r0(t)ˍtˍt\"[2]" = (+)((*)(var"var\"scara₊toMass1₊R(t)ˍtˍt\"[2, 1]", var"scara₊toMass1₊r[1]"), (*)(var"var\"scara₊toMass1₊R(t)ˍtˍt\"[2, 2]", var"scara₊toMass1₊r[2]"))
                            var"(scara₊toMass1₊r0(t))[1]" = (+)((*)(var"(scara₊toMass1₊R(t))[1, 1]", var"scara₊toMass1₊r[1]"), (*)(var"(scara₊toMass1₊R(t))[1, 2]", var"scara₊toMass1₊r[2]"))
                            var"(scara₊toMass1₊r0(t))[2]" = (+)((*)(var"(scara₊toMass1₊R(t))[2, 1]", var"scara₊toMass1₊r[1]"), (*)(var"(scara₊toMass1₊R(t))[2, 2]", var"scara₊toMass1₊r[2]"))
                            var"var\"scara₊toMass1₊r0(t)ˍt\"[1]" = (+)((*)(var"var\"scara₊toMass1₊R(t)ˍt\"[1, 1]", var"scara₊toMass1₊r[1]"), (*)(var"var\"scara₊toMass1₊R(t)ˍt\"[1, 2]", var"scara₊toMass1₊r[2]"))
                            var"var\"scara₊toMass1₊r0(t)ˍt\"[2]" = (+)((*)(var"var\"scara₊toMass1₊R(t)ˍt\"[2, 1]", var"scara₊toMass1₊r[1]"), (*)(var"var\"scara₊toMass1₊R(t)ˍt\"[2, 2]", var"scara₊toMass1₊r[2]"))
                            var"motor1₊resistor₊p₊v(t)" = var"gain1₊y(t)"
                            var"motor1₊inductor₊p₊v(t)" = (+)(var"gain1₊y(t)", (*)(-1, var"motor1₊resistor₊v(t)"))
                            var"gain1₊output₊u(t)" = var"gain1₊y(t)"
                            var"motor1₊vSignal₊u(t)" = var"gain1₊y(t)"
                            var"motor1₊signalVoltage₊V₊u(t)" = var"gain1₊y(t)"
                            var"motor2₊signalVoltage₊v(t)" = var"motor2₊signalVoltage₊V₊u(t)"
                            var"motor2₊resistor₊n₊v(t)" = var"motor2₊inductor₊p₊v(t)"
                            var"motor1₊emf₊v(t)" = (*)(motor1₊emf₊k, var"motor1₊emf₊w(t)")
                            var"motor1₊inertia₊a(t)" = var"motor1₊inertia₊wˍt(t)"
                            var"motor2₊emf₊v(t)" = (*)(motor2₊emf₊k, var"motor2₊emf₊w(t)")
                            var"var\"scara₊toMass2₊r0(t)ˍtˍt\"[1]" = (+)((*)(var"var\"scara₊toMass2₊R(t)ˍtˍt\"[1, 1]", var"scara₊toMass2₊r[1]"), (*)(var"var\"scara₊toMass2₊R(t)ˍtˍt\"[1, 2]", var"scara₊toMass2₊r[2]"))
                            var"(scara₊toMass2₊r0(t))[2]" = (+)((*)(var"(scara₊toMass2₊R(t))[2, 1]", var"scara₊toMass2₊r[1]"), (*)(var"(scara₊toMass2₊R(t))[2, 2]", var"scara₊toMass2₊r[2]"))
                            var"(scara₊toMass2₊r0(t))[1]" = (+)((*)(var"(scara₊toMass2₊R(t))[1, 1]", var"scara₊toMass2₊r[1]"), (*)(var"(scara₊toMass2₊R(t))[1, 2]", var"scara₊toMass2₊r[2]"))
                            var"var\"scara₊toTCP₊R(t)ˍt\"[2, 2]" = (*)((*)(-1, var"scara₊toTCP₊frame_a₊phiˍt(t)"), (sin)(var"scara₊toTCP₊frame_a₊phi(t)"))
                            var"var\"scara₊toTCP₊R(t)ˍt\"[2, 1]" = (*)(var"scara₊toTCP₊frame_a₊phiˍt(t)", (cos)(var"scara₊toTCP₊frame_a₊phi(t)"))
                            var"var\"scara₊toTCP₊R(t)ˍt\"[1, 2]" = (*)((*)(-1, var"scara₊toTCP₊frame_a₊phiˍt(t)"), (cos)(var"scara₊toTCP₊frame_a₊phi(t)"))
                            var"var\"scara₊toTCP₊R(t)ˍt\"[1, 1]" = (*)((*)(-1, var"scara₊toTCP₊frame_a₊phiˍt(t)"), (sin)(var"scara₊toTCP₊frame_a₊phi(t)"))
                            var"(scara₊toTCP₊R(t))[2, 2]" = (cos)(var"scara₊toTCP₊frame_a₊phi(t)")
                            var"(scara₊toTCP₊R(t))[2, 1]" = (sin)(var"scara₊toTCP₊frame_a₊phi(t)")
                            var"(scara₊toTCP₊R(t))[1, 2]" = (*)(-1, (sin)(var"scara₊toTCP₊frame_a₊phi(t)"))
                            var"(scara₊toTCP₊R(t))[1, 1]" = (cos)(var"scara₊toTCP₊frame_a₊phi(t)")
                            var"var\"scara₊toTCP₊R(t)ˍtˍt\"[2, 2]" = (+)((*)((*)(-1, (sin)(var"scara₊toTCP₊frame_a₊phi(t)")), var"scara₊toTCP₊frame_a₊phiˍtt(t)"), (*)((*)(-1, (^)(var"scara₊toTCP₊frame_a₊phiˍt(t)", 2)), (cos)(var"scara₊toTCP₊frame_a₊phi(t)")))
                            var"var\"scara₊toTCP₊R(t)ˍtˍt\"[2, 1]" = (+)((*)(var"scara₊toTCP₊frame_a₊phiˍtt(t)", (cos)(var"scara₊toTCP₊frame_a₊phi(t)")), (*)((*)(-1, (^)(var"scara₊toTCP₊frame_a₊phiˍt(t)", 2)), (sin)(var"scara₊toTCP₊frame_a₊phi(t)")))
                            var"scara₊toTCP₊frame_b₊phi(t)" = var"scara₊toTCP₊frame_a₊phi(t)"
                            var"scara₊rev2₊frame_b₊phi(t)" = var"scara₊toTCP₊frame_a₊phi(t)"
                            var"scara₊tcp₊frame_a₊phi(t)" = var"scara₊toTCP₊frame_a₊phi(t)"
                            var"var\"scara₊toMass2₊r0(t)ˍt\"[1]" = (+)((*)(var"var\"scara₊toMass2₊R(t)ˍt\"[1, 1]", var"scara₊toMass2₊r[1]"), (*)(var"var\"scara₊toMass2₊R(t)ˍt\"[1, 2]", var"scara₊toMass2₊r[2]"))
                            var"var\"scara₊toMass2₊r0(t)ˍt\"[2]" = (+)((*)(var"var\"scara₊toMass2₊R(t)ˍt\"[2, 1]", var"scara₊toMass2₊r[1]"), (*)(var"var\"scara₊toMass2₊R(t)ˍt\"[2, 2]", var"scara₊toMass2₊r[2]"))
                            var"var\"scara₊toMass2₊r0(t)ˍtˍt\"[2]" = (+)((*)(var"var\"scara₊toMass2₊R(t)ˍtˍt\"[2, 1]", var"scara₊toMass2₊r[1]"), (*)(var"var\"scara₊toMass2₊R(t)ˍtˍt\"[2, 2]", var"scara₊toMass2₊r[2]"))
                            var"var\"scara₊toRev2₊r0(t)ˍtˍt\"[1]" = (+)((*)(var"var\"scara₊toRev2₊R(t)ˍtˍt\"[1, 1]", var"scara₊toRev2₊r[1]"), (*)(var"var\"scara₊toRev2₊R(t)ˍtˍt\"[1, 2]", var"scara₊toRev2₊r[2]"))
                            var"var\"scara₊toRev2₊r0(t)ˍt\"[2]" = (+)((*)(var"var\"scara₊toRev2₊R(t)ˍt\"[2, 1]", var"scara₊toRev2₊r[1]"), (*)(var"var\"scara₊toRev2₊R(t)ˍt\"[2, 2]", var"scara₊toRev2₊r[2]"))
                            var"var\"scara₊toRev2₊r0(t)ˍt\"[1]" = (+)((*)(var"var\"scara₊toRev2₊R(t)ˍt\"[1, 1]", var"scara₊toRev2₊r[1]"), (*)(var"var\"scara₊toRev2₊R(t)ˍt\"[1, 2]", var"scara₊toRev2₊r[2]"))
                            var"var\"scara₊toRev2₊r0(t)ˍtˍt\"[2]" = (+)((*)(var"var\"scara₊toRev2₊R(t)ˍtˍt\"[2, 1]", var"scara₊toRev2₊r[1]"), (*)(var"var\"scara₊toRev2₊R(t)ˍtˍt\"[2, 2]", var"scara₊toRev2₊r[2]"))
                            var"(scara₊toRev2₊r0(t))[1]" = (+)((*)(var"(scara₊toRev2₊R(t))[1, 1]", var"scara₊toRev2₊r[1]"), (*)(var"(scara₊toRev2₊R(t))[1, 2]", var"scara₊toRev2₊r[2]"))
                            var"(scara₊toRev2₊r0(t))[2]" = (+)((*)(var"(scara₊toRev2₊R(t))[2, 1]", var"scara₊toRev2₊r[1]"), (*)(var"(scara₊toRev2₊R(t))[2, 2]", var"scara₊toRev2₊r[2]"))
                            var"motor1₊signalVoltage₊v(t)" = var"motor1₊resistor₊p₊v(t)"
                            var"motor1₊resistor₊n₊v(t)" = var"motor1₊inductor₊p₊v(t)"
                            var"motor2₊signalVoltage₊p₊v(t)" = var"motor2₊signalVoltage₊v(t)"
                            var"motor1₊inductor₊v(t)" = (+)((+)(var"gain1₊y(t)", (*)(-1, var"motor1₊resistor₊v(t)")), (*)(-1, var"motor1₊emf₊v(t)"))
                            var"motor1₊emf₊p₊v(t)" = var"motor1₊emf₊v(t)"
                            var"motor1₊inertia₊flange_b₊tau(t)" = (+)((*)(-1, var"motor1₊inertia₊flange_a₊tau(t)"), (*)(motor1₊inertia₊J, var"motor1₊inertia₊a(t)"))
                            var"motor2₊inductor₊v(t)" = (+)((+)(var"gain2₊y(t)", (*)(-1, var"motor2₊emf₊v(t)")), (*)(-1, var"motor2₊resistor₊v(t)"))
                            var"motor2₊emf₊p₊v(t)" = var"motor2₊emf₊v(t)"
                            var"motor2₊inductor₊n₊v(t)" = var"motor2₊emf₊v(t)"
                            var"var\"scara₊toTCP₊r0(t)ˍt\"[2]" = (+)((*)(var"var\"scara₊toTCP₊R(t)ˍt\"[2, 1]", var"scara₊toTCP₊r[1]"), (*)(var"var\"scara₊toTCP₊R(t)ˍt\"[2, 2]", var"scara₊toTCP₊r[2]"))
                            var"var\"scara₊toTCP₊r0(t)ˍt\"[1]" = (+)((*)(var"var\"scara₊toTCP₊R(t)ˍt\"[1, 1]", var"scara₊toTCP₊r[1]"), (*)(var"var\"scara₊toTCP₊R(t)ˍt\"[1, 2]", var"scara₊toTCP₊r[2]"))
                            var"(scara₊toTCP₊r0(t))[2]" = (+)((*)(var"(scara₊toTCP₊R(t))[2, 1]", var"scara₊toTCP₊r[1]"), (*)(var"(scara₊toTCP₊R(t))[2, 2]", var"scara₊toTCP₊r[2]"))
                            var"(scara₊toTCP₊r0(t))[1]" = (+)((*)(var"(scara₊toTCP₊R(t))[1, 1]", var"scara₊toTCP₊r[1]"), (*)(var"(scara₊toTCP₊R(t))[1, 2]", var"scara₊toTCP₊r[2]"))
                            var"var\"scara₊toTCP₊r0(t)ˍtˍt\"[2]" = (+)((*)(var"var\"scara₊toTCP₊R(t)ˍtˍt\"[2, 1]", var"scara₊toTCP₊r[1]"), (*)(var"var\"scara₊toTCP₊R(t)ˍtˍt\"[2, 2]", var"scara₊toTCP₊r[2]"))
                            var"var\"scara₊mass2₊r(t)ˍtt\"[1]" = (+)((+)(var"var\"scara₊toMass2₊r0(t)ˍtˍt\"[1]", var"var\"scara₊toRev2₊r0(t)ˍtˍt\"[1]"), var"scara₊fixed₊frame_a₊xˍtt(t)")
                            var"var\"scara₊mass2₊r(t)ˍt\"[1]" = (+)((+)(var"var\"scara₊toMass2₊r0(t)ˍt\"[1]", var"var\"scara₊toRev2₊r0(t)ˍt\"[1]"), var"scara₊fixed₊frame_a₊xˍt(t)")
                            var"(scara₊mass2₊r(t))[1]" = (+)((+)(var"(scara₊toMass2₊r0(t))[1]", var"(scara₊toRev2₊r0(t))[1]"), var"scara₊fixed₊frame_a₊x(t)")
                            var"motor1₊signalVoltage₊p₊v(t)" = var"motor1₊signalVoltage₊v(t)"
                            var"motor1₊inductor₊n₊v(t)" = var"motor1₊emf₊p₊v(t)"
                            var"gear1₊flange_a₊tau(t)" = (*)(-1, var"motor1₊inertia₊flange_b₊tau(t)")
                            var"scara₊tcp₊yˍt(t)" = (+)((+)(var"var\"scara₊toRev2₊r0(t)ˍt\"[2]", var"var\"scara₊toTCP₊r0(t)ˍt\"[2]"), var"scara₊fixed₊frame_a₊yˍt(t)")
                            var"scara₊tcp₊y(t)" = (+)((+)(var"(scara₊toRev2₊r0(t))[2]", var"(scara₊toTCP₊r0(t))[2]"), var"scara₊fixed₊frame_a₊y(t)")
                            var"scara₊tcp₊yˍtt(t)" = (+)((+)(var"var\"scara₊toRev2₊r0(t)ˍtˍt\"[2]", var"var\"scara₊toTCP₊r0(t)ˍtˍt\"[2]"), var"scara₊fixed₊frame_a₊yˍtt(t)")
                            var"var\"scara₊mass2₊v(t)ˍt\"[1]" = var"var\"scara₊mass2₊r(t)ˍtt\"[1]"
                            var"var\"scara₊mass1₊r(t)ˍtt\"[1]" = (+)((+)((+)(var"var\"scara₊mass2₊r(t)ˍtt\"[1]", var"var\"scara₊toMass1₊r0(t)ˍtˍt\"[1]"), (*)(-1, var"var\"scara₊toMass2₊r0(t)ˍtˍt\"[1]")), (*)(-1, var"var\"scara₊toRev2₊r0(t)ˍtˍt\"[1]"))
                            var"scara₊tcp₊xˍt(t)" = (+)((+)(var"var\"scara₊mass2₊r(t)ˍt\"[1]", (*)(-1, var"var\"scara₊toMass2₊r0(t)ˍt\"[1]")), var"var\"scara₊toTCP₊r0(t)ˍt\"[1]")
                            var"var\"scara₊mass1₊r(t)ˍt\"[1]" = (+)((+)((+)(var"var\"scara₊mass2₊r(t)ˍt\"[1]", var"var\"scara₊toMass1₊r0(t)ˍt\"[1]"), (*)(-1, var"var\"scara₊toMass2₊r0(t)ˍt\"[1]")), (*)(-1, var"var\"scara₊toRev2₊r0(t)ˍt\"[1]"))
                            var"(scara₊mass2₊v(t))[1]" = var"var\"scara₊mass2₊r(t)ˍt\"[1]"
                            var"(scara₊mass1₊r(t))[1]" = (+)((+)((+)(var"(scara₊mass2₊r(t))[1]", var"(scara₊toMass1₊r0(t))[1]"), (*)(-1, var"(scara₊toMass2₊r0(t))[1]")), (*)(-1, var"(scara₊toRev2₊r0(t))[1]"))
                            var"scara₊tcp₊x(t)" = (+)((+)(var"(scara₊mass2₊r(t))[1]", (*)(-1, var"(scara₊toMass2₊r0(t))[1]")), var"(scara₊toTCP₊r0(t))[1]")
                            var"scara₊mass2₊frame_a₊x(t)" = var"(scara₊mass2₊r(t))[1]"
                            var"gear1₊flange_b₊tau(t)" = (*)((*)(-1, gear1₊ratio), var"gear1₊flange_a₊tau(t)")
                            var"motor1₊flange_a₊tau(t)" = (*)(-1, var"gear1₊flange_a₊tau(t)")
                            var"scara₊tcp₊vy(t)" = var"scara₊tcp₊yˍt(t)"
                            var"var\"scara₊mass1₊r(t)ˍt\"[2]" = (+)((+)((+)(var"var\"scara₊toMass1₊r0(t)ˍt\"[2]", (*)(-1, var"var\"scara₊toRev2₊r0(t)ˍt\"[2]")), (*)(-1, var"var\"scara₊toTCP₊r0(t)ˍt\"[2]")), var"scara₊tcp₊yˍt(t)")
                            var"var\"scara₊mass2₊r(t)ˍt\"[2]" = (+)((+)(var"var\"scara₊toMass2₊r0(t)ˍt\"[2]", (*)(-1, var"var\"scara₊toTCP₊r0(t)ˍt\"[2]")), var"scara₊tcp₊yˍt(t)")
                            var"(scara₊mass1₊r(t))[2]" = (+)((+)((+)(var"(scara₊toMass1₊r0(t))[2]", (*)(-1, var"(scara₊toRev2₊r0(t))[2]")), (*)(-1, var"(scara₊toTCP₊r0(t))[2]")), var"scara₊tcp₊y(t)")
                            var"scara₊tcp₊frame_a₊y(t)" = var"scara₊tcp₊y(t)"
                            var"(scara₊mass2₊r(t))[2]" = (+)((+)(var"(scara₊toMass2₊r0(t))[2]", (*)(-1, var"(scara₊toTCP₊r0(t))[2]")), var"scara₊tcp₊y(t)")
                            var"var\"scara₊mass1₊r(t)ˍtt\"[2]" = (+)((+)((+)(var"var\"scara₊toMass1₊r0(t)ˍtˍt\"[2]", (*)(-1, var"var\"scara₊toRev2₊r0(t)ˍtˍt\"[2]")), (*)(-1, var"var\"scara₊toTCP₊r0(t)ˍtˍt\"[2]")), var"scara₊tcp₊yˍtt(t)")
                            var"(scara₊mass2₊a(t))[1]" = var"var\"scara₊mass2₊v(t)ˍt\"[1]"
                            var"var\"scara₊mass1₊v(t)ˍt\"[1]" = var"var\"scara₊mass1₊r(t)ˍtt\"[1]"
                            var"scara₊tcp₊vx(t)" = var"scara₊tcp₊xˍt(t)"
                            var"(scara₊mass1₊v(t))[1]" = var"var\"scara₊mass1₊r(t)ˍt\"[1]"
                            var"scara₊mass1₊frame_a₊x(t)" = var"(scara₊mass1₊r(t))[1]"
                            var"scara₊tcp₊frame_a₊x(t)" = var"scara₊tcp₊x(t)"
                            var"scara₊toMass2₊frame_b₊x(t)" = var"scara₊mass2₊frame_a₊x(t)"
                            var"scara₊fixed₊frame_a₊tau(t)" = var"gear1₊flange_b₊tau(t)"
                            var"scara₊flange1₊tau(t)" = (*)(-1, var"gear1₊flange_b₊tau(t)")
                            var"(scara₊mass1₊v(t))[2]" = var"var\"scara₊mass1₊r(t)ˍt\"[2]"
                            var"(scara₊mass2₊v(t))[2]" = var"var\"scara₊mass2₊r(t)ˍt\"[2]"
                            var"scara₊mass1₊frame_a₊y(t)" = var"(scara₊mass1₊r(t))[2]"
                            var"scara₊toMass2₊frame_a₊y(t)" = (+)((*)(-1, var"(scara₊toTCP₊r0(t))[2]"), var"scara₊tcp₊frame_a₊y(t)")
                            var"scara₊tcp₊posYOut₊u(t)" = var"scara₊tcp₊frame_a₊y(t)"
                            var"scara₊toTCP₊frame_b₊y(t)" = var"scara₊tcp₊frame_a₊y(t)"
                            var"scara₊posYOut₊u(t)" = var"scara₊tcp₊frame_a₊y(t)"
                            var"scara₊mass2₊frame_a₊y(t)" = var"(scara₊mass2₊r(t))[2]"
                            var"var\"scara₊mass1₊v(t)ˍt\"[2]" = var"var\"scara₊mass1₊r(t)ˍtt\"[2]"
                            var"(scara₊mass2₊f(t))[1]" = (+)((*)(var"(scara₊mass2₊a(t))[1]", scara₊mass2₊m), (*)((*)(-1, var"scara₊mass2₊g[1]"), scara₊mass2₊m))
                            var"(scara₊mass1₊a(t))[1]" = var"var\"scara₊mass1₊v(t)ˍt\"[1]"
                            var"scara₊tcp₊v_abs(t)" = (NaNMath.sqrt)((+)((^)(var"scara₊tcp₊vx(t)", 2), (^)(var"scara₊tcp₊vy(t)", 2)))
                            var"scara₊toMass1₊frame_b₊x(t)" = var"scara₊mass1₊frame_a₊x(t)"
                            var"scara₊toMass2₊frame_a₊x(t)" = (+)((*)(-1, var"(scara₊toTCP₊r0(t))[1]"), var"scara₊tcp₊frame_a₊x(t)")
                            var"scara₊tcp₊posXOut₊u(t)" = var"scara₊tcp₊frame_a₊x(t)"
                            var"scara₊toTCP₊frame_b₊x(t)" = var"scara₊tcp₊frame_a₊x(t)"
                            var"scara₊posXOut₊u(t)" = var"scara₊tcp₊frame_a₊x(t)"
                            var"scara₊rev1₊frame_b₊tau(t)" = var"scara₊fixed₊frame_a₊tau(t)"
                            var"scara₊toMass1₊frame_b₊y(t)" = var"scara₊mass1₊frame_a₊y(t)"
                            var"scara₊toTCP₊frame_a₊y(t)" = var"scara₊toMass2₊frame_a₊y(t)"
                            var"scara₊toMass2₊frame_b₊y(t)" = var"scara₊mass2₊frame_a₊y(t)"
                            var"(scara₊mass1₊a(t))[2]" = var"var\"scara₊mass1₊v(t)ˍt\"[2]"
                            var"scara₊toMass2₊frame_b₊fx(t)" = (*)(-1, var"(scara₊mass2₊f(t))[1]")
                            var"scara₊mass2₊frame_a₊fx(t)" = var"(scara₊mass2₊f(t))[1]"
                            var"(scara₊mass1₊f(t))[1]" = (+)((*)(var"(scara₊mass1₊a(t))[1]", scara₊mass1₊m), (*)((*)(-1, var"scara₊mass1₊g[1]"), scara₊mass1₊m))
                            var"scara₊tcp₊Fv(t)" = (*)(scara₊tcp₊viscousFrictionFactor, var"scara₊tcp₊v_abs(t)")
                            var"scara₊toTCP₊frame_a₊x(t)" = var"scara₊toMass2₊frame_a₊x(t)"
                            var"scara₊rev1₊frame_a₊tau(t)" = (*)(-1, var"scara₊rev1₊frame_b₊tau(t)")
                            var"scara₊rev2₊frame_b₊y(t)" = var"scara₊toTCP₊frame_a₊y(t)"
                            var"(scara₊mass1₊f(t))[2]" = (+)((*)(var"(scara₊mass1₊a(t))[2]", scara₊mass1₊m), (*)((*)(-1, var"scara₊mass1₊g[2]"), scara₊mass1₊m))
                            var"scara₊toMass2₊frame_a₊tau(t)" = (+)((+)((*)(-1, var"scara₊toMass2₊frame_b₊tau(t)"), (*)((*)(-1, var"(scara₊toMass2₊r0(t))[1]"), var"scara₊toMass2₊frame_b₊fy(t)")), (*)(var"(scara₊toMass2₊r0(t))[2]", var"scara₊toMass2₊frame_b₊fx(t)"))
                            var"scara₊toMass2₊frame_a₊fx(t)" = (*)(-1, var"scara₊toMass2₊frame_b₊fx(t)")
                            var"scara₊toMass1₊frame_b₊fx(t)" = (*)(-1, var"(scara₊mass1₊f(t))[1]")
                            var"scara₊mass1₊frame_a₊fx(t)" = var"(scara₊mass1₊f(t))[1]"
                            var"scara₊tcp₊Fstribeck(t)" = (+)((+)(var"scara₊tcp₊Fc(t)", var"scara₊tcp₊Fv(t)"), (*)((exp)((*)(-1, (^)((/)(var"scara₊tcp₊v_abs(t)", scara₊tcp₊vSlide), scara₊tcp₊delta))), (+)(var"scara₊tcp₊Fs(t)", (*)(-1, var"scara₊tcp₊Fc(t)"))))
                            var"scara₊rev2₊frame_b₊x(t)" = var"scara₊toTCP₊frame_a₊x(t)"
                            var"scara₊rev1₊flange_a₊tau(t)" = var"scara₊rev1₊frame_a₊tau(t)"
                            var"scara₊rev2₊frame_a₊y(t)" = var"scara₊rev2₊frame_b₊y(t)"
                            var"scara₊toRev2₊frame_b₊y(t)" = var"scara₊rev2₊frame_b₊y(t)"
                            var"scara₊toMass1₊frame_b₊fy(t)" = (*)(-1, var"(scara₊mass1₊f(t))[2]")
                            var"scara₊mass1₊frame_a₊fy(t)" = var"(scara₊mass1₊f(t))[2]"
                            var"scara₊toMass1₊frame_a₊fx(t)" = (*)(-1, var"scara₊toMass1₊frame_b₊fx(t)")
                            var"scara₊tcp₊f_abs(t)" = var"scara₊tcp₊Fstribeck(t)"
                            var"scara₊rev2₊frame_a₊x(t)" = var"scara₊rev2₊frame_b₊x(t)"
                            var"scara₊toRev2₊frame_b₊x(t)" = var"scara₊rev2₊frame_b₊x(t)"
                            var"scara₊rev1₊tau(t)" = var"scara₊rev1₊flange_a₊tau(t)"
                            var"scara₊toMass1₊frame_a₊fy(t)" = (*)(-1, var"scara₊toMass1₊frame_b₊fy(t)")
                            var"scara₊tcp₊fy(t)" = if (>)(var"scara₊tcp₊v_abs(t)", scara₊tcp₊eps)
                                    (/)((*)((*)(-1, var"scara₊tcp₊vy(t)"), var"scara₊tcp₊f_abs(t)"), var"scara₊tcp₊v_abs(t)")
                                else
                                    0.0
                                end
                            var"scara₊tcp₊fx(t)" = if (>)(var"scara₊tcp₊v_abs(t)", scara₊tcp₊eps)
                                    (/)((*)((*)(-1, var"scara₊tcp₊vx(t)"), var"scara₊tcp₊f_abs(t)"), var"scara₊tcp₊v_abs(t)")
                                else
                                    0.0
                                end
                            var"scara₊toTCP₊frame_b₊fy(t)" = (*)(-1, var"scara₊tcp₊fy(t)")
                            var"scara₊toRev2₊frame_b₊fy(t)" = (+)((*)(-1, var"(scara₊mass2₊f(t))[2]"), (*)(-1, var"scara₊tcp₊fy(t)"))
                            var"scara₊tcp₊frame_a₊fy(t)" = var"scara₊tcp₊fy(t)"
                            var"scara₊toTCP₊frame_b₊fx(t)" = (*)(-1, var"scara₊tcp₊fx(t)")
                            var"scara₊toRev2₊frame_b₊fx(t)" = (+)((*)(-1, var"(scara₊mass2₊f(t))[1]"), (*)(-1, var"scara₊tcp₊fx(t)"))
                            var"scara₊tcp₊frame_a₊fx(t)" = var"scara₊tcp₊fx(t)"
                            var"scara₊toTCP₊frame_a₊fy(t)" = (*)(-1, var"scara₊toTCP₊frame_b₊fy(t)")
                            var"scara₊fixed₊frame_a₊fy(t)" = (+)(var"scara₊toRev2₊frame_b₊fy(t)", var"scara₊toMass1₊frame_b₊fy(t)")
                            var"scara₊toRev2₊frame_a₊fy(t)" = (*)(-1, var"scara₊toRev2₊frame_b₊fy(t)")
                            var"scara₊rev2₊frame_b₊fy(t)" = var"scara₊toRev2₊frame_b₊fy(t)"
                            var"scara₊toTCP₊frame_a₊tau(t)" = (+)((+)((*)(-1, var"scara₊toTCP₊frame_b₊tau(t)"), (*)((*)(-1, var"(scara₊toTCP₊r0(t))[1]"), var"scara₊toTCP₊frame_b₊fy(t)")), (*)(var"(scara₊toTCP₊r0(t))[2]", var"scara₊toTCP₊frame_b₊fx(t)"))
                            var"scara₊toTCP₊frame_a₊fx(t)" = (*)(-1, var"scara₊toTCP₊frame_b₊fx(t)")
                            var"scara₊fixed₊frame_a₊fx(t)" = (+)(var"scara₊toMass1₊frame_b₊fx(t)", var"scara₊toRev2₊frame_b₊fx(t)")
                            var"scara₊toRev2₊frame_a₊fx(t)" = (*)(-1, var"scara₊toRev2₊frame_b₊fx(t)")
                            var"scara₊rev2₊frame_b₊fx(t)" = var"scara₊toRev2₊frame_b₊fx(t)"
                            var"scara₊rev1₊frame_b₊fy(t)" = var"scara₊fixed₊frame_a₊fy(t)"
                            var"scara₊rev2₊frame_a₊fy(t)" = (*)(-1, var"scara₊rev2₊frame_b₊fy(t)")
                            var"scara₊toRev2₊frame_b₊tau(t)" = (+)((*)(-1, var"scara₊toMass2₊frame_a₊tau(t)"), (*)(-1, var"scara₊toTCP₊frame_a₊tau(t)"))
                            var"scara₊rev1₊frame_a₊fx(t)" = (*)(-1, var"scara₊fixed₊frame_a₊fx(t)")
                            var"scara₊rev2₊frame_a₊fx(t)" = (*)(-1, var"scara₊rev2₊frame_b₊fx(t)")
                            var"scara₊rev1₊frame_a₊fy(t)" = (*)(-1, var"scara₊rev1₊frame_b₊fy(t)")
                            var"gear2₊flange_b₊tau(t)" = var"scara₊toRev2₊frame_b₊tau(t)"
                            var"scara₊toRev2₊frame_a₊tau(t)" = (+)((+)((*)(-1, var"scara₊toRev2₊frame_b₊tau(t)"), (*)((*)(-1, var"(scara₊toRev2₊r0(t))[1]"), var"scara₊toRev2₊frame_b₊fy(t)")), (*)(var"(scara₊toRev2₊r0(t))[2]", var"scara₊toRev2₊frame_b₊fx(t)"))
                            var"scara₊rev2₊frame_b₊tau(t)" = var"scara₊toRev2₊frame_b₊tau(t)"
                            var"scara₊rev1₊frame_b₊fx(t)" = (*)(-1, var"scara₊rev1₊frame_a₊fx(t)")
                            var"gear2₊flange_a₊tau(t)" = (/)(var"gear2₊flange_b₊tau(t)", (*)(-1, gear2₊ratio))
                            var"scara₊flange2₊tau(t)" = (*)(-1, var"gear2₊flange_b₊tau(t)")
                            var"scara₊toMass1₊frame_a₊tau(t)" = (+)((*)(-1, var"scara₊toRev2₊frame_a₊tau(t)"), (*)(-1, var"gear1₊flange_b₊tau(t)"))
                            var"scara₊rev2₊frame_a₊tau(t)" = (*)(-1, var"scara₊rev2₊frame_b₊tau(t)")
                            var"motor2₊inertia₊flange_b₊tau(t)" = (*)(-1, var"gear2₊flange_a₊tau(t)")
                            var"motor2₊flange_a₊tau(t)" = (*)(-1, var"gear2₊flange_a₊tau(t)")
                            var"scara₊toMass1₊frame_b₊tau(t)" = (+)((+)((*)(-1, var"scara₊toMass1₊frame_a₊tau(t)"), (*)((*)(-1, var"(scara₊toMass1₊r0(t))[1]"), var"scara₊toMass1₊frame_b₊fy(t)")), (*)(var"(scara₊toMass1₊r0(t))[2]", var"scara₊toMass1₊frame_b₊fx(t)"))
                            var"scara₊rev2₊tau(t)" = var"scara₊rev2₊frame_a₊tau(t)"
                            var"motor2₊inertia₊a(t)" = (/)((+)(var"motor2₊inertia₊flange_a₊tau(t)", var"motor2₊inertia₊flange_b₊tau(t)"), motor2₊inertia₊J)
                            var"scara₊mass1₊frame_a₊tau(t)" = (*)(-1, var"scara₊toMass1₊frame_b₊tau(t)")
                            var"scara₊rev2₊flange_a₊tau(t)" = var"scara₊rev2₊tau(t)"
                            var"motor2₊inertia₊wˍt(t)" = var"motor2₊inertia₊a(t)"
                            var"motor2₊inertia₊phiˍtt(t)" = var"motor2₊inertia₊wˍt(t)"
                            var"gear2₊phi_aˍtt(t)" = var"motor2₊inertia₊phiˍtt(t)"
                            begin
                                #= C:\Users\hofmaand\.julia\packages\SymbolicUtils\QUEf3\src\code.jl:490 =#
                                (SymbolicUtils.Code.create_array)(Array, nothing, Val{1}(), Val{(410,)}(), var"inp1_traj₊output₊u(t)", var"inp2_traj₊output₊u(t)", var"inp3_traj₊output₊u(t)", var"motor1₊emf₊i(t)", var"gear1₊phi_bˍt(t)", var"gear1₊phi_b(t)", var"motor1₊ground₊g₊v(t)", var"motor1₊currentSensor₊p₊v(t)", var"scara₊fixed₊frame_a₊phiˍtt(t)", var"scara₊mass1₊phiˍtt(t)", var"gear1₊phi_support(t)", var"angleSensor1₊flange₊tau(t)", var"motor2₊resistor₊i(t)", var"gear2₊phi_bˍt(t)", var"motor2₊inductor₊p₊i(t)", var"motor2₊emf₊i(t)", var"gear2₊phi_b(t)", var"motor2₊ground₊g₊v(t)", var"motor2₊currentSensor₊p₊v(t)", var"scara₊toMass2₊frame_a₊phiˍtt(t)", var"scara₊toMass2₊frame_b₊fy(t)", var"scara₊fixed₊frame_a₊phiˍt(t)", var"scara₊fixed₊frame_a₊phi(t)", var"scara₊toRev2₊frame_a₊phiˍtt(t)", var"scara₊fixed₊frame_a₊xˍtt(t)", var"scara₊toTCP₊frame_b₊tau(t)", var"scara₊fixed₊frame_a₊yˍt(t)", var"scara₊fixed₊frame_a₊xˍt(t)", var"gear2₊phi_support(t)", var"angleSensor2₊flange₊tau(t)", var"scara₊fixed₊frame_a₊x(t)", var"scara₊fixed₊frame_a₊y(t)", var"scara₊rev1₊flange_a₊phi(t)", var"scara₊fixed₊frame_a₊yˍtt(t)", var"scara₊rev2₊flange_a₊phi(t)", var"(scara₊mass2₊a(t))[2]", var"scara₊mass2₊frame_a₊fy(t)", var"scara₊tcp₊frame_a₊tau(t)", var"motor1₊emf₊n₊v(t)", var"motor1₊signalVoltage₊n₊v(t)", var"motor1₊currentSensor₊n₊v(t)", var"motor2₊emf₊n₊v(t)", var"motor2₊signalVoltage₊n₊v(t)", var"motor2₊currentSensor₊n₊v(t)", var"inv_kin₊u1(t)", var"inv_kin₊u2(t)", var"scara₊tcp₊zForceIn₊u(t)", var"scara₊zForceIn₊u(t)", var"motor1₊inductor₊p₊i(t)", var"motor1₊resistor₊i(t)", var"motor1₊emf₊p₊i(t)", var"motor1₊emf₊flange₊tau(t)", var"motor1₊currentSensor₊n₊i(t)", var"gear1₊phi_aˍt(t)", var"gear1₊phi_a(t)", var"gear1₊flange_b₊phi(t)", var"angleSensor1₊phi₊u(t)", var"scara₊flange1₊phi(t)", var"feedback1₊input2₊u(t)", var"scara₊rev1₊frame_a₊phiˍtt(t)", var"scara₊mass1₊wˍt(t)", var"motor2₊signalVoltage₊i(t)", var"motor2₊resistor₊v(t)", var"motor2₊resistor₊n₊i(t)", var"gear2₊phi_aˍt(t)", var"motor2₊inductor₊n₊i(t)", var"motor2₊emf₊p₊i(t)", var"motor2₊emf₊flange₊tau(t)", var"motor2₊currentSensor₊n₊i(t)", var"motor2₊ground₊g₊i(t)", var"gear2₊phi_a(t)", var"gear2₊flange_b₊phi(t)", var"angleSensor2₊phi₊u(t)", var"scara₊flange2₊phi(t)", var"feedback2₊input2₊u(t)", var"scara₊mass2₊phiˍtt(t)", var"scara₊toMass2₊frame_a₊fy(t)", var"scara₊rev1₊frame_a₊phiˍt(t)", var"scara₊rev1₊frame_a₊phi(t)", var"scara₊rev1₊frame_b₊x(t)", var"scara₊toRev2₊frame_a₊x(t)", var"scara₊toMass1₊frame_a₊x(t)", var"scara₊rev1₊frame_b₊y(t)", var"scara₊toRev2₊frame_a₊y(t)", var"scara₊toMass1₊frame_a₊y(t)", var"var\"scara₊mass2₊v(t)ˍt\"[2]", var"inv_kin₊inp1₊u(t)", var"inv_kin₊inp2₊u(t)", var"inv_kin₊y2(t)", var"scara₊tcp₊Fs(t)", var"scara₊tcp₊Fc(t)", var"motor1₊resistor₊p₊i(t)", var"motor1₊inductor₊n₊i(t)", var"motor1₊resistor₊n₊i(t)", var"motor1₊ground₊g₊i(t)", var"motor1₊resistor₊v(t)", var"motor1₊emf₊n₊i(t)", var"motor1₊currentSensor₊p₊i(t)", var"motor1₊inertia₊phiˍt(t)", var"motor1₊inertia₊phi(t)", var"gear1₊flange_a₊phi(t)", var"motor1₊flange_a₊phi(t)", var"motor1₊inertia₊flange_b₊phi(t)", var"angleSensor1₊flange₊phi(t)", var"gear1₊phi_bˍtt(t)", var"scara₊rev1₊wˍt(t)", var"scara₊mass1₊z(t)", var"motor2₊signalVoltage₊p₊i(t)", var"motor2₊resistor₊p₊i(t)", var"motor2₊inertia₊phiˍt(t)", var"motor2₊emf₊n₊i(t)", var"motor2₊currentSensor₊i(t)", var"motor2₊inertia₊phi(t)", var"gear2₊flange_a₊phi(t)", var"motor2₊flange_a₊phi(t)", var"motor2₊inertia₊flange_b₊phi(t)", var"angleSensor2₊flange₊phi(t)", var"scara₊mass2₊wˍt(t)", var"scara₊rev2₊wˍt(t)", var"gear2₊phi_bˍtt(t)", var"scara₊mass1₊phiˍt(t)", var"scara₊mass1₊phi(t)", var"scara₊rev1₊frame_a₊x(t)", var"scara₊rev1₊frame_a₊y(t)", var"var\"scara₊mass2₊r(t)ˍtt\"[2]", var"inv_kin₊y1(t)", var"inv_kin₊out2₊u(t)", var"gain2₊u(t)", var"feedback2₊input1₊u(t)", var"motor1₊signalVoltage₊i(t)", var"motor1₊currentSensor₊i(t)", var"motor1₊viscousFriction₊flange₊phiˍt(t)", var"motor1₊inertia₊w(t)", var"motor1₊viscousFriction₊flange₊phi(t)", var"gear1₊phi_aˍtt(t)", var"scara₊rev1₊z(t)", var"motor2₊signalVoltage₊n₊i(t)", var"motor2₊viscousFriction₊flange₊phiˍt(t)", var"motor2₊inertia₊w(t)", var"motor2₊currentSensor₊p₊i(t)", var"motor2₊viscousFriction₊flange₊phi(t)", var"scara₊mass2₊z(t)", var"scara₊rev2₊z(t)", var"scara₊mass2₊phiˍt(t)", var"scara₊toMass1₊frame_a₊phiˍt(t)", var"scara₊mass1₊w(t)", var"scara₊mass2₊phi(t)", var"scara₊toMass1₊frame_a₊phi(t)", var"scara₊mass1₊frame_a₊phi(t)", var"scara₊rev2₊frame_a₊phi(t)", var"inv_kin₊out1₊u(t)", var"gain1₊u(t)", var"feedback1₊input1₊u(t)", var"gain2₊y(t)", var"gain2₊input₊u(t)", var"feedback2₊output₊u(t)", var"motor1₊signalVoltage₊n₊i(t)", var"motor1₊emf₊phiˍt(t)", var"motor1₊viscousFriction₊flange₊tau(t)", var"motor1₊emf₊phi(t)", var"motor1₊inertia₊flange_a₊phi(t)", var"motor1₊inertia₊phiˍtt(t)", var"motor2₊emf₊phiˍt(t)", var"motor2₊viscousFriction₊flange₊tau(t)", var"motor2₊emf₊phi(t)", var"scara₊mass2₊frame_a₊tau(t)", var"scara₊toMass2₊frame_a₊phiˍt(t)", var"scara₊mass2₊w(t)", var"scara₊toRev2₊frame_a₊phiˍt(t)", var"scara₊toMass2₊frame_a₊phi(t)", var"scara₊mass2₊frame_a₊phi(t)", var"scara₊toRev2₊frame_a₊phi(t)", var"var\"scara₊toMass1₊R(t)ˍtˍt\"[1, 2]", var"var\"scara₊toMass1₊R(t)ˍtˍt\"[1, 1]", var"var\"scara₊toMass1₊R(t)ˍtˍt\"[2, 2]", var"var\"scara₊toMass1₊R(t)ˍtˍt\"[2, 1]", var"(scara₊toMass1₊R(t))[1, 1]", var"(scara₊toMass1₊R(t))[2, 1]", var"(scara₊toMass1₊R(t))[1, 2]", var"(scara₊toMass1₊R(t))[2, 2]", var"scara₊toMass1₊frame_b₊phi(t)", var"var\"scara₊toMass1₊R(t)ˍt\"[1, 2]", var"var\"scara₊toMass1₊R(t)ˍt\"[1, 1]", var"var\"scara₊toMass1₊R(t)ˍt\"[2, 2]", var"var\"scara₊toMass1₊R(t)ˍt\"[2, 1]", var"gain1₊y(t)", var"gain1₊input₊u(t)", var"feedback1₊output₊u(t)", var"motor2₊signalVoltage₊V₊u(t)", var"motor2₊inductor₊p₊v(t)", var"gain2₊output₊u(t)", var"motor2₊vSignal₊u(t)", var"motor2₊resistor₊p₊v(t)", var"motor1₊signalVoltage₊p₊i(t)", var"motor1₊emf₊w(t)", var"motor1₊inertia₊flange_a₊tau(t)", var"motor1₊emf₊flange₊phi(t)", var"motor1₊inertia₊wˍt(t)", var"motor2₊emf₊w(t)", var"motor2₊inertia₊flange_a₊tau(t)", var"motor2₊emf₊flange₊phi(t)", var"motor2₊inertia₊flange_a₊phi(t)", var"scara₊toMass2₊frame_b₊tau(t)", var"scara₊toTCP₊frame_a₊phiˍt(t)", var"var\"scara₊toMass2₊R(t)ˍtˍt\"[1, 2]", var"var\"scara₊toMass2₊R(t)ˍtˍt\"[1, 1]", var"(scara₊toMass2₊R(t))[2, 2]", var"(scara₊toMass2₊R(t))[2, 1]", var"(scara₊toMass2₊R(t))[1, 2]", var"(scara₊toMass2₊R(t))[1, 1]", var"scara₊toTCP₊frame_a₊phi(t)", var"var\"scara₊toMass2₊R(t)ˍt\"[1, 2]", var"var\"scara₊toMass2₊R(t)ˍt\"[1, 1]", var"scara₊toMass2₊frame_b₊phi(t)", var"var\"scara₊toMass2₊R(t)ˍt\"[2, 2]", var"var\"scara₊toMass2₊R(t)ˍt\"[2, 1]", var"var\"scara₊toMass2₊R(t)ˍtˍt\"[2, 1]", var"var\"scara₊toMass2₊R(t)ˍtˍt\"[2, 2]", var"var\"scara₊toRev2₊R(t)ˍtˍt\"[1, 2]", var"var\"scara₊toRev2₊R(t)ˍtˍt\"[1, 1]", var"var\"scara₊toRev2₊R(t)ˍt\"[2, 2]", var"var\"scara₊toRev2₊R(t)ˍt\"[2, 1]", var"var\"scara₊toRev2₊R(t)ˍt\"[1, 2]", var"var\"scara₊toRev2₊R(t)ˍt\"[1, 1]", var"var\"scara₊toRev2₊R(t)ˍtˍt\"[2, 2]", var"var\"scara₊toRev2₊R(t)ˍtˍt\"[2, 1]", var"(scara₊toRev2₊R(t))[1, 1]", var"(scara₊toRev2₊R(t))[2, 1]", var"(scara₊toRev2₊R(t))[1, 2]", var"(scara₊toRev2₊R(t))[2, 2]", var"scara₊toRev2₊frame_b₊phi(t)", var"scara₊rev1₊frame_b₊phi(t)", var"var\"scara₊toMass1₊r0(t)ˍtˍt\"[1]", var"var\"scara₊toMass1₊r0(t)ˍtˍt\"[2]", var"(scara₊toMass1₊r0(t))[1]", var"(scara₊toMass1₊r0(t))[2]", var"var\"scara₊toMass1₊r0(t)ˍt\"[1]", var"var\"scara₊toMass1₊r0(t)ˍt\"[2]", var"motor1₊resistor₊p₊v(t)", var"motor1₊inductor₊p₊v(t)", var"gain1₊output₊u(t)", var"motor1₊vSignal₊u(t)", var"motor1₊signalVoltage₊V₊u(t)", var"motor2₊signalVoltage₊v(t)", var"motor2₊resistor₊n₊v(t)", var"motor1₊emf₊v(t)", var"motor1₊inertia₊a(t)", var"motor2₊emf₊v(t)", var"var\"scara₊toMass2₊r0(t)ˍtˍt\"[1]", var"(scara₊toMass2₊r0(t))[2]", var"(scara₊toMass2₊r0(t))[1]", var"var\"scara₊toTCP₊R(t)ˍt\"[2, 2]", var"var\"scara₊toTCP₊R(t)ˍt\"[2, 1]", var"var\"scara₊toTCP₊R(t)ˍt\"[1, 2]", var"var\"scara₊toTCP₊R(t)ˍt\"[1, 1]", var"(scara₊toTCP₊R(t))[2, 2]", var"(scara₊toTCP₊R(t))[2, 1]", var"(scara₊toTCP₊R(t))[1, 2]", var"(scara₊toTCP₊R(t))[1, 1]", var"var\"scara₊toTCP₊R(t)ˍtˍt\"[2, 2]", var"var\"scara₊toTCP₊R(t)ˍtˍt\"[2, 1]", var"scara₊toTCP₊frame_b₊phi(t)", var"scara₊rev2₊frame_b₊phi(t)", var"scara₊tcp₊frame_a₊phi(t)", var"var\"scara₊toMass2₊r0(t)ˍt\"[1]", var"var\"scara₊toMass2₊r0(t)ˍt\"[2]", var"var\"scara₊toMass2₊r0(t)ˍtˍt\"[2]", var"var\"scara₊toRev2₊r0(t)ˍtˍt\"[1]", var"var\"scara₊toRev2₊r0(t)ˍt\"[2]", var"var\"scara₊toRev2₊r0(t)ˍt\"[1]", var"var\"scara₊toRev2₊r0(t)ˍtˍt\"[2]", var"(scara₊toRev2₊r0(t))[1]", var"(scara₊toRev2₊r0(t))[2]", var"motor1₊signalVoltage₊v(t)", var"motor1₊resistor₊n₊v(t)", var"motor2₊signalVoltage₊p₊v(t)", var"motor1₊inductor₊v(t)", var"motor1₊emf₊p₊v(t)", var"motor1₊inertia₊flange_b₊tau(t)", var"motor2₊inductor₊v(t)", var"motor2₊emf₊p₊v(t)", var"motor2₊inductor₊n₊v(t)", var"var\"scara₊toTCP₊r0(t)ˍt\"[2]", var"var\"scara₊toTCP₊r0(t)ˍt\"[1]", var"(scara₊toTCP₊r0(t))[2]", var"(scara₊toTCP₊r0(t))[1]", var"var\"scara₊toTCP₊r0(t)ˍtˍt\"[2]", var"var\"scara₊mass2₊r(t)ˍtt\"[1]", var"var\"scara₊mass2₊r(t)ˍt\"[1]", var"(scara₊mass2₊r(t))[1]", var"motor1₊signalVoltage₊p₊v(t)", var"motor1₊inductor₊n₊v(t)", var"gear1₊flange_a₊tau(t)", var"scara₊tcp₊yˍt(t)", var"scara₊tcp₊y(t)", var"scara₊tcp₊yˍtt(t)", var"var\"scara₊mass2₊v(t)ˍt\"[1]", var"var\"scara₊mass1₊r(t)ˍtt\"[1]", var"scara₊tcp₊xˍt(t)", var"var\"scara₊mass1₊r(t)ˍt\"[1]", var"(scara₊mass2₊v(t))[1]", var"(scara₊mass1₊r(t))[1]", var"scara₊tcp₊x(t)", var"scara₊mass2₊frame_a₊x(t)", var"gear1₊flange_b₊tau(t)", var"motor1₊flange_a₊tau(t)", var"scara₊tcp₊vy(t)", var"var\"scara₊mass1₊r(t)ˍt\"[2]", var"var\"scara₊mass2₊r(t)ˍt\"[2]", var"(scara₊mass1₊r(t))[2]", var"scara₊tcp₊frame_a₊y(t)", var"(scara₊mass2₊r(t))[2]", var"var\"scara₊mass1₊r(t)ˍtt\"[2]", var"(scara₊mass2₊a(t))[1]", var"var\"scara₊mass1₊v(t)ˍt\"[1]", var"scara₊tcp₊vx(t)", var"(scara₊mass1₊v(t))[1]", var"scara₊mass1₊frame_a₊x(t)", var"scara₊tcp₊frame_a₊x(t)", var"scara₊toMass2₊frame_b₊x(t)", var"scara₊fixed₊frame_a₊tau(t)", var"scara₊flange1₊tau(t)", var"(scara₊mass1₊v(t))[2]", var"(scara₊mass2₊v(t))[2]", var"scara₊mass1₊frame_a₊y(t)", var"scara₊toMass2₊frame_a₊y(t)", var"scara₊tcp₊posYOut₊u(t)", var"scara₊toTCP₊frame_b₊y(t)", var"scara₊posYOut₊u(t)", var"scara₊mass2₊frame_a₊y(t)", var"var\"scara₊mass1₊v(t)ˍt\"[2]", var"(scara₊mass2₊f(t))[1]", var"(scara₊mass1₊a(t))[1]", var"scara₊tcp₊v_abs(t)", var"scara₊toMass1₊frame_b₊x(t)", var"scara₊toMass2₊frame_a₊x(t)", var"scara₊tcp₊posXOut₊u(t)", var"scara₊toTCP₊frame_b₊x(t)", var"scara₊posXOut₊u(t)", var"scara₊rev1₊frame_b₊tau(t)", var"scara₊toMass1₊frame_b₊y(t)", var"scara₊toTCP₊frame_a₊y(t)", var"scara₊toMass2₊frame_b₊y(t)", var"(scara₊mass1₊a(t))[2]", var"scara₊toMass2₊frame_b₊fx(t)", var"scara₊mass2₊frame_a₊fx(t)", var"(scara₊mass1₊f(t))[1]", var"scara₊tcp₊Fv(t)", var"scara₊toTCP₊frame_a₊x(t)", var"scara₊rev1₊frame_a₊tau(t)", var"scara₊rev2₊frame_b₊y(t)", var"(scara₊mass1₊f(t))[2]", var"scara₊toMass2₊frame_a₊tau(t)", var"scara₊toMass2₊frame_a₊fx(t)", var"scara₊toMass1₊frame_b₊fx(t)", var"scara₊mass1₊frame_a₊fx(t)", var"scara₊tcp₊Fstribeck(t)", var"scara₊rev2₊frame_b₊x(t)", var"scara₊rev1₊flange_a₊tau(t)", var"scara₊rev2₊frame_a₊y(t)", var"scara₊toRev2₊frame_b₊y(t)", var"scara₊toMass1₊frame_b₊fy(t)", var"scara₊mass1₊frame_a₊fy(t)", var"scara₊toMass1₊frame_a₊fx(t)", var"scara₊tcp₊f_abs(t)", var"scara₊rev2₊frame_a₊x(t)", var"scara₊toRev2₊frame_b₊x(t)", var"scara₊rev1₊tau(t)", var"scara₊toMass1₊frame_a₊fy(t)", var"scara₊tcp₊fy(t)", var"scara₊tcp₊fx(t)", var"scara₊toTCP₊frame_b₊fy(t)", var"scara₊toRev2₊frame_b₊fy(t)", var"scara₊tcp₊frame_a₊fy(t)", var"scara₊toTCP₊frame_b₊fx(t)", var"scara₊toRev2₊frame_b₊fx(t)", var"scara₊tcp₊frame_a₊fx(t)", var"scara₊toTCP₊frame_a₊fy(t)", var"scara₊fixed₊frame_a₊fy(t)", var"scara₊toRev2₊frame_a₊fy(t)", var"scara₊rev2₊frame_b₊fy(t)", var"scara₊toTCP₊frame_a₊tau(t)", var"scara₊toTCP₊frame_a₊fx(t)", var"scara₊fixed₊frame_a₊fx(t)", var"scara₊toRev2₊frame_a₊fx(t)", var"scara₊rev2₊frame_b₊fx(t)", var"scara₊rev1₊frame_b₊fy(t)", var"scara₊rev2₊frame_a₊fy(t)", var"scara₊toRev2₊frame_b₊tau(t)", var"scara₊rev1₊frame_a₊fx(t)", var"scara₊rev2₊frame_a₊fx(t)", var"scara₊rev1₊frame_a₊fy(t)", var"gear2₊flange_b₊tau(t)", var"scara₊toRev2₊frame_a₊tau(t)", var"scara₊rev2₊frame_b₊tau(t)", var"scara₊rev1₊frame_b₊fx(t)", var"gear2₊flange_a₊tau(t)", var"scara₊flange2₊tau(t)", var"scara₊toMass1₊frame_a₊tau(t)", var"scara₊rev2₊frame_a₊tau(t)", var"motor2₊inertia₊flange_b₊tau(t)", var"motor2₊flange_a₊tau(t)", var"scara₊toMass1₊frame_b₊tau(t)", var"scara₊rev2₊tau(t)", var"motor2₊inertia₊a(t)", var"scara₊mass1₊frame_a₊tau(t)", var"scara₊rev2₊flange_a₊tau(t)", var"motor2₊inertia₊wˍt(t)", var"motor2₊inertia₊phiˍtt(t)", var"gear2₊phi_aˍtt(t)")
                            end
                        end
                    end
                end
            end
        end
    end

	obs_names = ["inp1_traj₊output₊u(t)", "inp2_traj₊output₊u(t)", "inp3_traj₊output₊u(t)", "motor1₊emf₊i(t)", "gear1₊phi_bˍt(t)", "gear1₊phi_b(t)", "motor1₊ground₊g₊v(t)", "motor1₊currentSensor₊p₊v(t)", "scara₊fixed₊frame_a₊phiˍtt(t)", "scara₊mass1₊phiˍtt(t)", "gear1₊phi_support(t)", "angleSensor1₊flange₊tau(t)", "motor2₊resistor₊i(t)", "gear2₊phi_bˍt(t)", "motor2₊inductor₊p₊i(t)", "motor2₊emf₊i(t)", "gear2₊phi_b(t)", "motor2₊ground₊g₊v(t)", "motor2₊currentSensor₊p₊v(t)", "scara₊toMass2₊frame_a₊phiˍtt(t)", "scara₊toMass2₊frame_b₊fy(t)", "scara₊fixed₊frame_a₊phiˍt(t)", "scara₊fixed₊frame_a₊phi(t)", "scara₊toRev2₊frame_a₊phiˍtt(t)", "scara₊fixed₊frame_a₊xˍtt(t)", "scara₊toTCP₊frame_b₊tau(t)", "scara₊fixed₊frame_a₊yˍt(t)", "scara₊fixed₊frame_a₊xˍt(t)", "gear2₊phi_support(t)", "angleSensor2₊flange₊tau(t)", "scara₊fixed₊frame_a₊x(t)", "scara₊fixed₊frame_a₊y(t)", "scara₊rev1₊flange_a₊phi(t)", "scara₊fixed₊frame_a₊yˍtt(t)", "scara₊rev2₊flange_a₊phi(t)", "(scara₊mass2₊a(t))[2]", "scara₊mass2₊frame_a₊fy(t)", "scara₊tcp₊frame_a₊tau(t)", "motor1₊emf₊n₊v(t)", "motor1₊signalVoltage₊n₊v(t)", "motor1₊currentSensor₊n₊v(t)", "motor2₊emf₊n₊v(t)", "motor2₊signalVoltage₊n₊v(t)", "motor2₊currentSensor₊n₊v(t)", "inv_kin₊u1(t)", "inv_kin₊u2(t)", "scara₊tcp₊zForceIn₊u(t)", "scara₊zForceIn₊u(t)", "motor1₊inductor₊p₊i(t)", "motor1₊resistor₊i(t)", "motor1₊emf₊p₊i(t)", "motor1₊emf₊flange₊tau(t)", "motor1₊currentSensor₊n₊i(t)", "gear1₊phi_aˍt(t)", "gear1₊phi_a(t)", "gear1₊flange_b₊phi(t)", "angleSensor1₊phi₊u(t)", "scara₊flange1₊phi(t)", "feedback1₊input2₊u(t)", "scara₊rev1₊frame_a₊phiˍtt(t)", "scara₊mass1₊wˍt(t)", "motor2₊signalVoltage₊i(t)", "motor2₊resistor₊v(t)", "motor2₊resistor₊n₊i(t)", "gear2₊phi_aˍt(t)", "motor2₊inductor₊n₊i(t)", "motor2₊emf₊p₊i(t)", "motor2₊emf₊flange₊tau(t)", "motor2₊currentSensor₊n₊i(t)", "motor2₊ground₊g₊i(t)", "gear2₊phi_a(t)", "gear2₊flange_b₊phi(t)", "angleSensor2₊phi₊u(t)", "scara₊flange2₊phi(t)", "feedback2₊input2₊u(t)", "scara₊mass2₊phiˍtt(t)", "scara₊toMass2₊frame_a₊fy(t)", "scara₊rev1₊frame_a₊phiˍt(t)", "scara₊rev1₊frame_a₊phi(t)", "scara₊rev1₊frame_b₊x(t)", "scara₊toRev2₊frame_a₊x(t)", "scara₊toMass1₊frame_a₊x(t)", "scara₊rev1₊frame_b₊y(t)", "scara₊toRev2₊frame_a₊y(t)", "scara₊toMass1₊frame_a₊y(t)", "var\"scara₊mass2₊v(t)ˍt\"[2]", "inv_kin₊inp1₊u(t)", "inv_kin₊inp2₊u(t)", "inv_kin₊y2(t)", "scara₊tcp₊Fs(t)", "scara₊tcp₊Fc(t)", "motor1₊resistor₊p₊i(t)", "motor1₊inductor₊n₊i(t)", "motor1₊resistor₊n₊i(t)", "motor1₊ground₊g₊i(t)", "motor1₊resistor₊v(t)", "motor1₊emf₊n₊i(t)", "motor1₊currentSensor₊p₊i(t)", "motor1₊inertia₊phiˍt(t)", "motor1₊inertia₊phi(t)", "gear1₊flange_a₊phi(t)", "motor1₊flange_a₊phi(t)", "motor1₊inertia₊flange_b₊phi(t)", "angleSensor1₊flange₊phi(t)", "gear1₊phi_bˍtt(t)", "scara₊rev1₊wˍt(t)", "scara₊mass1₊z(t)", "motor2₊signalVoltage₊p₊i(t)", "motor2₊resistor₊p₊i(t)", "motor2₊inertia₊phiˍt(t)", "motor2₊emf₊n₊i(t)", "motor2₊currentSensor₊i(t)", "motor2₊inertia₊phi(t)", "gear2₊flange_a₊phi(t)", "motor2₊flange_a₊phi(t)", "motor2₊inertia₊flange_b₊phi(t)", "angleSensor2₊flange₊phi(t)", "scara₊mass2₊wˍt(t)", "scara₊rev2₊wˍt(t)", "gear2₊phi_bˍtt(t)", "scara₊mass1₊phiˍt(t)", "scara₊mass1₊phi(t)", "scara₊rev1₊frame_a₊x(t)", "scara₊rev1₊frame_a₊y(t)", "var\"scara₊mass2₊r(t)ˍtt\"[2]", "inv_kin₊y1(t)", "inv_kin₊out2₊u(t)", "gain2₊u(t)", "feedback2₊input1₊u(t)", "motor1₊signalVoltage₊i(t)", "motor1₊currentSensor₊i(t)", "motor1₊viscousFriction₊flange₊phiˍt(t)", "motor1₊inertia₊w(t)", "motor1₊viscousFriction₊flange₊phi(t)", "gear1₊phi_aˍtt(t)", "scara₊rev1₊z(t)", "motor2₊signalVoltage₊n₊i(t)", "motor2₊viscousFriction₊flange₊phiˍt(t)", "motor2₊inertia₊w(t)", "motor2₊currentSensor₊p₊i(t)", "motor2₊viscousFriction₊flange₊phi(t)", "scara₊mass2₊z(t)", "scara₊rev2₊z(t)", "scara₊mass2₊phiˍt(t)", "scara₊toMass1₊frame_a₊phiˍt(t)", "scara₊mass1₊w(t)", "scara₊mass2₊phi(t)", "scara₊toMass1₊frame_a₊phi(t)", "scara₊mass1₊frame_a₊phi(t)", "scara₊rev2₊frame_a₊phi(t)", "inv_kin₊out1₊u(t)", "gain1₊u(t)", "feedback1₊input1₊u(t)", "gain2₊y(t)", "gain2₊input₊u(t)", "feedback2₊output₊u(t)", "motor1₊signalVoltage₊n₊i(t)", "motor1₊emf₊phiˍt(t)", "motor1₊viscousFriction₊flange₊tau(t)", "motor1₊emf₊phi(t)", "motor1₊inertia₊flange_a₊phi(t)", "motor1₊inertia₊phiˍtt(t)", "motor2₊emf₊phiˍt(t)", "motor2₊viscousFriction₊flange₊tau(t)", "motor2₊emf₊phi(t)", "scara₊mass2₊frame_a₊tau(t)", "scara₊toMass2₊frame_a₊phiˍt(t)", "scara₊mass2₊w(t)", "scara₊toRev2₊frame_a₊phiˍt(t)", "scara₊toMass2₊frame_a₊phi(t)", "scara₊mass2₊frame_a₊phi(t)", "scara₊toRev2₊frame_a₊phi(t)", "var\"scara₊toMass1₊R(t)ˍtˍt\"[1, 2]", "var\"scara₊toMass1₊R(t)ˍtˍt\"[1, 1]", "var\"scara₊toMass1₊R(t)ˍtˍt\"[2, 2]", "var\"scara₊toMass1₊R(t)ˍtˍt\"[2, 1]", "(scara₊toMass1₊R(t))[1, 1]", "(scara₊toMass1₊R(t))[2, 1]", "(scara₊toMass1₊R(t))[1, 2]", "(scara₊toMass1₊R(t))[2, 2]", "scara₊toMass1₊frame_b₊phi(t)", "var\"scara₊toMass1₊R(t)ˍt\"[1, 2]", "var\"scara₊toMass1₊R(t)ˍt\"[1, 1]", "var\"scara₊toMass1₊R(t)ˍt\"[2, 2]", "var\"scara₊toMass1₊R(t)ˍt\"[2, 1]", "gain1₊y(t)", "gain1₊input₊u(t)", "feedback1₊output₊u(t)", "motor2₊signalVoltage₊V₊u(t)", "motor2₊inductor₊p₊v(t)", "gain2₊output₊u(t)", "motor2₊vSignal₊u(t)", "motor2₊resistor₊p₊v(t)", "motor1₊signalVoltage₊p₊i(t)", "motor1₊emf₊w(t)", "motor1₊inertia₊flange_a₊tau(t)", "motor1₊emf₊flange₊phi(t)", "motor1₊inertia₊wˍt(t)", "motor2₊emf₊w(t)", "motor2₊inertia₊flange_a₊tau(t)", "motor2₊emf₊flange₊phi(t)", "motor2₊inertia₊flange_a₊phi(t)", "scara₊toMass2₊frame_b₊tau(t)", "scara₊toTCP₊frame_a₊phiˍt(t)", "var\"scara₊toMass2₊R(t)ˍtˍt\"[1, 2]", "var\"scara₊toMass2₊R(t)ˍtˍt\"[1, 1]", "(scara₊toMass2₊R(t))[2, 2]", "(scara₊toMass2₊R(t))[2, 1]", "(scara₊toMass2₊R(t))[1, 2]", "(scara₊toMass2₊R(t))[1, 1]", "scara₊toTCP₊frame_a₊phi(t)", "var\"scara₊toMass2₊R(t)ˍt\"[1, 2]", "var\"scara₊toMass2₊R(t)ˍt\"[1, 1]", "scara₊toMass2₊frame_b₊phi(t)", "var\"scara₊toMass2₊R(t)ˍt\"[2, 2]", "var\"scara₊toMass2₊R(t)ˍt\"[2, 1]", "var\"scara₊toMass2₊R(t)ˍtˍt\"[2, 1]", "var\"scara₊toMass2₊R(t)ˍtˍt\"[2, 2]", "var\"scara₊toRev2₊R(t)ˍtˍt\"[1, 2]", "var\"scara₊toRev2₊R(t)ˍtˍt\"[1, 1]", "var\"scara₊toRev2₊R(t)ˍt\"[2, 2]", "var\"scara₊toRev2₊R(t)ˍt\"[2, 1]", "var\"scara₊toRev2₊R(t)ˍt\"[1, 2]", "var\"scara₊toRev2₊R(t)ˍt\"[1, 1]", "var\"scara₊toRev2₊R(t)ˍtˍt\"[2, 2]", "var\"scara₊toRev2₊R(t)ˍtˍt\"[2, 1]", "(scara₊toRev2₊R(t))[1, 1]", "(scara₊toRev2₊R(t))[2, 1]", "(scara₊toRev2₊R(t))[1, 2]", "(scara₊toRev2₊R(t))[2, 2]", "scara₊toRev2₊frame_b₊phi(t)", "scara₊rev1₊frame_b₊phi(t)", "var\"scara₊toMass1₊r0(t)ˍtˍt\"[1]", "var\"scara₊toMass1₊r0(t)ˍtˍt\"[2]", "(scara₊toMass1₊r0(t))[1]", "(scara₊toMass1₊r0(t))[2]", "var\"scara₊toMass1₊r0(t)ˍt\"[1]", "var\"scara₊toMass1₊r0(t)ˍt\"[2]", "motor1₊resistor₊p₊v(t)", "motor1₊inductor₊p₊v(t)", "gain1₊output₊u(t)", "motor1₊vSignal₊u(t)", "motor1₊signalVoltage₊V₊u(t)", "motor2₊signalVoltage₊v(t)", "motor2₊resistor₊n₊v(t)", "motor1₊emf₊v(t)", "motor1₊inertia₊a(t)", "motor2₊emf₊v(t)", "var\"scara₊toMass2₊r0(t)ˍtˍt\"[1]", "(scara₊toMass2₊r0(t))[2]", "(scara₊toMass2₊r0(t))[1]", "var\"scara₊toTCP₊R(t)ˍt\"[2, 2]", "var\"scara₊toTCP₊R(t)ˍt\"[2, 1]", "var\"scara₊toTCP₊R(t)ˍt\"[1, 2]", "var\"scara₊toTCP₊R(t)ˍt\"[1, 1]", "(scara₊toTCP₊R(t))[2, 2]", "(scara₊toTCP₊R(t))[2, 1]", "(scara₊toTCP₊R(t))[1, 2]", "(scara₊toTCP₊R(t))[1, 1]", "var\"scara₊toTCP₊R(t)ˍtˍt\"[2, 2]", "var\"scara₊toTCP₊R(t)ˍtˍt\"[2, 1]", "scara₊toTCP₊frame_b₊phi(t)", "scara₊rev2₊frame_b₊phi(t)", "scara₊tcp₊frame_a₊phi(t)", "var\"scara₊toMass2₊r0(t)ˍt\"[1]", "var\"scara₊toMass2₊r0(t)ˍt\"[2]", "var\"scara₊toMass2₊r0(t)ˍtˍt\"[2]", "var\"scara₊toRev2₊r0(t)ˍtˍt\"[1]", "var\"scara₊toRev2₊r0(t)ˍt\"[2]", "var\"scara₊toRev2₊r0(t)ˍt\"[1]", "var\"scara₊toRev2₊r0(t)ˍtˍt\"[2]", "(scara₊toRev2₊r0(t))[1]", "(scara₊toRev2₊r0(t))[2]", "motor1₊signalVoltage₊v(t)", "motor1₊resistor₊n₊v(t)", "motor2₊signalVoltage₊p₊v(t)", "motor1₊inductor₊v(t)", "motor1₊emf₊p₊v(t)", "motor1₊inertia₊flange_b₊tau(t)", "motor2₊inductor₊v(t)", "motor2₊emf₊p₊v(t)", "motor2₊inductor₊n₊v(t)", "var\"scara₊toTCP₊r0(t)ˍt\"[2]", "var\"scara₊toTCP₊r0(t)ˍt\"[1]", "(scara₊toTCP₊r0(t))[2]", "(scara₊toTCP₊r0(t))[1]", "var\"scara₊toTCP₊r0(t)ˍtˍt\"[2]", "var\"scara₊mass2₊r(t)ˍtt\"[1]", "var\"scara₊mass2₊r(t)ˍt\"[1]", "(scara₊mass2₊r(t))[1]", "motor1₊signalVoltage₊p₊v(t)", "motor1₊inductor₊n₊v(t)", "gear1₊flange_a₊tau(t)", "scara₊tcp₊yˍt(t)", "scara₊tcp₊y(t)", "scara₊tcp₊yˍtt(t)", "var\"scara₊mass2₊v(t)ˍt\"[1]", "var\"scara₊mass1₊r(t)ˍtt\"[1]", "scara₊tcp₊xˍt(t)", "var\"scara₊mass1₊r(t)ˍt\"[1]", "(scara₊mass2₊v(t))[1]", "(scara₊mass1₊r(t))[1]", "scara₊tcp₊x(t)", "scara₊mass2₊frame_a₊x(t)", "gear1₊flange_b₊tau(t)", "motor1₊flange_a₊tau(t)", "scara₊tcp₊vy(t)", "var\"scara₊mass1₊r(t)ˍt\"[2]", "var\"scara₊mass2₊r(t)ˍt\"[2]", "(scara₊mass1₊r(t))[2]", "scara₊tcp₊frame_a₊y(t)", "(scara₊mass2₊r(t))[2]", "var\"scara₊mass1₊r(t)ˍtt\"[2]", "(scara₊mass2₊a(t))[1]", "var\"scara₊mass1₊v(t)ˍt\"[1]", "scara₊tcp₊vx(t)", "(scara₊mass1₊v(t))[1]", "scara₊mass1₊frame_a₊x(t)", "scara₊tcp₊frame_a₊x(t)", "scara₊toMass2₊frame_b₊x(t)", "scara₊fixed₊frame_a₊tau(t)", "scara₊flange1₊tau(t)", "(scara₊mass1₊v(t))[2]", "(scara₊mass2₊v(t))[2]", "scara₊mass1₊frame_a₊y(t)", "scara₊toMass2₊frame_a₊y(t)", "scara₊tcp₊posYOut₊u(t)", "scara₊toTCP₊frame_b₊y(t)", "scara₊posYOut₊u(t)", "scara₊mass2₊frame_a₊y(t)", "var\"scara₊mass1₊v(t)ˍt\"[2]", "(scara₊mass2₊f(t))[1]", "(scara₊mass1₊a(t))[1]", "scara₊tcp₊v_abs(t)", "scara₊toMass1₊frame_b₊x(t)", "scara₊toMass2₊frame_a₊x(t)", "scara₊tcp₊posXOut₊u(t)", "scara₊toTCP₊frame_b₊x(t)", "scara₊posXOut₊u(t)", "scara₊rev1₊frame_b₊tau(t)", "scara₊toMass1₊frame_b₊y(t)", "scara₊toTCP₊frame_a₊y(t)", "scara₊toMass2₊frame_b₊y(t)", "(scara₊mass1₊a(t))[2]", "scara₊toMass2₊frame_b₊fx(t)", "scara₊mass2₊frame_a₊fx(t)", "(scara₊mass1₊f(t))[1]", "scara₊tcp₊Fv(t)", "scara₊toTCP₊frame_a₊x(t)", "scara₊rev1₊frame_a₊tau(t)", "scara₊rev2₊frame_b₊y(t)", "(scara₊mass1₊f(t))[2]", "scara₊toMass2₊frame_a₊tau(t)", "scara₊toMass2₊frame_a₊fx(t)", "scara₊toMass1₊frame_b₊fx(t)", "scara₊mass1₊frame_a₊fx(t)", "scara₊tcp₊Fstribeck(t)", "scara₊rev2₊frame_b₊x(t)", "scara₊rev1₊flange_a₊tau(t)", "scara₊rev2₊frame_a₊y(t)", "scara₊toRev2₊frame_b₊y(t)", "scara₊toMass1₊frame_b₊fy(t)", "scara₊mass1₊frame_a₊fy(t)", "scara₊toMass1₊frame_a₊fx(t)", "scara₊tcp₊f_abs(t)", "scara₊rev2₊frame_a₊x(t)", "scara₊toRev2₊frame_b₊x(t)", "scara₊rev1₊tau(t)", "scara₊toMass1₊frame_a₊fy(t)", "scara₊tcp₊fy(t)", "scara₊tcp₊fx(t)", "scara₊toTCP₊frame_b₊fy(t)", "scara₊toRev2₊frame_b₊fy(t)", "scara₊tcp₊frame_a₊fy(t)", "scara₊toTCP₊frame_b₊fx(t)", "scara₊toRev2₊frame_b₊fx(t)", "scara₊tcp₊frame_a₊fx(t)", "scara₊toTCP₊frame_a₊fy(t)", "scara₊fixed₊frame_a₊fy(t)", "scara₊toRev2₊frame_a₊fy(t)", "scara₊rev2₊frame_b₊fy(t)", "scara₊toTCP₊frame_a₊tau(t)", "scara₊toTCP₊frame_a₊fx(t)", "scara₊fixed₊frame_a₊fx(t)", "scara₊toRev2₊frame_a₊fx(t)", "scara₊rev2₊frame_b₊fx(t)", "scara₊rev1₊frame_b₊fy(t)", "scara₊rev2₊frame_a₊fy(t)", "scara₊toRev2₊frame_b₊tau(t)", "scara₊rev1₊frame_a₊fx(t)", "scara₊rev2₊frame_a₊fx(t)", "scara₊rev1₊frame_a₊fy(t)", "gear2₊flange_b₊tau(t)", "scara₊toRev2₊frame_a₊tau(t)", "scara₊rev2₊frame_b₊tau(t)", "scara₊rev1₊frame_b₊fx(t)", "gear2₊flange_a₊tau(t)", "scara₊flange2₊tau(t)", "scara₊toMass1₊frame_a₊tau(t)", "scara₊rev2₊frame_a₊tau(t)", "motor2₊inertia₊flange_b₊tau(t)", "motor2₊flange_a₊tau(t)", "scara₊toMass1₊frame_b₊tau(t)", "scara₊rev2₊tau(t)", "motor2₊inertia₊a(t)", "scara₊mass1₊frame_a₊tau(t)", "scara₊rev2₊flange_a₊tau(t)", "motor2₊inertia₊wˍt(t)", "motor2₊inertia₊phiˍtt(t)", "gear2₊phi_aˍtt(t)"]

	obs_name_dict = Dict{String,Int64}()
	for (i,sig) in enumerate(obs_names)
		obs_name_dict[sig] = i
	end

	return (Scara_ReferenceODE_obs, obs_names, obs_name_dict)
end

function calc_Scara_ReferenceODE_obs(ode_sol, obs_fun, ode_param, idx, network_param=nothing, se=nothing)

	obs_res = Vector{Vector{Any}}()
	for i in 1:length(ode_sol.t)
		_u = ode_sol[i]
		_t = ode_sol.t[i]
		push!(obs_res, obs_fun(_u,[ode_param],_t,network_param,se))
	end
	return [obs_res[i][idx] for i in 1:length(obs_res)]
end

