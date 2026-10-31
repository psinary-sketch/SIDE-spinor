# SIDE-spinor

SIDE-spinor compiles, over Mathlib, statements in ℕ, ℚ, ℝ and ℂ. The list [3, 2, 1, 0, 1, 2, 3] sums to 12 (spectral_volume); the defined 1 + 6 = 7, and 1/7 (aperture_decomp, aperture); |i|² = 1, i² = −1 and i⁴ = 1 (phase_unit, spinor_sq, spinor_order_four); i·w = w only at w = 0 for complex w (orbit_collapse_iff); and σ = 1/2 iff σ − 1/2 = 0 for real σ. Its headline statements, at v0.1.0 = b235bc6:

    theorem spinor_forces_half (w : ℂ) (h : Complex.I * w = w) : w = 0
    theorem half_iff_centered_zero (σ : ℝ) : σ = 1 / 2 ↔ σ - 1 / 2 = 0

The observable M = vv†, its spectrum and its phase invariance are the Spinor/Information path's (Paper 020); the kernel compiles none of them, and no statement in it links the complex w to the real σ.

J. York Seale — https://orcid.org/0009-0008-7993-0310

## What it proves

The Spinor/Information path (Paper 020; IDENTITY_SUBSPACE_PAPER; THE_SPINOR_CALIBRATION) reaches sigma = 1/2 through the phase-invariant Hermitian observable M = vv-dagger on C^7.

Three groups of the compiled statements, named in the path's terms:

- `aperture_decomp` / `aperture` — bright 1 + dark 6 = total 7; aperture = 1/7.
- `spinor_sq` / `spinor_order_four` — T^2 = -I and T^4 = I: the spinor signature (720-degree return).
- `half_iff_centered_zero` — the centered-coordinate link sigma = 1/2 iff sigma - 1/2 = 0.

## What it does NOT claim

An **identification kernel** — same status as Voice1/Voice6/SIDE-frobenius/SIDE-archimedean. It does **not** claim the Hilbert-Polya spectral realization (operator spectrum = Riemann zeros), which is a conjecture; nor does it prove RH alone.

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

*Computational workflow assisted by various LLM instances. Mathematical content, strategies of argument, and editorial decisions are the author's.*