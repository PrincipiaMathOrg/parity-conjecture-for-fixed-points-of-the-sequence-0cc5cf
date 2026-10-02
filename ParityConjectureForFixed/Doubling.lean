module

public import Mathlib

public section

/-!
# Doubling

The first step of the proof, moved into the library by the upload-link check (2026-10-02): a module
pushed with git rather than typed into a tool call.
-/

namespace ParityConjectureForFixed

/-- `2 * (m n (n-1) / 2) = m n (n-1)`: the division is exact because `n (n-1)` is even. -/
theorem two_mul_half (m n : ℕ) : 2 * (m * n * (n - 1) / 2) = m * n * (n - 1) := by
  have h : 2 ∣ m * n * (n - 1) := by
    rw [mul_assoc]
    exact Dvd.dvd.mul_left (even_iff_two_dvd.mp (Nat.even_mul_pred_self n)) m
  exact Nat.mul_div_cancel' h

end ParityConjectureForFixed
