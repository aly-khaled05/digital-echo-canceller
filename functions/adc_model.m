function d = adc_model(mc, OSR, aa, B, G)
% ADC_MODEL Anti-aliasing filter, sampler, and gainless B-bit quantiser.
%   d = adc_model(mc, OSR, aa, B, G)
%
%   Inputs:
%     mc  - continuous-time (fine-grid) input signal (column vector)
%     OSR - integer oversampling ratio Fa / fs
%     aa  - anti-aliasing filter as L x 6 SOS matrix ([] for no filter)
%     B   - quantiser resolution in bits (Inf for no quantiser)
%     G   - static AGC gain
%   Output:
%     d   - sampled and quantised output at fs

    % TODO: Implement ADC model (Phase 1, Q7)
    error('adc_model:NotImplemented', 'Implement adc_model.m');
end
