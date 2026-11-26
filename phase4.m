%% Phase 4 - Channel Estimation (Q31–Q37)
% Signal Processing Fall 2026 - Digital Echo Canceller Project
clear; close all; clc;
addpath('functions');

% Common paths
data_dir = 'data';
fig_dir  = fullfile('outputs', 'figures');
aud_dir  = fullfile('outputs', 'audio');

% Baseline parameters (Table 3)
fs  = 16e3;
fp  = 7.2e3;
Fa  = 192e3;
OSR = Fa / fs;

%% Start Phase 4 - Channel Estimation
% TODO: Add code reproducing all figures and numbers for Q31–Q37.
