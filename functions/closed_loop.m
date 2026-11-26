function [x, d, e, r] = closed_loop(u, s, h, hhat, g, D, bn, an)
% CLOSED_LOOP Simulate two-way hands-free call at rate fs.
%   [x, d, e, r] = closed_loop(u, s, h, hhat, g, D, bn, an)
%
%   Inputs:
%     u      - far-end talker signal at fs
%     s      - near-end speech + noise at ADC output
%     h      - true discrete-time echo channel
%     hhat   - canceller FIR estimate (0 for no canceller)
%     g      - far-end return gain
%     D      - round-trip delay in samples
%     bn, an - send-path guard filter coefficients (1, 1 for no guard)
%   Outputs:
%     x, d, e, r - loop signals (x and d clipped to [-1, 1])

    % TODO: Implement block-based closed-loop simulation (Phase 6)
    error('closed_loop:NotImplemented', 'Implement closed_loop.m');
end
