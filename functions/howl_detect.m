function [howl, f0, state] = howl_detect(frame, state, fs)
% HOWL_DETECT Frame-based howling detector (100 ms frames of e[n]).
%   [howl, f0, state] = howl_detect(frame, state, fs)
%
%   Inputs:
%     frame - 100 ms frame of canceller output e[n]
%     state - persistent detector state struct across frames
%     fs    - sampling rate (Hz)
%   Outputs:
%     howl  - logical true if howling is detected
%     f0    - detected howling frequency (Hz)
%     state - updated detector state struct

    % TODO: Implement howling detector (Phase 6, Q52)
    error('howl_detect:NotImplemented', 'Implement howl_detect.m');
end
