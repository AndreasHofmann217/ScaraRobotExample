"Basic components required for the ScaraRobot example. Based on the excellent Modelica library PlanarMechanics from Dirk Zimmer. https://github.com/dzimmer/PlanarMechanics"
module PlanarMechanics

	using ModelingToolkit
	using ModelingToolkit: t_nounits as t, D_nounits as D
	using ModelingToolkitStandardLibrary.Mechanical.Rotational
	using ModelingToolkitStandardLibrary.Blocks

	@connector Frame begin
		x(t)
		y(t)
		phi(t)
		fx(t), [connect = Flow]
		fy(t), [connect = Flow]
		tau(t), [connect = Flow]
	end

	@mtkmodel Fixed begin
		@parameters begin
			r[1:2] = [0.0,0.0], [description = "Position resolved in world frame"]
			phi = 0.0, [description = "Fixed Angle"]
		end
		@components begin
			frame_a = Frame()
		end
		@equations begin
			frame_a.x ~ r[1]
			frame_a.y ~ r[2]
			frame_a.phi ~ phi
		end
	end

	@mtkmodel Force begin
		@parameters begin
			f[1:2] = [0.0,0.0], [description = "Forces resolved in world frame"]
			tau = 0.0, [description = "Torque resolved in world frame"]
		end
		@components begin
			frame_a = Frame()
		end
		@equations begin
			frame_a.fx ~ - f[1]
			frame_a.fy ~ - f[2]
			frame_a.tau ~ - tau
		end
	end

	@mtkmodel FixedTranslation begin
		@parameters begin
			r[1:2] = [1.0,0.0], [description = "Fixed x,-y length of the rod resolved w.r.t. frame_a"]
		end
		@variables begin
			R(t)[1:2,1:2]
			r0(t)[1:2]
		end
		@components begin
			frame_a = Frame()
			frame_b = Frame()
		end
		@equations begin
			R ~ [[cos(frame_a.phi),sin(frame_a.phi)] [-sin(frame_a.phi),cos(frame_a.phi)]] # julia does write columns, modelica does write rows!
			r0 ~ R * r
			frame_a.x + r0[1] ~ frame_b.x
			frame_a.y + r0[2] ~ frame_b.y
			frame_a.phi ~ frame_b.phi
			frame_a.fx + frame_b.fx ~ 0.0
			frame_a.fy + frame_b.fy ~ 0.0
			frame_a.tau + frame_b.tau + transpose(r0) * [frame_b.fy, -frame_b.fx] ~ 0.0 
		end
	end

	@mtkmodel Body begin
		@parameters begin
			m = 1.0, [description = "Mass of Body"]
			J = 1.0, [description = "Inertia of Body"]
			g[1:2] = [0.0,-9.81], [description = "gravitational acceleration"]
		end
		@variables begin
			f(t)[1:2]
			r(t)[1:2]
			v(t)[1:2]
			a(t)[1:2]
			phi(t), [description = "angle of body", state_priority=8]
			w(t), [description = "angular velocity of body", state_priority=8]
			z(t), [description = "angular acceleration of body", state_priority=8]
		end
		@components begin
			frame_a = Frame()
		end
		@equations begin
			r ~ [frame_a.x, frame_a.y]
			D.(r) ~ v
			D.(v) ~ a
			phi ~ frame_a.phi
			D(phi) ~ w
			D(w) ~ z
			# # Newton
			f ~ [frame_a.fx, frame_a.fy]
			m*a ~ f .+ m*g
			frame_a.tau ~ J * z
		end
	end

	@mtkmodel RevoluteJointPassive begin
		@variables begin
			phi(t)
			w(t)
			z(t)
		end
		@components begin
			frame_a = Frame()
			frame_b = Frame()
		end
		@equations begin
			D(phi) ~ w
			D(w) ~ z
			frame_a.phi + phi ~ frame_b.phi
			frame_a.x ~ frame_b.x
			frame_a.y ~ frame_b.y
			frame_a.fx + frame_b.fx ~ 0.0
			frame_a.fy + frame_b.fy ~ 0.0
			frame_a.tau ~ 0.0
			frame_a.tau + frame_b.tau ~ 0.0
		end
	end

	@mtkmodel RevoluteJointActive begin
		@variables begin
			phi(t), [state_priority=10]
			w(t), [state_priority=10]
			z(t), [state_priority=10]
			tau(t)
		end
		@components begin
			frame_a = Frame()
			frame_b = Frame()
			flange_a = Rotational.Flange()
		end
		@equations begin
			D(phi) ~ w
			D(w) ~ z
			flange_a.tau ~ tau
			flange_a.phi ~ phi 
			frame_a.phi + phi ~ frame_b.phi
			frame_a.x ~ frame_b.x
			frame_a.y ~ frame_b.y
			frame_a.fx + frame_b.fx ~ 0.0
			frame_a.fy + frame_b.fy ~ 0.0
			frame_a.tau ~ tau
			frame_a.tau + frame_b.tau ~ 0.0
		end
	end

end