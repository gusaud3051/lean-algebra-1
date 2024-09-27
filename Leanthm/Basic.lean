import Mathlib.Algebra.Polynomial.Basic
import Mathlib.Algebra.Polynomial.Degree.Definitions
import Mathlib.Algebra.Polynomial.Eval
import Mathlib.Algebra.Ring.Defs
import Mathlib.Data.Int.GCD
import Mathlib.Data.Int.Cast.Lemmas
import Mathlib.Tactic.Polyrith
#find Semiring
-- #set_option diagnostics true

theorem poly_c₀_div_d_cₙ_div_c {f : Polynomial ℤ} {c d : ℤ}
  (h_coprime : Int.gcd c d = 1) (h_d_nonzero : d ≠ 0)
  (h_root : f.eval₂ (Int.castRingHom ℚ) (c / d : ℚ) = 0) :
  c ∣ f.coeff 0 ∧ d ∣ f.leadingCoeff := by
    have h :  f.coeff 0  = - (f.erase 0).eval₂ (Int.castRingHom ℚ) (c / d : ℚ)   := by sorry
    rw ← [f.coeff 0]
