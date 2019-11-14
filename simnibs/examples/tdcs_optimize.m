% Example for running a SimNIBS tDCS optimization in MATLAB
%
% Copyright (C) 2019 Guilherme B Saturnino


% Initialize structure
opt = opt_struct('TDCSoptimize');
% Select the leadfield file
opt.leadfield_hdf = 'leadfield/ernie_leadfield_EEG10-10_UI_Jurak_2007.hdf5';
% Select a name for the optimization
opt.name = 'optimization/single_target';

% Select a maximum total current (in A)
opt.max_total_current = 2e-3;
% Select a maximum current at each electrodes (in A)
opt.max_individual_current = 1e-3;
% Select a maximum number of active electrodes (optional)
opt.max_active_electrodes = 8;

% Define optimization target
% Position of target, in subjet space!
% please see tdcs_optimize_mni.m for how to use MNI coordinates
opt.target.positions = [-55.4, -20.7, 73.4];
% Intensity of the electric field (in V/m)
opt.target.intensity = 0.2;
% Run optimization
run_simnibs(opt);