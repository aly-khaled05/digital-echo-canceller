function G = agc_gain(w, p)
% AGC_GAIN Compute static automatic gain control (AGC) gain.
%   G = agc_gain(w, p) returns G = 1/a, where a is the ceil((1-p)*K)-th
%   smallest value of |w[k]| so that at most a fraction p of samples of
%   G*w exceed 1 in magnitude (p = 0 places the peak at full scale).
%
%   Inputs:
%     w - calibration signal (column vector of K samples)
%     p - allowed clipping fraction (0 <= p < 1)
%   Output:
%     G - static AGC gain

    % TODO: Implement AGC gain calculation (Phase 1, Q7)
    error('agc_gain:NotImplemented', 'Implement agc_gain.m');
end
