%% Bonus A (Real Room) and Bonus B (Extensions) (B1–B9)
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

%% Start Bonus A (Real Room) and Bonus B (Extensions)
% TODO: Add code reproducing all figures and numbers for B1–B9.
