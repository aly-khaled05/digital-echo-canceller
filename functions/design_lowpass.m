function [sos, n] = design_lowpass(type, fp, fst, Fa)
% DESIGN_LOWPASS Design minimum-order Butterworth or elliptic low-pass filter on fine grid.
%   [sos, n] = design_lowpass(type, fp, fst, Fa)
%
%   Inputs:
%     type - 'butter' or 'ellip'
%     fp   - passband edge frequency (Hz)
%     fst  - stopband edge frequency (Hz)
%     Fa   - fine-grid sampling rate (Hz)
%   Outputs:
%     sos  - L x 6 matrix of second-order sections
%     n    - minimum filter order meeting Rp = 1 dB, Rs = 40 dB

    % TODO: Implement filter design in ZPK form and convert with zp2sos (Phase 1, Q11)
    error('design_lowpass:NotImplemented', 'Implement design_lowpass.m');
end
