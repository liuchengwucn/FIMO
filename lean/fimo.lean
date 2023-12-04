import fimo_import

open_locale big_operators
open_locale nat
open_locale real
open_locale rat
open_locale topological_space

alias real.sqrt <- sqrt
alias int.floor <- floor

theorem fimo_2006_algebra_p1
  (a : ℕ → ℝ)
  (h₀ : ∀ i, a (i + 1) = ⌊a i⌋ * (a i - ⌊a i⌋)) :
  ∃ n : ℕ, ∀ i ≥ n, a i = a (i + 2) :=
begin
  sorry
end

theorem fimo_2006_algebra_p2
  (a : ℕ → ℝ)
  (h₀ : a 0 = -1)
  (h₁ : ∀ n ≥ 1, ∑ k in finset.range (n + 1), a (n - k) / (k + 1) = 0) :
  ∀ n ≥ 1, a n > 0 :=
begin
  sorry
end

theorem fimo_2006_algebra_p4
  (n : ℕ)
  (a : fin n → ℝ)
  (h₀ : ∀ i, 0 < a i) :
  (∑ i in finset.univ, ∑ j in finset.univ.filter (λ j, i < j), (a i * a j) / (a i + a j)) ≤
  (n / (2 * (∑ i in finset.univ, a i))) * (∑ i in finset.univ, ∑ j in finset.univ.filter (λ j, i < j), a i * a j) :=
begin
  sorry
end

theorem fimo_2006_algebra_p5
  (a b c : ℝ)
  (h₀ : a > 0 ∧ b > 0 ∧ c > 0)
  (h₁ : a + b > c ∧ a + c > b ∧ b + c > a) :
  (sqrt (b + c - a) / (sqrt b + sqrt c - sqrt a)) +
  (sqrt (c + a - b) / (sqrt c + sqrt a - sqrt b)) +
  (sqrt (a + b - c) / (sqrt a + sqrt b - sqrt c)) ≤ 3 :=
begin
  sorry
end

theorem fimo_2006_number_theory_p2
  (x y : ℝ)
  (h₀ : 0 < x ∧ x < 1)
  (h₁ : 0 < y ∧ y < 1)
  (h₂ : ∀ n : ℕ, (nat.floor (y * 10^n) % 10) = (nat.floor (x * 10^(2^n)) % 10))
  (h₃ : ∃ a b : ℕ, 0 < b ∧ x = a / b) :
  ∃ c d : ℕ, 0 < d ∧ y = c / d :=
begin
  sorry
end

theorem fimo_2006_number_theory_p5 :
  ¬ (∃ (x y : ℤ), (x^7 - 1) / (x - 1) = y^5 - 1) :=
begin
  sorry
end

theorem fimo_2006_number_theory_p7 (n : ℕ) (h₀ : 0 < n) :
  ∃ m, (2^m + m) % n = 0 :=
begin
  sorry
end

theorem fimo_2007_algebra_p2
  (f : ℕ → ℕ)
  (h₀ : ∀ m n, f (m + n) ≥ f m + f (f n) - 1) :
  ∃ k, 1 ≤ k ∧ k ≤ 2008 ∧ f 2007 = k :=
begin
  sorry
end

theorem fimo_2007_algebra_p3
  (n : ℕ)
  (x y : ℝ)
  (h₀ : 0 < n)
  (h₁ : 0 < x ∧ 0 < y)
  (h₂ : x^n + y^n = 1) :
  (∑ k in finset.Icc 1 n, (1 + x^(2 * k)) / (1 + x^(4 * k))) *
  (∑ k in finset.Icc 1 n, (1 + y^(2 * k)) / (1 + y^(4 * k))) <
  1 / ((1 - x) * (1 - y)) :=
begin
  sorry
end

theorem fimo_2007_algebra_p4
  (f : ℝ → ℝ)
  (h₀ : ∀ x y, 0 < x ∧ 0 < y → f (x + f y) = f (x + y) + f y)
  (h₁ : ∀ x, 0 < x → 0 < f x) :
  (∀ x, 0 < x → f x = 2 * x) :=
begin
  sorry
end

theorem fimo_2007_algebra_p6
  (a : ℕ → ℝ)
  (h₀ : ∀ i, 0 ≤ a i)
  (h₁ : ∑ i in finset.range 100, (a i)^2 = 1) :
  ∑ i in finset.range 100, (a i)^2 * a ((i + 1) % 100) < 12 / 25 :=
begin
  sorry
end

theorem fimo_2007_number_theory_p1
  (k n : ℕ)
  (h₀ : 0 < k ∧ 0 < n)
  (h₁ : (k^4 + n^2) % (7^k - 3^n) = 0) :
  (k, n) = (2, 4) :=
begin
  sorry
end

theorem fimo_2007_number_theory_p2
  (b n : ℕ)
  (h₀ : 1 < n)
  (h₁ : ∀ k > 1, ∃ a_k : ℕ, (b - a_k^n) % k = 0) :
  ∃ A : ℕ, b = A^n :=
begin
  sorry
end

theorem fimo_2007_number_theory_p3 :
  ∀ (X : finset ℕ),
    (finset.card X = 10000) ∧
    (∀ x ∈ X, x % 47 ≠ 0) →
    ∃ (Y : finset ℕ),
      (finset.card Y = 2007) ∧
      (Y ⊆ X) ∧
      (∀ a b c d e ∈ Y, (a - b + c - d + e) % 47 ≠ 0) :=
begin
  sorry
end

theorem fimo_2007_number_theory_p4
  (k : ℕ)
  (h₀ : 2 ≤ k) :
  (2^(3*k) ∣ (nat.choose (2^(k+1)) (2^k) - nat.choose (2^k) (2^(k-1)))) ∧
  ¬(2^(3*(k+1)) ∣ (nat.choose (2^(k+1)) (2^k) - nat.choose (2^k) (2^(k-1)))) :=
begin
  sorry
end

theorem fimo_2007_number_theory_p5
  (f : ℕ+ → ℕ+)
  (h₀ : ∀ m n p, nat.prime p → (p ∣ f (m + n) ↔ p ∣ (f m + f n))) :
  ∀ n, f n = n :=
begin
  sorry
end

theorem fimo_2007_number_theory_p6
  (k n : ℕ)
  (h₀ : 0 < k) :
  (∃ n, (8 * k * n - 1) ∣ ((4 * k^2 - 1)^2)) ↔ (2 ∣ k) :=
begin
  sorry
end

theorem fimo_2008_algebra_p1
  (f : ℝ → ℝ)
  (h₀ : ∀ x > 0, 0 < f x)
  (h₁ : ∀ p q r s : ℝ, p > 0 → q > 0 → r > 0 → s > 0 → p * q = r * s →
    (f p)^2 + (f q)^2 / (f (r^2)) + (f (s^2)) = (p^2 + q^2) / (r^2 + s^2)) :
  (∀ x > 0, f x = x) ∨ (∀ x > 0, f x = 1 / x) :=
begin
  sorry
end

theorem fimo_2008_algebra_p2_1
  (x y z : ℝ)
  (h₀ : x ≠ 1 ∧ y ≠ 1 ∧ z ≠ 1)
  (h₁ : x * y * z = 1) :
  x^2 / (x - 1)^2 + y^2 / (y - 1)^2 + z^2 / (z - 1)^2 ≥ 1 :=
begin
  sorry
end

theorem fimo_2008_algebra_p3_1 :
  ¬(∃ (f g : ℕ → ℕ),
    (∀ x y, x < y → f x < f y ∧ g x < g y) ∧
    (∀ x, f (g (g x)) < g (f x))) :=
begin
  sorry
end

theorem fimo_2008_algebra_p3_2 :
  ∃ (f g : {x : ℝ // ∃ a b : ℕ, x = a - 1 / b} → {x : ℝ // ∃ a b : ℕ, x = a - 1 / b}),
  (∀ x y : {x : ℝ // ∃ a b : ℕ, x = a - 1 / b}, x < y → f x < f y ∧ g x < g y) ∧
  (∀ x : {x : ℝ // ∃ a b : ℕ, x = a - 1 / b}, f (g (g x)) < g (f x)) :=
begin
  sorry
end

theorem fimo_2008_algebra_p4
  (f : ℤ → ℤ)
  (t : ℤ → ℤ)
  (h₀ : ∀ m, (t m = 1 ∨ t m = 2 ∨ t m = 3) ∧ ∃ n, m + t m = 3 * n)
  (h₁ : f (-1) = 0)
  (h₂ : f 0 = 1)
  (h₃ : f 1 = -1)
  (h₄ : ∀ m n, 0 ≤ m ∧ 0 ≤ n → 2^n > m → f (2^n + m) = f (2^n - t m) - f m) :
  ∀ p, 0 ≤ p → f (3 * p) ≥ 0 :=
begin
  sorry
end

theorem fimo_2008_algebra_p5
  (a b c d : ℝ)
  (h₀ : 0 < a ∧ 0 < b ∧ 0 < c ∧ 0 < d)
  (h₁ : a * b * c * d = 1)
  (h₂ : a + b + c + d > a / b + b / c + c / d + d / a) :
  a + b + c + d < b / a + c / b + d / c + a / d :=
begin
  sorry
end

theorem fimo_2008_algebra_p6
  (f : ℝ → ℕ)
  (h₀ : ∀ x y : ℝ, f (x + 1 / f y) = f (y + 1 / f x)) :
  ∃ n : ℕ, n > 0 ∧ ∀ x : ℝ, f x ≠ n :=
begin
  sorry
end

theorem fimo_2008_algebra_p7_1
  (a b c d : ℝ)
  (h₀ : 0 < a ∧ 0 < b ∧ 0 < c ∧ 0 < d) :
  (a - b) * (a - c) / (a + b + c) + (b - c) * (b - d) / (b + c + d) + (c - d) * (c - a) / (c + d + a) + (d - a) * (d - b) / (d + a + b) ≥ 0 :=
begin
  sorry
end

theorem fimo_2008_algebra_p7_2
  (a b c d : ℝ)
  (h₀ : 0 < a ∧ 0 < b ∧ 0 < c ∧ 0 < d)
  (h₁ : (a - b) * (a - c) / (a + b + c) + (b - c) * (b - d) / (b + c + d) + (c - d) * (c - a) / (c + d + a) + (d - a) * (d - b) / (d + a + b) = 0) :
  a = c ∧ b = d :=
begin
  sorry
end

theorem fimo_2008_number_theory_p1
  (n : ℕ)
  (p : ℕ)
  (a b c : ℤ)
  (h₀ : 0 < n)
  (h₁ : nat.prime p)
  (h₂ : a^n + p * b = b^n + p * c)
  (h₃ : b^n + p * c = c^n + p * a) :
  a = b ∧ b = c ∧ c = a :=
begin
  sorry
end

theorem fimo_2008_number_theory_p2
  (n : ℕ)
  (a : finset ℕ)
  (h₀ : n ≥ 3)
  (h₁ : finset.card a = n) :
  ∃ i j, i ∈ a ∧ j ∈ a ∧ i ≠ j ∧ ∀ k ∈ a, (3 * k) % (i + j) ≠ 0 :=
begin
  sorry
end

theorem fimo_2008_number_theory_p3
  (a : ℕ → ℕ)
  (h₀ : ∀ n, 0 < a n)
  (h₁ : ∀ n, gcd (a n) (a (n + 1)) > a (n - 1)) :
  ∀ n, a n ≥ 2^n :=
begin
  sorry
end

theorem fimo_2008_number_theory_p6 :
  ∃ f : ℕ → ℕ, (∀ i j, i ≠ j → f i ≠ f j) ∧ (∀ n, 0 < f n) ∧ (∀ n, ∃ p, nat.prime p ∧ p > 2 * f n + nat.sqrt (2 * f n) ∧ p ∣ (f n)^2 + 1) :=
begin
  sorry
end

theorem fimo_2009_algebra_p2
  (a b c : ℝ)
  (h₀ : 0 < a ∧ 0 < b ∧ 0 < c)
  (h₁ : 1 / a + 1 / b + 1 / c = a + b + c) :
  1 / (2 * a + b + c)^2 + 1 / (2 * b + c + a)^2 + 1 / (2 * c + a + b)^2 ≤ 3 / 16 :=
begin
  sorry
end

theorem fimo_2009_algebra_p3
  (f : ℕ → ℕ)
  (h₀ : ∀ x y, ∃ (a b c : ℕ),
    a = x ∧
    b = f y ∧
    c = f (y + f x - 1) ∧
    a + b > c ∧
    a + c > b ∧
    b + c > a) :
  ∀ x, f x = x :=
begin
  sorry
end

theorem fimo_2009_algebra_p4
  (a b c : ℝ)
  (h₀ : 0 < a ∧ 0 < b ∧ 0 < c)
  (h₁ : a * b + b * c + c * a ≤ 3 * a * b * c) :
  sqrt ((a^2 + b^2) / (a + b)) + sqrt ((b^2 + c^2) / (b + c)) + sqrt ((c^2 + a^2) / (c + a)) + 3
  ≤ sqrt 2 * (sqrt (a + b) + sqrt (b + c) + sqrt (c + a)) :=
begin
  sorry
end

theorem fimo_2009_algebra_p5
  (f : ℝ → ℝ) :
  ∃ x y, f (x - f y) > y * f x + x :=
begin
  sorry
end

theorem fimo_2009_algebra_p6
  (s : ℕ → ℕ)
  (h₀ : ∀ n, s n < s (n + 1))
  (h₁ : ∀ n, s (s n) - s (s (n - 1)) = s (s 1) - s (s 0))
  (h₂ : ∀ n, s (s n + 1) - s (s (n - 1) + 1) = s (s 1 + 1) - s (s 0 + 1)) :
  ∀ n, s (n + 1) - s n = s 1 - s 0 :=
begin
  sorry
end

theorem fimo_2009_algebra_p7
  (f : ℝ → ℝ)
  (h₀ : ∀ x y, f (x * f (x + y)) = f (y * f x) + x^2) :
  (∀ x, f x = x) ∨ (∀ x, f x = -x) :=
begin
  sorry
end

theorem fimo_2009_number_theory_p4
  (n : ℕ)
  (h₀ : 0 < n)
  (a : ℕ → ℕ)
  (h₁ : ∀ k, 2 ≤ k → k ≤ n - 1 → a (k + 1) = (a k ^ 2 + 1) / (a (k - 1) + 1) - 1) :
  n = 1 ∨ n = 2 ∨ n = 3 ∨ n = 4 :=
begin
  sorry
end

theorem fimo_2009_number_theory_p6
  (k : ℕ)
  (h₀ : 0 < k)
  (a : ℕ → ℤ)
  (h₁ : ∀ n, n ≥ 1 → a n = (a (n - 1) + n^k) / n) :
  (k - 2) % 3 = 0 :=
begin
  sorry
end

theorem fimo_2009_number_theory_p7
  (a b : ℕ)
  (h₀ : 1 < a ∧ a ≠ b)
  (h₁ : 1 < b) :
  ∃ n : ℕ, ¬(is_square ((a^n - 1) * (b^n - 1))) :=
begin
  sorry
end

theorem fimo_2010_algebra_p1
  (f : ℝ → ℝ)
  (h₀ : ∀ x y, f (floor x * y) = f x * floor (f y)) :
  (∃ C : ℝ, (C = 0 ∨ (1 ≤ C ∧ C < 2)) ∧ ∀ x, f x = C) :=
begin
  sorry
end

theorem fimo_2010_algebra_p2
  (a b c d : ℝ)
  (h₀ : a + b + c + d = 6)
  (h₁ : a^2 + b^2 + c^2 + d^2 = 12) :
  36 ≤ 4 * (a^3 + b^3 + c^3 + d^3) - (a^4 + b^4 + c^4 + d^4) ∧
  4 * (a^3 + b^3 + c^3 + d^3) - (a^4 + b^4 + c^4 + d^4) ≤ 48 :=
begin
  sorry
end

theorem fimo_2010_algebra_p3
  (x : ℕ → ℝ)
  (s : ℝ)
  (h₀ : ∀ i, 0 ≤ x i)
  (h₁ : ∀ i, x (i % 100) + x ((i + 1) % 100) + x ((i + 2) % 100) ≤ 1)
  (h₂ : s = ∑ i in finset.range 100, x i * x ((i + 2) % 100)) :
  s ≤ 25 / 2 ∧ ∃ (x : ℕ → ℝ), (∀ i, 0 ≤ x i) ∧ (∀ i, x (i % 100) + x ((i + 1) % 100) + x ((i + 2) % 100) ≤ 1) ∧ (∑ i in finset.range 100, x i * x ((i + 2) % 100)) = 25 / 2 :=
begin
  sorry
end

theorem fimo_2010_algebra_p4
  (x : ℕ → ℤ)
  (h₀ : x 1 = 1)
  (h₁ : ∀ k, k ≥ 1 → x (2 * k) = -x k)
  (h₂ : ∀ k, k ≥ 1 → x (2 * k - 1) = (-1)^(k + 1) * x k) :
  ∀ n, n ≥ 1 → ∑ i in finset.range n, x (i + 1) ≥ 0 :=
begin
  sorry
end

theorem fimo_2010_algebra_p5
  (f : ℚ → ℚ)
  (h₀ : ∀ x y : ℚ, 0 < x ∧ 0 < y → f (f x^2 * y) = x^3 * f (x * y))
  (h₁ : ∀ x : ℚ, 0 < x → 0 < f x) :
  ∀ x : ℚ, 0 < x → f x = 1 / x :=
begin
  sorry
end

theorem fimo_2010_algebra_p6
  (f g : ℕ+ → ℕ+)
  (h₁ : ∀ n, f (g n) = f n + 1)
  (h₂ : ∀ n, g (f n) = g n + 1) :
  ∀ n, f n = g n :=
begin
  sorry
end

theorem fimo_2010_algebra_p8
  (a b c d e f s t : ℝ)
  (h₀ : 0 < a ∧ a < b ∧ b < c ∧ c < d ∧ d < e ∧ e < f)
  (h₁ : s = a + c + e)
  (h₂ : t = b + d + f) :
  2 * s * t > real.sqrt (3 * (s + t) * (s * (b * d + b * f + d * f) + t * (a * c + a * e + c * e))) :=
begin
  sorry
end


theorem fimo_2010_number_theory_p1_1
  (n : ℕ)
  (s : finset ℕ)
  (h₀ : n = finset.card s)
  (h₁ : s = finset.filter (λ x, 0 < x) s)
  (h₂ : (∏ i in s, (1 - 1 / (i:ℝ))) = 51 / 2010) :
  n ≥ 39 :=
begin
  sorry
end

theorem fimo_2010_number_theory_p1_2
  (n : ℕ)
  (s : finset ℕ)
  (h₀ : n = finset.card s)
  (h₁ : s = finset.filter (λ x, 0 < x) s)
  (h₂ : (∏ i in s, (1 - 1 / (i:ℝ))) = 42 / 2010) :
  n ≥ 48 :=
begin
  sorry
end

theorem fimo_2010_number_theory_p2
  (m n : ℕ)
  (h₀ : m^2 + 2 * 3^n = m * (2^(n+1) - 1)) :
  (m, n) = (6, 3) ∨ (m, n) = (9, 3) ∨ (m, n) = (9, 5) ∨ (m, n) = (54, 5) :=
begin
  sorry
end

theorem fimo_2010_number_theory_p5
  (f : ℕ → ℕ)
  (h₀ : ∀ m n : ℕ, 0 < m → 0 < n → is_square ((f m + n) * (m + f n))) :
  ∃ c : ℕ, ∀ n : ℕ, f n = n + c :=
begin
  sorry
end

theorem fimo_2011_algebra_p2
  (x : ℕ → ℕ)
  (a : ℕ)
  (h₀ : ∀ n, ∃ a, ∑ i in finset.range 2011, (i + 1) * x (i + 1)^n = a^(n + 1) + 1)
  (h₁ : ∀ i, 1 ≤ i ∧ i ≤ 2011 → x i > 0) :
  ∃ k, k = 2023065 ∧ ∀ i, 1 ≤ i ∧ i ≤ 2011 → x i = if i = 1 then 1 else k :=
begin
  sorry
end

theorem fimo_2011_algebra_p3
  (f g : ℝ → ℝ)
  (h₀ : ∀ x y, g (f (x + y)) = f x + (2 * x + y) * g y) :
  (∀ x, f x = 0 ∧ g x = 0) ∨ (∃ C : ℝ, (∀ x, f x = x^2 + C) ∧ (∀ x, g x = x)) :=
begin
  sorry
end

theorem fimo_2011_algebra_p6
  (f : ℝ → ℝ)
  (h₀ : ∀ x y, f (x + y) ≤ y * f x + f (f x)) :
  ∀ x ≤ 0, f x = 0 :=
begin
  sorry
end

theorem fimo_2011_algebra_p7
  (a b c : ℝ)
  (h₀ : a > 0 ∧ b > 0 ∧ c > 0)
  (h₁ : min (a + b) (min (b + c) (c + a)) > sqrt 2)
  (h₂ : a^2 + b^2 + c^2 = 3) :
  a / (b + c - a)^2 + b / (c + a - b)^2 + c / (a + b - c)^2 ≥ 3 / (a * b * c)^2 :=
begin
  sorry
end

theorem fimo_2011_number_theory_p3
  (n : ℕ)
  (h₀ : n ≥ 1)
  (h₁ : odd n)
  (f : ℤ → ℤ)
  (h₂ : ∀ x y : ℤ, (f x - f y) ∣ (x^n - y^n)) :
  ∃ (ε : ℤ) (d : ℕ) (c : ℤ), (ε = -1 ∨ ε = 1) ∧ 0 < d ∧ d ∣ n ∧ ∀ x : ℤ, f x = ε * x^d + c :=
begin
  sorry
end

theorem fimo_2011_number_theory_p5
  (f : ℤ → ℤ)
  (h₀ : ∀ m n : ℤ, (f(m) - f(n)) % f(m - n) = 0)
  (h₁ : ∀ x : ℤ, 0 < f(x)) :
  ∀ m n : ℤ, f(m) ≤ f(n) → f(n) % f(m) = 0 :=
begin
  sorry
end

theorem fimo_2011_number_theory_p7
  (p m n : ℕ)
  (k : ℕ)
  (h₀ : nat.prime p)
  (h₁ : p % 2 = 1)
  (h₂ : ∑ k in finset.Icc 1 (p-1), ((3^k : ℕ) / k) + ((4^k : ℕ) / k) - 3 * ((2^k : ℕ) / k) = m / n) :
  p ∣ m :=
begin
  sorry
end

theorem fimo_2012_algebra_p1
  (f : ℤ → ℤ)
  (h₀ : ∀ a b c, a + b + c = 0 → f a ^ 2 + f b ^ 2 + f c ^ 2 = 2 * f a * f b + 2 * f b * f c + 2 * f c * f a) :
  (∃ k : ℤ, k ≠ 0 ∧
    (∀ x, f x = 0) ∨
    (∀ x, f x = k * x^2) ∨
    (∀ x, even x → f x = 0) ∧ (∀ x, odd x → f x = k) ∨
    (∀ x, x % 4 = 0 → f x = 0) ∧ (∀ x, x % 4 = 1 → f x = k) ∧ (∀ x, x % 4 = 2 → f x = 4 * k)) :=
begin
  sorry
end

theorem fimo_2012_algebra_p3
  (n : ℕ)
  (a : fin (n - 1) → ℝ)
  (h₀ : n ≥ 3)
  (h₁ : ∏ i, a i = 1)
  (h₂ : ∀ i, 0 < a i) :
  (∏ i, (1 + a i)^(i.val + 2 : ℕ)) > n^n :=
begin
  sorry
end

theorem fimo_2012_algebra_p5
  (f : ℝ → ℝ)
  (h₀ : ∀ x y, f (1 + x * y) - f (x + y) = f x * f y)
  (h₁ : f (-1) ≠ 0) :
  ∀ x, f x = x - 1 :=
begin
  sorry
end

theorem fimo_2012_algebra_p6
  (f : ℕ → ℕ)
  (h₀ : ∀ n, ∃ k, (f^[2 * k]) n = n + k)
  (k_n : ℕ → ℕ)
  (h₁ : ∀ n, k_n n = nat.find (h₀ n)) :
  ¬∃ M, ∀ n, k_n n ≤ M :=
begin
  sorry
end

theorem fimo_2012_number_theory_p1
  (m n : ℤ)
  (h₀ : m ≠ 0 ∧ n ≠ 0)
  (h₁ : ∀ (A : set ℤ), (m ∈ A ∧ n ∈ A ∧ ∀ (x y : ℤ), x ∈ A → y ∈ A → ∀ (k : ℤ), x^2 + k * x * y + y^2 ∈ A) → A = set.univ) :
  gcd m n = 1 :=
begin
  sorry
end

theorem fimo_2012_number_theory_p2
  (x y z : ℕ)
  (h₀ : 0 < x ∧ 0 < y ∧ 0 < z)
  (h₁ : x ≤ y ∧ y ≤ z)
  (h₂ : x^3 * (y^3 + z^3) = 2012 * (x * y * z + 2)) :
  (x, y, z) = (2, 251, 252) :=
begin
  sorry
end

theorem fimo_2012_number_theory_p3
  (m : ℕ)
  (h₀ : 2 ≤ m)
  (h₁ : ∀ n, m / 3 ≤ n → n ≤ m / 2 → n ∣ nat.choose n (m - 2 * n)) :
  nat.prime m :=
begin
  sorry
end

theorem fimo_2012_number_theory_p4_1 :
  let friendly (a : ℕ) : Prop :=
    ∃ m n : ℕ, 0 < m ∧ 0 < n ∧ (m^2 + n) * (n^2 + m) = a * (m - n)^3 in
  finset.card {a ∈ finset.Icc 1 2012 | friendly a} ≥ 500 :=
begin
  sorry
end

theorem fimo_2012_number_theory_p4_2 :
  ¬(∃ (m n : ℕ), 0 < m ∧ 0 < n ∧ (m^2 + n) * (n^2 + m) = 2 * (m - n)^3) :=
begin
  sorry
end

theorem fimo_2012_number_theory_p6
  (x y : ℕ)
  (n : ℕ)
  (h₀ : 0 < x)
  (h₁ : 0 < y)
  (h₂ : ∀ (n : ℕ), (x^(2^n) - 1) % (2^n * y + 1) = 0) :
  x = 1 :=
begin
  sorry
end

theorem fimo_2012_number_theory_p7
  (n : ℕ)
  (a : finset ℕ)
  (h₀ : finset.card a = n)
  (h₁ : ∑ i in a, (1 / 2^i) = 1)
  (h₂ : ∑ i in a, ((i+1) / 3^i) = 1) :
  n = 1 ∨ n = 2 :=
begin
  sorry
end

theorem fimo_2012_number_theory_p8
  (p r a b : ℤ)
  (h₀ : prime p)
  (h₁ : p > 100) :
  ∃ a b, p ∣ (a^2 + b^5 - r) :=
begin
  sorry
end

theorem fimo_2013_algebra_p1
  (n : ℕ)
  (a : ℕ → ℝ)
  (u v : ℕ → ℝ)
  (h₀ : u 0 = 1 ∧ u 1 = 1 ∧ v 0 = 1 ∧ v 1 = 1)
  (h₁ : ∀ k : ℕ, k < n - 1 → u (k + 2) = u (k + 1) + a k * u k)
  (h₂ : ∀ k : ℕ, k < n - 1 → v (k + 2) = v (k + 1) + a (n - 2 - k) * v k) :
  u n = v n :=
begin
  sorry
end

theorem fimo_2013_algebra_p2
  (s : finset ℝ)
  (h₀ : s.card = 2000) :
  ∃ a b c d ∈ s, a ≠ c ∨ b ≠ d ∧ a > b ∧ c > d ∧ abs (((a - b) / (c - d) - 1) : ℝ) < 1 / 100000 :=
begin
  sorry
end

theorem fimo_2013_algebra_p3
  (f : ℚ → ℝ)
  (a : ℚ)
  (h₀ : a > 1)
  (h₁ : f a = a)
  (h₂ : ∀ x y : ℚ, 0 < x → 0 < y → f x * f y ≥ f (x * y))
  (h₃ : ∀ x y : ℚ, 0 < x → 0 < y → f (x + y) ≥ f x + f y) :
  ∀ x : ℚ, 0 < x → f x = x :=
begin
  sorry
end

theorem fimo_2013_algebra_p4
  (n : ℕ)
  (a : ℕ → ℕ)
  (h₀ : n > 0)
  (h₁ : ∀ i, 1 ≤ i ∧ i ≤ n → a i > 0)
  (h₁' : ∀ i, i ≥ 1 → a (n + i) = a i)
  (h₂ : ∀ i, 1 ≤ i ∧ i < n → a i ≤ a (i + 1))
  (h₃ : a n ≤ a 1 + n)
  (h₄ : ∀ i, 1 ≤ i ∧ i ≤ n → a (a i) ≤ n + i - 1) :
  ∑ i in finset.range n, a (i + 1) ≤ n^2 :=
begin
  sorry
end

theorem fimo_2013_algebra_p5
  (f : ℕ → ℕ)
  (h₀ : ∀ n, f (f (f n)) = f (n + 1) + 1) :
  (∀ n, f n = n + 1) ∨
  (∀ n, (n % 4 = 0 ∨ n % 4 = 2) → f n = n + 1) ∧
  (∀ n, n % 4 = 1 → f n = n + 5) ∧
  (∀ n, n % 4 = 3 → f n = n - 3) :=
begin
  sorry
end

theorem fimo_2013_algebra_p6
  (m : ℤ)
  (h₀ : m ≠ 0)
  (P : polynomial ℝ)
  (h₁ : ∀ x : ℝ, (x^3 - m * x^2 + 1) * (P.eval (x + 1)) + (x^3 + m * x^2 + 1) * (P.eval (x - 1)) = 2 * (x^3 - m * x + 1) * (P.eval x)) :
  ∃ t : ℝ, ∀ x : ℝ, P.eval x = t * x :=
begin
  sorry
end

theorem fimo_2013_number_theory_p1
  (f : ℕ+ → ℕ+)
  (h₀ : ∀ (m n : ℕ+), (m^2 + f n) ∣ (m * f m + n)) :
  f = (λ n, n) :=
begin
  sorry
end

theorem fimo_2013_number_theory_p2
  (k n : ℕ+):
  ∃ (m : ℕ → ℕ+), (∏ i in finset.range k.val, (1 + 1 / (m i:ℝ))) = 1 + (2^k.val - 1) / n :=
begin
  sorry
end

theorem fimo_2013_number_theory_p6
  (f : ℚ → ℤ)
  (h₀ : ∀ (x : ℚ) (a : ℤ) (b : ℕ), 0 < b → f ((f x + a) / b) = f ((x + a) / b)) :
  (∃ c : ℤ, ∀ x : ℚ, f x = c) ∨
  (∀ x : ℚ, f x = ⌊x⌋) ∨
  (∀ x : ℚ, f x = ⌈x⌉) :=
begin
  sorry
end

theorem fimo_2014_algebra_p1
  (z : ℕ → ℕ)
  (h₀ : ∀ n, z n < z (n + 1))
  (h₁ : ∀ n, 0 < z n) :
  ∃! n, n ≥ 1 ∧ z n < (finset.sum (finset.range (n + 1)) z) / n ∧ (finset.sum (finset.range (n + 1)) z) / n ≤ z (n + 1) :=
begin
  sorry
end

theorem fimo_2014_algebra_p2
  (f : ℝ → ℝ)
  (a b : ℝ)
  (a_n b_n : ℕ → ℝ)
  (h₀ : 0 < a ∧ a < b ∧ b < 1)
  (h₁ : ∀ x < 1 / 2, f x = x + 1 / 2)
  (h₂ : ∀ x ≥ 1 / 2, f x = x^2)
  (h₃ : a_n 0 = a)
  (h₄ : b_n 0 = b)
  (h₅ : ∀ n > 0, a_n n = f (a_n (n - 1)))
  (h₆ : ∀ n > 0, b_n n = f (b_n (n - 1))) :
  ∃ n : ℕ, (a_n n - a_n (n - 1)) * (b_n n - b_n (n - 1)) < 0 :=
begin
  sorry
end

theorem fimo_2014_algebra_p4
  (f : ℤ → ℤ)
  (h₀ : ∀ m n, f (f m + n) + f m = f n + f (3 * m) + 2014) :
  f = (λ n, 2 * n + 1007) :=
begin
  sorry
end

theorem fimo_2014_algebra_p5
  (P : polynomial ℝ)
  (h₀ : ∀ x y, (abs (y^2 - (P.eval x)) ≤ 2 * abs x) ↔ (abs (x^2 - (P.eval y)) ≤ 2 * abs y)) :
  P.eval 0 ∈ set.Iio (0:ℝ) ∪ {1} :=
begin
  sorry
end

theorem fimo_2014_algebra_p6
  (f : ℤ → ℤ)
  (h₀ : ∀ n, n^2 + 4 * f n = (f (f n))^2) :
  (∀ n, f n = n + 1) ∨
  (∃ a : ℤ, a ≥ 1 ∧ (∀ n, f n = if n > -a then n + 1 else -n + 1)) ∨
  (∀ n, f n = if n > 0 then n + 1 else if n = 0 then 0 else -n + 1) :=
begin
  sorry
end

theorem fimo_2014_number_theory_p1
  (n : ℕ)
  (h₀ : n ≥ 2)
  (A_n : finset ℕ := finset.image (λ k, 2^n - 2^k) (finset.range n))
  (M : ℕ := (n - 2) * 2^n + 1) :
  (∀ x < M, ∃ (s : multiset ℕ), s ∈ multiset.powerset (A_n.val) ∧ multiset.sum s = x) ∧
  (∀ (s : multiset ℕ), s ∈ multiset.powerset (A_n.val) → multiset.sum s ≠ M) :=
begin
  sorry
end

theorem fimo_2014_number_theory_p5
  (p x y : ℕ)
  (h₀ : nat.prime p)
  (h₁ : ∃ k : ℕ, x^(p-1) + y = p^k)
  (h₂ : ∃ k : ℕ, x + y^(p-1) = p^k) :
  (p = 3 ∧ x = 2 ∧ y = 5) ∨ (p = 3 ∧ x = 5 ∧ y = 2) ∨
  (∃ n k : ℕ, p = 2 ∧ 0 < n ∧ n < 2^k ∧ x = n ∧ y = 2^k - n) :=
begin
  sorry
end

theorem fimo_2014_number_theory_p7
  (c n : ℕ)
  (a : ℕ → ℕ)
  (h₀ : c ≥ 1)
  (h₁ : a 1 = c)
  (h₂ : ∀ n, a (n + 1) = a n ^ 3 - 4 * c * a n ^ 2 + 5 * c ^ 2 * a n + c) :
  ∃ p, nat.prime p ∧ p ∣ a n ∧ (∀ k < n, ¬(p ∣ a k)) :=
begin
  sorry
end

theorem fimo_2015_algebra_p1
  (a : ℕ → ℝ)
  (h₀ : ∀ k, 0 < a k)
  (h₁ : ∀ k, a (k + 1) ≥ k * a k / (a k^2 + (k - 1)))
  (n : ℕ)
  (h₂ : n ≥ 2) :
  ∑ i in finset.Icc 1 n, a i ≥ n :=
begin
  sorry
end

theorem fimo_2015_algebra_p2
  (f : ℤ → ℤ)
  (h₀ : ∀ x y, f (x - f y) = f (f x) - f y - 1) :
  (∀ x, f x = -1) ∨ (∀ x, f x = x + 1) :=
begin
  sorry
end

theorem fimo_2015_algebra_p4
  (f : ℝ → ℝ)
  (h₀ : ∀ x y, f (x + f (x + y)) + f (x * y) = x + f (x + y) + y * f x) :
  (∀ x, f x = x) ∨ (∀ x, f x = 2 - x) :=
begin
  sorry
end

theorem fimo_2015_algebra_p5
  (f : ℤ → ℤ)
  (h₀ : ∀ x, odd (f x))
  (h₁ : ∀ x y, f (x + f x + y) + f (x - f x - y) = f (x + y) + f (x - y)) :
  ∀ x, ∃ (d : ℕ) (k : ℤ) (ℓ : fin d → ℤ),
    odd d ∧
    (∀ i : fin d, odd (ℓ i)) ∧
    (∃ m (i : fin d), x = m * d + i ∧ f x = 2 * k * m * d + ℓ i * d) :=
begin
  sorry
end

theorem fimo_2015_number_theory_p2
  (a b k : ℕ)
  (h₀ : 0 < a)
  (h₁ : 0 < b)
  (h₂ : a! * b! = k * (a! + b!)) :
  3 * a ≥ 2 * b + 2 :=
begin
  sorry
end

theorem fimo_2015_number_theory_p4 :
  ∀ (a b : ℕ → ℕ),
  (a 0 ≥ 2 ∧ b 0 ≥ 2) →
  (∀ n, a (n + 1) = gcd (a n) (b n) + 1 ∧ b (n + 1) = lcm (a n) (b n) - 1) →
  ∃ (N t : ℕ), t > 0 ∧ ∀ n, n ≥ N → a (n + t) = a n :=
begin
  sorry
end

theorem fimo_2015_number_theory_p5
  (a b c : ℕ)
  (h₀ : 0 < a ∧ 0 < b ∧ 0 < c)
  (h₁ : ∃ n : ℕ, a * b - c = 2^n)
  (h₂ : ∃ m : ℕ, b * c - a = 2^m)
  (h₃ : ∃ k : ℕ, c * a - b = 2^k) :
  (a, b, c) = (2, 2, 2) ∨ (a, b, c) = (2, 2, 3) ∨ (a, b, c) = (2, 3, 2) ∨ (a, b, c) = (3, 2, 2) ∨ (a, b, c) = (2, 6, 11) ∨ (a, b, c) = (2, 11, 6) ∨ (a, b, c) = (6, 2, 11) ∨ (a, b, c) = (6, 11, 2) ∨ (a, b, c) = (11, 2, 6) ∨ (a, b, c) = (11, 6, 2) ∨ (a, b, c) = (3, 5, 7) ∨ (a, b, c) = (3, 7, 5) ∨ (a, b, c) = (5, 3, 7) ∨ (a, b, c) = (5, 7, 3) ∨ (a, b, c) = (7, 3, 5) ∨ (a, b, c) = (7, 5, 3) :=
begin
  sorry
end

theorem fimo_2016_algebra_p1
  (a b c : ℝ)
  (h₀ : 0 < a ∧ 0 < b ∧ 0 < c)
  (h₁ : min (a * b) (min (b * c) (c * a)) ≥ 1) :
  (a^2 + 1) * (b^2 + 1) * (c^2 + 1) ≤ (((a + b + c) / 3)^2 + 1)^(3) :=
begin
  sorry
end

theorem fimo_2016_algebra_p2
  (C : ℝ)
  (a : fin 5 → ℝ)
  (h₀ : ∀ i j k l, i ≠ j ∧ i ≠ k ∧ i ≠ l ∧ j ≠ k ∧ j ≠ l ∧ k ≠ l → abs (a i / a j - a k / a l) ≤ C)
  (h₁ : ∀ i j k l, i ≠ j ∧ i ≠ k ∧ i ≠ l ∧ j ≠ k ∧ j ≠ l ∧ k ≠ l → 0 < a i ∧ 0 < a j ∧ 0 < a k ∧ 0 < a l) :
  C ≥ 1 / 2 :=
begin
  sorry
end

theorem fimo_2016_algebra_p3
  (n : ℕ)
  (a b x : fin n → ℝ)
  (h₀ : n ≥ 3)
  (h₁ : ∀ k, abs (a k) + abs (b k) = 1)
  (h₂ : ∀ k, x k = -1 ∨ x k = 1)
  (h₃ : abs (∑ k, x k * a k) + abs (∑ k, x k * b k) ≤ 1) :
  odd n :=
begin
  sorry
end

theorem fimo_2016_algebra_p4
  (f : ℝ → ℝ)
  (h₀ : ∀ x y, 0 < x ∧ 0 < y → x * f (x^2) * f (f y) + f (y * f x) = f (x * y) * (f (f (x^2)) + f (f (y^2))))
  (h₁ : ∀ x, 0 < x → 0 < f x) :
  ∀ x, 0 < x → f x = 1 / x :=
begin
  sorry
end

theorem fimo_2016_algebra_p5_1
  (n : ℕ)
  (h₀ : 0 < n) :
  ∃ a b : ℕ, 0 < b ∧ b ≤ n.sqrt + 1 ∧ n.sqrt ≤ a / b ∧ a / b ≤ (n + 1).sqrt :=
begin
  sorry
end

theorem fimo_2016_algebra_p5_2 :
  ∀ N : ℕ, ∃ n : ℕ, n > N ∧ ∀ a b : ℤ, 0 < b ∧ b ≤ int.sqrt n → ¬(int.sqrt n ≤ a / b ∧ a / b ≤ int.sqrt (n + 1)) :=
begin
  sorry
end

theorem fimo_2016_algebra_p7
  (f : ℝ → ℝ)
  (h₀ : f 0 ≠ 0)
  (h₁ : ∀ x y : ℝ, (f (x + y))^2 = 2 * f x * f y + max (f (x^2) + f (y^2)) (f (x^2 + y^2))) :
  (∀ x : ℝ, f x = -1) ∨ (∀ x : ℝ, f x = x - 1) :=
begin
  sorry
end

theorem fimo_2016_algebra_p8
  (n : ℕ)
  (x : ℕ → ℝ)
  (a : ℝ)
  (h₀ : n ≥ 1)
  (h₁ : x 0 = 0 ∧ ∀ i, 0 ≤ i ∧ i < n → x i < x (i + 1))
  (h₂ : ∑ i in finset.range n, (1 / (x (i + 1) - x i)) ≥ a * (∑ i in finset.range n, ((i + 2) / x (i + 1)))):
  a ≤ 4 / 9 :=
begin
  sorry
end

theorem fimo_2016_number_theory_p2
  (n : ℕ)
  (h₀ : 0 < n)
  (f : ℕ → ℕ := λ n, finset.card (nat.divisors n))
  (f₁ : ℕ → ℕ := λ n, finset.card (finset.filter (λ x, x % 3 = 1) (nat.divisors n))) :
  (∃ k : ℕ, k > 1 ∧ (f (10 * n) / f₁ (10 * n) = k)) ↔ (n = 2 ∨ n ∈ finset.filter (λ x, ¬nat.prime x) (finset.range (n + 1))) :=
begin
  sorry
end

theorem fimo_2016_number_theory_p3
  (a b : ℕ)
  (h₀ : 0 < a ∧ 0 < b)
  (h₁ : ∀ x ∈ finset.Icc a (a + b), gcd (x^2 + x + 1) (finset.prod (finset.erase (finset.Icc a (a + b)) x) (λ y, y^2 + y + 1)) ≠ 1) :
  b + 1 ≥ 6 :=
begin
  sorry
end

theorem fimo_2016_number_theory_p4
  (n m k l : ℕ)
  (h₀ : n ≠ 1)
  (h₁ : n^k + m * n^l + 1 ∣ n^(k + l) - 1)
  (h₂ : n > 0 ∧ m > 0 ∧ k > 0 ∧ l > 0) :
  (m = 1 ∧ l = 2 * k) ∨ (l ∣ k ∧ m = (n^(k - l) - 1) / (n^l - 1)) :=
begin
  sorry
end

theorem fimo_2016_number_theory_p5
  (a : ℕ)
  (h₀ : ¬(∃ n : ℕ, a = n^2))
  (A : set ℕ := {k | ∃ x y : ℕ, (x : ℤ) > int.sqrt a ∧ k = (x^2 - a) / (x^2 - y^2)})
  (B : set ℕ := {k | ∃ x y : ℕ, 0 ≤ x ∧ (x : ℤ) < int.sqrt a ∧ k = (x^2 - a) / (x^2 - y^2)}) :
  A = B :=
begin
  sorry
end

theorem fimo_2016_number_theory_p6
  (f : ℕ → ℕ)
  (h₀ : ∀ m n : ℕ, 0 < m → 0 < n → (f m + f n - m * n) ∣ (m * f m + n * f n) ∧ (f m + f n - m * n) ≠ 0) :
  ∀ n : ℕ, 0 < n → f n = n^2 :=
begin
  sorry
end

theorem fimo_2017_algebra_p1
  (a : ℕ → ℕ)
  (n k M : ℕ)
  (h₀ : (∀ i, 0 < a i) ∧ 0 < k ∧ 0 < M)
  (h₁ : ∑ i in finset.range n, (1 / a i) = k)
  (h₂ : ∏ i in finset.range n, a i = M)
  (h₃ : M > 1)
  (P : ℝ → ℝ)
  (h₄ : ∀ x, P x = M * (x + 1)^k - ∏ i in finset.range n, (x + a i)) :
  ∀ x > 0, P x ≠ 0 :=
begin
  sorry
end

theorem fimo_2017_algebra_p2
  (q : ℝ)
  (napkin : finset ℝ)
  (h₀ : napkin.card = 10)
  (first_line : finset ℝ)
  (h₁ : ∀ a b ∈ napkin, a - b ∈ first_line)
  (second_line : finset ℝ)
  (h₂ : ∀ a b ∈ first_line, q * a * b ∈ second_line)
  (third_line : finset ℝ)
  (h₃ : ∀ a b c d ∈ first_line, a^2 + b^2 - c^2 - d^2 ∈ third_line)
  (h₄ : ∀ x ∈ second_line, x ∈ third_line) :
  q = -2 ∨ q = 0 ∨ q = 2 :=
begin
  sorry
end

theorem fimo_2017_algebra_p3
  {S : Type}
  [fintype S]
  (f : S → S)
  (A : set (S → S))
  (h₀ : A = {g : S → S | g ≠ f})
  (h₁ : ∀ g ∈ A, (f ∘ g ∘ f) ≠ (g ∘ f ∘ g))
  (T : set S)
  (h₂ : T = set.range f) :
  set.range (f ∘ f) = T :=
begin
  sorry
end

theorem fimo_2017_algebra_p6
  (f : ℝ → ℝ)
  (h₀ : ∀ x y, f (f x * f y) + f (x + y) = f (x * y)) :
  (∀ x, f x = 0) ∨ (∀ x, f x = x - 1) ∨ (∀ x, f x = 1 - x) :=
begin
  sorry
end

theorem fimo_2017_algebra_p7
  (a b : ℕ → ℤ)
  (h₀ : a 0 = 0)
  (h₁ : a 1 = 1)
  (h₂ : ∀ n, b n > 0)
  (h₃ : ∀ n, a (n + 1) = if b n = 1 then a n * b (n + 1) + a (n - 1) else a n * b (n + 1) - a (n - 1)) :
  a 2017 ≥ 2017 ∨ a 2018 ≥ 2017 :=
begin
  sorry
end

theorem fimo_2017_algebra_p8
  (f : ℝ → ℝ)
  (h₀ : ∀ x y, (f x + y) * (f y + x) > 0 → f x + y = f y + x) :
  ∀ x y, x > y → f x + y ≤ f y + x :=
begin
  sorry
end

theorem fimo_2017_number_theory_p3
  (n : ℕ)
  (h₀ : 2 ≤ n)
  (h₁ : ∀ (a : ℕ → ℤ), (∑ k in finset.range n, a k) % (n : ℤ) ≠ 0 →
         ∃ i, 1 ≤ i ∧ i ≤ n ∧
         ∀ j, 0 ≤ j ∧ j < n → ((n : ℤ) ∣ (a ((i + j) % n) + ∑ k in finset.range j, a ((i + k) % n))) = false) :
  nat.prime n :=
begin
  sorry
end

theorem fimo_2017_number_theory_p8
  (p : ℕ)
  (h₀ : nat.prime p)
  (h₁ : p % 2 = 1)
  (f : ℕ × ℕ → ℝ)
  (h₂ : f (1, 1) = 0)
  (h₃ : ∀ a b, gcd a b = 1 → a ≠ 1 ∨ b ≠ 1 → f (a, b) + f (b, a) = 1)
  (h₄ : ∀ a b, gcd a b = 1 → f (a + b, b) = f (a, b))
  (h₅ : ∀ a b, f (a, b) = 0 ∨ f (a, b) = 1) :
  ∑ n in finset.Icc 1 (p - 1), f (n^2, p) ≥ real.sqrt (2 * p) - 2 :=
begin
  sorry
end

theorem fimo_2018_algebra_p1
  (f : ℚ → ℚ)
  (h₀ : ∀ x y, 0 < x → 0 < y → f (x^2 * (f y)^2) = f x^2 * f y)
  (h₁ : ∀ x, 0 < x → 0 < f x) :
  ∀ x, 0 < x → f x = 1 :=
begin
  sorry
end

theorem fimo_2018_algebra_p2
  (n : ℕ)
  (a : ℕ → ℝ)
  (h₀ : n ≥ 3)
  (h₁ : ∀ i, 1 ≤ i ∧ i ≤ n → a i * a (i + 1) + 1 = a (i + 2))
  (h₂ : a (n + 1) = a 1)
  (h₃ : a (n + 2) = a 2) :
  n % 3 = 0 :=
begin
  sorry
end

theorem fimo_2018_algebra_p3
  (S : set ℕ)
  (h₀ : ∀ x ∈ S, 0 < x) :
  (∃ (F G : finset ℕ), (∀ x ∈ F, x ∈ S) ∧ (∀ x ∈ G, x ∈ S) ∧ F ≠ G ∧ (∑ x in F, (↑x : ℚ)⁻¹) = (∑ x in G, (↑x : ℚ)⁻¹)) ∨
  (∃ (r : ℚ), 0 < r ∧ r < 1 ∧ ∀ (F : finset ℕ), (∀ x ∈ F, x ∈ S) → (∑ x in F, (↑x : ℚ)⁻¹) ≠ r) :=
begin
  sorry
end

theorem fimo_2018_algebra_p4
  (a : ℕ → ℝ)
  (h₀ : a 0 = 0)
  (h₁ : a 1 = 1)
  (h₂ : ∀ n ≥ 2, ∃ k ∈ set.Ico 1 (n + 1), a n = (finset.sum (finset.Ico (n - k) n) a) / k) :
  a 2018 - a 2017 ≤ 2016 / (2017^2) :=
begin
  sorry
end

theorem fimo_2018_algebra_p5
  (f : ℝ → ℝ)
  (h₀ : ∀ x y, 0 < x ∧ 0 < y → (x + 1 / x) * f y = f (x * y) + f (y / x)) :
  ∃ (c₁ c₂ : ℝ), ∀ x, 0 < x → f x = c₁ * x + c₂ / x :=
begin
  sorry
end

theorem fimo_2018_algebra_p7
  (a b c d s : ℝ)
  (h₀ : 0 ≤ a ∧ 0 ≤ b ∧ 0 ≤ c ∧ 0 ≤ d)
  (h₁ : a + b + c + d = 100)
  (h₂ : s = (a / (b + 7))^(1/3) + (b / (c + 7))^(1/3) + (c / (d + 7))^(1/3) + (d / (a + 7))^(1/3)) :
  s ≤ 8 / (7^(1/3)) :=
begin
  sorry
end

theorem fimo_2018_number_theory_p1
  (n k : ℕ)
  (h₀ : 0 < n ∧ 0 < k)
  (h₁ : n ≠ k)
  (h₂ : ∃ s : ℕ, 0 < s ∧ finset.card (nat.divisors (s * n)) = finset.card (nat.divisors (s * k))) :
  (¬ n ∣ k) ∧ (¬ k ∣ n) :=
begin
  sorry
end

theorem fimo_2018_number_theory_p2
  (n : ℕ)
  (h₀ : n > 1)
  (table : matrix (fin n) (fin n) ℕ)
  (h₁ : ∀ i j, table i j ≡ 1 [MOD n])
  (h₂ : ∀ i, (∑ j, table i j) ≡ n [MOD n^2])
  (h₃ : ∀ j, (∑ i, table i j) ≡ n [MOD n^2]) :
  (∑ i, ∏ j, table i j) ≡ (∑ j, ∏ i, table i j) [MOD n^4] :=
begin
  sorry
end

theorem fimo_2018_number_theory_p5
  (x y z t : ℕ+)
  (h₀ : x * y - z * t = x + y)
  (h₁ : x + y = z + t) :
  ¬(∃ m n : ℕ+, x * y = m^2 ∧ z * t = n^2) :=
begin
  sorry
end

theorem fimo_2018_number_theory_p6
  (f : ℕ → ℕ)
  (h₀ : ∀ m n, 1 < m → 1 < n → f (m + n) ∣ f m + f n)
  (h₁ : ∀ x, 1 < x → 2 ≤ f x) :
  ∃ c : ℕ, c > 1 ∧ ∀ x, 1 < x → c ∣ f x :=
begin
  sorry
end

theorem fimo_2019_algebra_p1
  (f : ℤ → ℤ)
  (h₀ : ∀ a b, f (2 * a) + 2 * f b = f (f (a + b))) :
  (∀ n, f n = 0) ∨ (∃ K : ℤ, ∀ n, f n = 2 * n + K) :=
begin
  sorry
end

theorem fimo_2019_algebra_p2
  (u : ℕ → ℝ)
  (a b : ℝ)
  (h₀ : ∑ i in finset.range 2019, u i = 0)
  (h₁ : ∑ i in finset.range 2019, u i ^ 2 = 1)
  (h₂ : ∃ i, i < 2019 ∧ u i = a ∧ ∀ j, j < 2019 → u j ≥ a)
  (h₃ : ∃ i, i < 2019 ∧ u i = b ∧ ∀ j, j < 2019 → u j ≤ b) :
  a * b ≤ -1 / 2019 :=
begin
  sorry
end

theorem fimo_2019_algebra_p5
  (n : ℕ)
  (x : fin n → ℝ)
  (h₀ : n > 1)
  (h₁ : ∀ i j, i ≠ j → x i ≠ x j) :
  ∑ i, ∏ j in finset.univ.filter (≠ i), (1 - x i * x j) / (x i - x j) = if even n then 0 else 1 :=
begin
  sorry
end

theorem fimo_2019_algebra_p7_1 :
  ∃ (f : ℤ → ℤ), (∀ x y : ℤ, f (f (x + y) + y) = f (f x + y)) ∧
  ∃ (v : ℤ), (∃ (X_v : finset ℤ), (∀ x : ℤ, f x = v ↔ x ∈ X_v) ∧ X_v.nonempty) :=
begin
  sorry
end

theorem fimo_2019_number_theory_p1
  (m n : ℕ)
  (h₀ : 0 < m ∧ 0 < n)
  (h₁ : (∏ k in finset.range n, (2^n - 2^k)) = nat.factorial m) :
  (m, n) = (1, 1) ∨ (m, n) = (3, 2) :=
begin
  sorry
end

theorem fimo_2019_number_theory_p2
  (a b c : ℕ+)
  (h₀ : a^3 + b^3 + c^3 = (a * b * c)^2) :
  (a, b, c) = (1, 2, 3) ∨ (a, b, c) = (1, 3, 2) ∨ (a, b, c) = (2, 1, 3) ∨ (a, b, c) = (2, 3, 1) ∨ (a, b, c) = (3, 1, 2) ∨ (a, b, c) = (3, 2, 1) :=
begin
  sorry
end

theorem fimo_2019_number_theory_p4
  (C : ℕ)
  (h₀ : 0 < C)
  (f : ℕ → ℕ)
  (h₁ : ∀ a b, 0 < a ∧ 0 < b → a + b > C → a + f b ∣ a^2 + b * f a) :
  (∃ k, 0 < k ∧ ∀ a, 0 < a → f a = k * a) :=
begin
  sorry
end

theorem fimo_2019_number_theory_p5
  (a b : ℕ)
  (h₀ : 0 < a)
  (h₁ : ∀ n, a * n ≥ b → ((nat.choose (a * n) b) - 1) % (a * n + 1) = 0)
  (h₂ : ∃ n, a * n ≥ b + 2 ∧ ((nat.choose (a * n) (b + 2)) - 1) % (a * n + 1) ≠ 0) :
  nat.prime (b + 1) :=
begin
  sorry
end

theorem fimo_2019_number_theory_p8
  (a b : ℕ)
  (h₀ : 0 < a ∧ 0 < b) :
  ¬(∃ k : ℕ, (k^2 : ℝ) = a^2 + ⌈((4 * a^2) : ℝ) / (b : ℝ)⌉) :=
begin
  sorry
end

theorem fimo_2020_algebra_p1_2
  (N : ℕ)
  (h₀ : N > 0)
  (b_N : ℝ)
  (h₁ : ∀ x : ℝ, (x^(2 * N) + 1) / 2 ≤ b_N * (x - 1)^2 + x) :
  b_N ≥ N / 2 :=
begin
  sorry
end

theorem fimo_2020_algebra_p3
  (a b c d s : ℝ)
  (h₀ : 0 < a ∧ 0 < b ∧ 0 < c ∧ 0 < d)
  (h₁ : (a + c) * (b + d) = a * c + b * d)
  (h₂ : s = a / b + b / c + c / d + d / a) :
  8 ≤ s :=
begin
  sorry
end

theorem fimo_2020_algebra_p4
  (a b c d : ℝ)
  (h₀ : 0 < a ∧ 0 < b ∧ 0 < c ∧ 0 < d)
  (h₁ : a ≥ b ∧ b ≥ c ∧ c ≥ d)
  (h₂ : a + b + c + d = 1) :
  (a + 2 * b + 3 * c + 4 * d) * a^a * b^b * c^c * d^d < 1 :=
begin
  sorry
end

theorem fimo_2020_algebra_p6
  (f : ℤ → ℤ)
  (h₀ : ∀ a b : ℤ, ∀ c : ℕ, (c : ℤ) = a^2 + b^2 → (f^[c]) (a + b) = a * f a + b * f b) :
  (∀ x : ℤ, f x = 0) ∨ (∀ x : ℤ, f x = x + 1) :=
begin
  sorry
end

theorem fimo_2020_algebra_p7
  (n k : ℕ)
  (a : ℕ → ℝ)
  (h₀ : ∀ i, 1 ≤ a i ∧ a i ≤ 2^k) :
  ∑ i in finset.Icc 1 n, a i / sqrt (∑ j in finset.Icc 1 i, (a j)^2) ≤ 4 * sqrt (k * n) :=
begin
  sorry
end

theorem fimo_2020_algebra_p8
  (f : ℝ → ℝ)
  (h₀ : ∀ x y, 0 < x ∧ 0 < y → f (x + f (x * y)) + y = f x * f y + 1) :
  (∀ x, 0 < x → ∀ x, f x = x + 1) :=
begin
  sorry
end

theorem fimo_2020_number_theory_p7
  (S : finset ℕ+)
  (n : ℕ)
  (h₀ : finset.card S = n)
  (h₁ : n ≥ 3)
  (h₂ : ∀ (a b c : ℕ+), a ∈ S → b ∈ S → c ∈ S → a ≠ b → a ≠ c → b ≠ c → a ≠ b + c)
  (a : ℕ → ℕ+)
  (h₃ : ∀ i, a i ∈ S)
  (h₄ : ∀ i j, i ≠ j → a i ≠ a j)
  (h₅ : ∀ i, 2 ≤ i → i ≤ n - 1 → ¬(a i ∣ a (i - 1) + a (i + 1))) :
  true :=
begin
  sorry
end

theorem fimo_2021_algebra_p1
  (n : ℕ)
  (A : finset ℕ)
  (h₀ : A ⊆ finset.range (5^n + 1))
  (h₁ : A.card = 4 * n + 2) :
  ∃ a b c ∈ A, a < b ∧ b < c ∧ c + 2 * a > 3 * b :=
begin
  sorry
end

theorem fimo_2021_algebra_p4
  (n : ℕ)
  (x : fin n → ℝ)
  (h₀ : 0 < n) :
  ∑ i in finset.univ, ∑ j in finset.univ, real.sqrt (abs (x i - x j)) ≤
  ∑ i in finset.univ, ∑ j in finset.univ, real.sqrt (abs (x i + x j)) :=
begin
  sorry
end

theorem fimo_2021_algebra_p5
  (n : ℕ)
  (a : ℕ → ℝ)
  (h₀ : n ≥ 2)
  (h₁ : ∀ k, 0 < a k)
  (h₂ : ∑ k in finset.Icc 1 n, a k = 1) :
  ∑ k in finset.Icc 1 n, (a k / (1 - a k)) * (∑ i in finset.Icc 1 (k - 1), a i)^2 < 1 / 3 :=
begin
  sorry
end

theorem fimo_2021_algebra_p6
  (A : finset ℤ)
  (m : ℕ)
  (B : ℕ → finset ℤ)
  (h₀ : 2 ≤ m)
  (h₁ : ∀ i, i ∈ finset.Icc 1 m → B i ⊆ A ∧ finset.sum (B i) id = m^(i)) :
  m / 2 ≤ A.card :=
begin
  sorry
end

theorem fimo_2021_algebra_p7
  (n : ℕ)
  (x : ℕ → ℝ)
  (h₀ : n ≥ 1)
  (h₁ : ∀ i, 1 ≤ i ∧ i ≤ n → x i * x (i + 1) - x (i - 1)^2 ≥ 1)
  (h₂ : ∀ i, 0 ≤ x i) :
  ∑ i in finset.range (n + 2), x i > ((2 * n) / 3)^(3 / 2) :=
begin
  sorry
end

theorem fimo_2021_algebra_p8
  (f : ℝ → ℝ)
  (h₀ : ∀ a b c : ℝ, (f a - f b) * (f b - f c) * (f c - f a) = f (a * b^2 + b * c^2 + c * a^2) - f (a^2 * b + b^2 * c + c^2 * a)) :
  (∃ α₁ α₂ β₁ β₂ : ℝ, (∀ x, f x = α₁ * x + β₁) ∨ (∀ x, f x = α₂ * x^3 + β₂) ∧ (α₂ = -1 ∨ α₂ = 0 ∨ α₂ = 1)) :=
begin
  sorry
end

theorem fimo_2021_number_theory_p1
  (n : ℕ)
  (h₀ : 1 ≤ n)
  (h₁ : ∃ (a b : ℕ), (0 < a ∧ 0 < b) ∧ (∀ p, ¬(prime p ∧ p^3 ∣ a^2 + b + 3)) ∧ (a * b + 3 * b + 8) / (a^2 + b + 3) = n) :
  n = 2 :=
begin
  sorry
end

theorem fimo_2021_number_theory_p2
  (n : ℕ)
  (h₀ : n ≥ 100)
  (cards : list ℕ)
  (h₁ : cards = list.range' n (n + 1))
  (pile1 pile2 : list ℕ)
  (h₂ : list.partition (λ x, x ∈ pile1) cards = (pile1, pile2)) :
  (∃ (a b : ℕ), a ∈ pile1 ∧ b ∈ pile1 ∧ is_square (a + b)) ∨
  (∃ (a b : ℕ), a ∈ pile2 ∧ b ∈ pile2 ∧ is_square (a + b)) :=
begin
  sorry
end

theorem fimo_2021_number_theory_p7
  (a : ℕ+ → ℕ+)
  (h₀ : ∀ n m, a (n + 2 * m) ∣ (a n + a (n + m))) :
  ∃ N d, ∀ n, n > N → a n = a (n + d) :=
begin
  sorry
end