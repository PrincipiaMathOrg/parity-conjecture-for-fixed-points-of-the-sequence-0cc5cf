module

public import Mathlib
public import ParityConjectureForFixed

public section

-- Assembled by Principia. Lean is the only judge of this file.

-- doubling: proved in the library (ParityConjectureForFixed/Doubling.lean)
theorem principia_step_a572ec36 (m n : ℕ) : 2 * (m * n * (n - 1) / 2) = m * n * (n - 1) :=
  ParityConjectureForFixed.two_mul_half m n

-- cancel
set_option maxHeartbeats 400000 in
theorem principia_step_afdb053f (m n b : ℕ) (hn : 0 < n) (h : m * n * (n - 1) / 2 = n * b) : m * (n - 1) = 2 * b := by
  have h1 := principia_step_a572ec36 m n
  rw [h] at h1
  have h2 : n * (m * (n - 1)) = n * (2 * b) := by
    calc n * (m * (n - 1)) = m * n * (n - 1) := by ring
      _ = 2 * (n * b) := h1.symm
      _ = n * (2 * b) := by ring
  exact Nat.eq_of_mul_eq_mul_left hn h2

-- parity
set_option maxHeartbeats 400000 in
theorem principia_step_6ead028f (m n : ℕ) (hm : Odd m) (hn : 0 < n) (h : n ∣ m * n * (n - 1) / 2) : Odd n := by
  obtain ⟨b, hb⟩ := h
  have h2 := principia_step_afdb053f m n b hn hb
  have he : Even (m * (n - 1)) := ⟨b, by rw [h2]; ring⟩
  rcases Nat.even_mul.mp he with hme | hne
  · exact absurd hme (Nat.not_even_iff_odd.mpr hm)
  · obtain ⟨k, hk⟩ := hne
    exact ⟨k, by omega⟩

-- goal (route A)
set_option maxHeartbeats 400000 in
theorem principia_step_d9a7d629 (p : ℕ) (a : ℕ → ℕ) (hp : Odd p) (ha : ∀ n, 1 ≤ n → a n ∣ p * n * (n - 1) / 2) (n : ℕ) (hn : 1 ≤ n) (hfix : a n = n) : Odd n := by
  have h := ha n hn
  rw [hfix] at h
  exact principia_step_6ead028f p n hp hn h

theorem principia_goal :
  ∀ (p : ℕ) (a : ℕ → ℕ) (hp : Odd p) (ha : ∀ n, 1 ≤ n → a n ∣ p * n * (n - 1) / 2) (n : ℕ) (hn : 1 ≤ n) (hfix : a n = n),
  Odd n := @principia_step_d9a7d629
