function [b, a] = notch_filter(f0, r, fs)
% NOTCH_FILTER Second-order notch filter via pole-zero placement.
%   [b, a] = notch_filter(f0, r, fs) places zeros at exp(+-j*w0) and poles
%   at r*exp(+-j*w0), normalised for unit gain far from f0.

    % TODO: Implement second-order notch filter (Phase 6, Q50)
    error('notch_filter:NotImplemented', 'Implement notch_filter.m');
end
