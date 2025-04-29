#
# Copyright (c) 2025 Andreas Hofmann
# Licensed under the MIT license. See LICENSE file in the project root for details.
#

include("./../Measurements.jl")

function getData()
    file = "./Scara_Data/ScaraTrain.h5"

    # training_data
    meas_selection = [
        "train" # word train being written
    ]

    h5_data = readMeasurementsFromHDF5(file;measurement_selection = meas_selection);
    states = String["rev1.phi", "motor1.i", "rev1.w", "rev2.phi", "motor2.i", "rev2.w", "mass2.f2", "toMass1.phi_tt", "toTCP.phi_tt"]
    state_derivatives = String["der_rev1.phi", "der_motor1.i", "der_rev1.w", "der_rev2.phi", "der_motor2.i", "der_rev2.w", "der_mass2.f2", "der_toMass1.phi_tt", "der_toTCP.phi_tt"]
    measurements = generateMeasurementsFromHDF5Measurements(h5_data;states = states);
    input_signals = ["inp1", "inp2", "inp3"]

    # validation data

    file = "./Scara_Data/ScaraValidate.h5"
    validation_selection = [
        "validate"
    ]
    h5_data = readMeasurementsFromHDF5(file;measurement_selection = validation_selection);
    validation_measurements = generateMeasurementsFromHDF5Measurements(h5_data;states = states);

    return (measurements, validation_measurements, states, state_derivatives, input_signals)

end