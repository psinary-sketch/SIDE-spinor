# SIDE-spinor

Lean 4 kernel — the Spinor / Information **identification** of sigma = 1/2.

J. York Seale — https://orcid.org/0009-0008-7993-0310

## What it proves

The Spinor/Information path (Paper 020; IDENTITY_SUBSPACE_PAPER; THE_SPINOR_CALIBRATION) reaches sigma = 1/2 through the phase-invariant Hermitian observable M = vv-dagger on C^7. This kernel verifies the algebraic core:

- `spectral_volume` — the squared magnitudes |v_n|^2 = |n| over n in {-3..3} sum to 12 = ||v||^2, the unique nonzero eigenvalue of M.
- `aperture_decomp` / `aperture` — bright 1 + dark 6 = total 7; aperture = 1/7.
- `phase_unit` — |i|^2 = 1, the fact that makes M = vv-dagger invariant under the quarter-twist v to iv.
- `spinor_sq` / `spinor_order_four` — T^2 = -I and T^4 = I: the spinor signature (720-degree return).
- `orbit_collapse_iff` / `spinor_forces_half` — the quarter-twist w to iw fixes only w = 0; in the centered coordinate w = s - 1/2 this is sigma = 1/2.
- `half_iff_centered_zero` — the centered-coordinate link sigma = 1/2 iff sigma - 1/2 = 0.

## What it does NOT claim

An **identification kernel** — same status as Voice1/Voice6/SIDE-frobenius/SIDE-archimedean. It verifies the phase-invariant orbit-collapse *points at* sigma = 1/2. It does **not** claim the Hilbert-Polya spectral realization (operator spectrum = Riemann zeros), which is a conjecture; nor does it prove RH alone.

## Federation context

Checkpoint 1.2-C in the alternative-proof-paths census (`PATHS_TO_THE_CRITICAL_LINE`), filed within the Phase 1.5 wave. Independent federated kernel: own toolchain pin, own Mathlib pin, own deposit. Mathlib-dependent (pinned v4.29.1, reusing the federation cache).

## Build

lake exe cache get
lake build
lake env lean AxiomCheck.lean

Toolchain leanprover/lean4:v4.29.1; Mathlib pinned v4.29.1.

## License

MIT.

## AI disclosure

*Computational workflow assisted by various LLM instances. Mathematical content, proof strategies, and editorial decisions are the author's.*