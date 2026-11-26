function [xc, xs, xq] = dac_model(x, OSR, rec, B, G)
% DAC_MODEL Gainless B-bit quantiser, zero-order hold, and reconstruction filter.
%   [xc, xs, xq] = dac_model(x, OSR, rec, B, G)
%
%   Inputs:
%     x   - digital input samples at fs (column vector)
%     OSR - integer oversampling ratio Fa / fs
%     rec - reconstruction filter as L x 6 SOS matrix ([] for no filter)
%     B   - quantiser resolution in bits (Inf for no quantiser)
%     G   - static AGC gain
%   Outputs:
%     xc  - continuous-time (fine-grid) DAC output
%     xs  - zero-order hold staircase on fine grid
%     xq  - quantised samples actually converted

    % TODO: Implement DAC model (Phase 1, Q7)
    error('dac_model:NotImplemented', 'Implement dac_model.m');
end
