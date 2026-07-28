/-
  SIDE-spinor · SpinorLeg.lean
  ============================

  The Spinor Leg — the metaplectic quarter-twist route to −1.

  W-REVIEWER-LENS: the completion of THE_SUBSTRATE.md §(ii).4's one open item.

  The calibration constant −1 has TWO disjoint derivations:

  • Route A (arithmetic / Frobenius; `SIDE-spinor-calibration/FrobeniusCalibration.lean`,
    vanilla Lean 4 / Int, no Mathlib): −1 = ‖v‖²·ζ(−1) = 12·(−1/12) = −g(2,3), through
    the {2,3}-smooth fiber norm ‖v‖² = 12 and ζ(−1) = −1/12.

  • Route B (this file, metaplectic / quarter-twist; Mathlib / ℂ): −1 = W⁴ = T², where
    W is the order-8 metaplectic lift of S (W⁴ = −Id, the cocycle) and T = W² is the
    quarter-twist, acting on the weight-½ spinor line as multiplication by i.

  The two routes share no nontrivial lemma: Route A never touches ℂ or the twist; Route B
  never touches g, ‖v‖², or ζ. In each, −1 is DERIVED, not typed (salt-checked).
-/

import Mathlib

namespace SIDESpinorLeg

/-- The quarter-twist T = W² (metaplectic, order 4) acts on the weight-½ spinor line as
    multiplication by i. -/
def T : ℂ := Complex.I

/-- The spinor signature: the quarter-twist squared is −1 — the metaplectic cocycle value
    W⁴ = −Id read on the spinor line. DERIVED (i² = −1), not stipulated. -/
theorem spinor_signature : T ^ 2 = -1 := Complex.I_sq

/-- The quarter-twist has order 4: T⁴ = 1. -/
theorem quarter_twist_order_four : T ^ 4 = 1 := by
  have : T ^ 4 = (T ^ 2) ^ 2 := by ring
  rw [this, spinor_signature]; ring

/-- The metaplectic cocycle: any order-8 lift W with W² = T (the quarter-twist) satisfies
    W⁴ = −1. So −1 is the fourth power of the metaplectic generator — the cocycle value. -/
theorem metaplectic_cocycle (W : ℂ) (hW : W ^ 2 = T) : W ^ 4 = -1 := by
  have h4 : W ^ 4 = (W ^ 2) ^ 2 := by ring
  rw [h4, hW]; exact spinor_signature

/-- A concrete order-8 witness: the primitive 8th root ζ₈ = (1+i)/√2 squares to i = T. -/
theorem zeta8_sq_eq_T : ((1 + Complex.I) / (Real.sqrt 2 : ℂ)) ^ 2 = T := by
  rw [div_pow]
  rw [show ((1 : ℂ) + Complex.I) ^ 2 = 2 * Complex.I by
        rw [add_sq, Complex.I_sq]; ring]
  rw [show ((Real.sqrt 2 : ℝ) : ℂ) ^ 2 = 2 by
        rw [← Complex.ofReal_pow, Real.sq_sqrt (by norm_num : (0:ℝ) ≤ 2)]; norm_num]
  unfold T; ring

/-- The concrete witness realizes the cocycle: ζ₈⁴ = −1. The quarter-twist is realized,
    not assumed. -/
theorem zeta8_pow_four : ((1 + Complex.I) / (Real.sqrt 2 : ℂ)) ^ 4 = -1 :=
  metaplectic_cocycle _ zeta8_sq_eq_T

/-- The spinor leg, packaged: the metaplectic route DERIVES −1 both as the quarter-twist
    signature T² and as the fourth power ζ₈⁴ of a concrete order-8 element — the same −1
    the arithmetic route lands, through disjoint machinery. -/
theorem spinor_leg_derives_neg_one :
    T ^ 2 = -1 ∧ ((1 + Complex.I) / (Real.sqrt 2 : ℂ)) ^ 4 = -1 :=
  ⟨spinor_signature, zeta8_pow_four⟩

end SIDESpinorLeg
