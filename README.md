# Digital Echo Canceller for a Hands-Free Sound System

A complete mixed-signal simulation and digital echo cancellation system with closed-loop howling control, implemented in MATLAB / GNU Octave.

## System Overview

This project models and implements a digital echo canceller and howling guard operating between the ADC and DAC of a hands-free audio terminal:

- **Mixed-Signal Simulation:** Dual-grid architecture pairing a discrete-time digital domain ($f_s = 16\text{ kHz}$) with a continuous-time analog fine grid ($F_a = 192\text{ kHz}$, $\text{OSR} = 12$).
- **Data Converters:** Gainless $B$-bit quantisers with static AGC, zero-order hold, and 5th-order elliptic reconstruction/anti-aliasing filters implemented as cascaded Second-Order Sections (SOS).
- **Acoustic Channel:** Multipath room impulse response model (`room_A.txt`, `room_B.txt`) with direct sound, early reflections, and exponential reverberation tail.
- **Channel Estimation & Cancellation:** Regularised least-squares (Moore–Penrose pseudo-inverse) FIR channel estimator ($N = 1024$ taps) and echo subtraction.
- **Closed-Loop Stability & Howling Guard:** Two-way hands-free feedback loop analysis, pole-zero notch filtering, and frame-based howling detection/mitigation.

## Baseline Parameters

| Parameter | Value |
|---|---|
| Sampling Rate ($f_s$) | 16 kHz |
| Audio Passband ($f_p$) | 7.2 kHz |
| Analog Fine Grid ($F_a$, OSR) | 192 kHz ($\text{OSR} = 12$) |
| Converter Resolution ($B_D, B_A$) | 14 bits |
| Analog Filters | 5th-order elliptic ($R_p = 1\text{ dB}$, $R_s = 40\text{ dB}$, SOS) |
| Echo Return Loss (ERL) | 6 dB |
| Echo-to-Noise Ratio (ENR) | 30 dB |
| FIR Canceller Length ($N$) | 1024 taps (64 ms) |
| Closed-Loop Return ($g, D$) | $g = 1$ (0 dB), $D = 1600$ samples (100 ms) |

## Repository Structure

```text
digital-echo-canceller/
├── data/               # Audio recordings and room impulse response files
├── docs/               # Technical documentation and reference notes
├── functions/          # Core DSP modules (converters, filters, estimator, loop, guard)
├── outputs/
│   ├── audio/          # Generated WAV outputs
│   └── figures/        # Generated plots
├── report/             # Project report
├── phase0.m            # Voice signal analysis and fine-grid resampling
├── phase1.m            # DAC/ADC modeling, SOS filter design, and quantisation
├── phase2.m            # Room acoustics, talker echo, and howling demonstration
├── phase3.m            # Equivalent discrete-time channel identification
├── phase4.m            # Least-squares channel estimation and regularisation
├── phase5.m            # Full-duplex echo cancellation and double-talk evaluation
├── phase6.m            # Closed-loop stability, notch filters, and howling guard
└── bonus.m             # Real-room laptop testing and adaptive extensions
