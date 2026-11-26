# Digital Echo Canceller for a Hands-Free Sound System

**Course:** Signal Processing (Fall 2026)  
**Institution:** Cairo University, Faculty of Engineering — Electronics and Electrical Communications Engineering Department  
**Instructors:** Prof. Michael and Dr. Mohammed Abdelghany  

> **Academic Integrity Notice:** Keep this repository **Private** and shared only among team members (2–3 students). Sharing code or report text between teams is not allowed.

---

## Overview

This project designs, simulates, and evaluates a digital echo canceller and howling guard sitting between the ADC and DAC of a hands-free sound system. The system models both the discrete-time digital domain ($f_s$) and the continuous-time analog world (fine grid $F_a = \text{OSR} \cdot f_s$) across Phases 0–6 (plus optional Bonus A/B).

## Repository Structure

```text
digital-echo-canceller/
├── data/                   # Original unchanged files: ResearcherA.wav, ResearcherB.wav, room_A.txt, room_B.txt
├── docs/                   # Project handout and companion readings (PDFs)
├── functions/              # Reusable MATLAB/Octave functions (converters, filters, estimator, loop, guard)
├── outputs/
│   ├── audio/              # Generated .wav deliverables (Phase 5, Phase 6, Bonus A)
│   └── figures/            # Exported report figures
├── report/                 # Report source files and final PDF
├── phase0.m                # Phase 0: The two voices (Q1–Q6)
├── phase1.m                # Phase 1: DAC and ADC (Q7–Q16)
├── phase2.m                # Phase 2: The room & the problem (Q17–Q23)
├── phase3.m                # Phase 3: The channel from x to d (Q24–Q30)
├── phase4.m                # Phase 4: Channel estimation (Q31–Q37)
├── phase5.m                # Phase 5: Echo cancellation (Q38–Q43)
├── phase6.m                # Phase 6: The closed loop & howling guard (Q44–Q54)
├── bonus.m                 # Optional Bonus A (real room) & Bonus B (extensions)
├── .gitignore
└── README.md
```

## Baseline Configuration (Phases 2–6)

| Parameter | Value |
|---|---|
| Converter sampling rate ($f_s$) | 16 kHz |
| Audio band ($f_p$) | 7.2 kHz |
| Analog fine grid ($F_a$, OSR) | 192 kHz (OSR = 12) |
| DAC / ADC resolution ($B_D, B_A$) | 14 bits (gainless quantisers, static AGC with $p=0$) |
| Reconstruction & AA filters | 5th-order elliptic ($R_p = 1$ dB, $R_s = 40$ dB), stored as SOS |
| Room | `room_A.txt` (baseline), `room_B.txt` (moved mic), ERL = 6 dB |
| Echo-to-Noise Ratio (ENR) | 30 dB at ADC output |
| Channel model length ($N$) | 1024 taps (64 ms) |
| Training signal | White noise, RMS 0.25, $M = 32{,}000$ samples (2 s) |
| Closed-loop far-end return | $g = 1$ (0 dB), $D = 1600$ samples (100 ms) |

## Setup & Usage

1. Place the original course files in `data/`:
   - `ResearcherA.wav`
   - `ResearcherB.wav`
   - `room_A.txt`
   - `room_B.txt`
2. Place the PDFs (`echo_canceller_project_student.pdf`, `filter_structures_sos.pdf`, `room_channel_model.pdf`) in `docs/`.
3. Open MATLAB (with Signal Processing Toolbox) or GNU Octave in the repository root and run any phase script (`phase0.m` through `phase6.m`). Each script adds `functions/` to the path automatically.

## Key Project Rules

- **Keep `data/` read-only:** Never overwrite the provided `.wav` or `room_*.txt` files, and do not regenerate the room files.
- **No built-in rate conversion:** Do not use `resample`, `interp`, `decimate`, `upsample`, `downsample`, `interp1`, or `spline`.
- **Second-order sections (SOS) only:** Design IIR filters in zero-pole-gain form (`[z,p,k]`), convert with `zp2sos`, and filter with `sosfilt`. Never use `[b,a]` with `filter` for the fine-grid IIR filters.
- **Reproducibility:** Each `phaseX.m` script must reproduce all figures and numbers for that phase without manual steps.
