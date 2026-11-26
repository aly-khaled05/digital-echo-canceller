function h = ls_channel(x, d, N, lambda)
% LS_CHANNEL Regularised least-squares FIR channel estimator.
%   h = ls_channel(x, d, N, lambda) returns (X'*X + lambda*I)^(-1) * X' * d.
%   Set lambda = 0 for unregularised least squares.
%
%   Inputs:
%     x      - training input samples (length M)
%     d      - observed ADC output samples (length M)
%     N      - number of FIR taps
%     lambda - regularisation parameter (>= 0)
%   Output:
%     h      - estimated N x 1 channel impulse response

    % TODO: Implement least-squares estimator (Phase 4)
    error('ls_channel:NotImplemented', 'Implement ls_channel.m');
end
