module

public import Mathlib

public section

/-!
# Challenge

The statement of "Formalise the parity theorem for fixed points of A(p)", fixed before the proof was written.
Solution.lean proves the declaration below with exactly this type; comparator.json names it.
The `sorry` here is deliberate: this file states, it does not prove.
-/

theorem principia_goal :
  ∀ (p : ℕ) (a : ℕ → ℕ) (hp : Odd p) (ha : ∀ n, 1 ≤ n → a n ∣ p * n * (n - 1) / 2) (n : ℕ) (hn : 1 ≤ n) (hfix : a n = n),
  Odd n := by
  sorry
