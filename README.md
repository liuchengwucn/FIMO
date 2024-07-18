# FIMO

FIMO is a formal mathematics dataset comprising formal mathematical problem statements sourced from the International Mathematical Olympiad (IMO) Shortlisted Problems from 2006 to 2021. FIMO is currently tailored for the Lean formal language and is designed to facilitate advanced automated theorem proving at the IMO level. It comprises 149 formal problem statements, accompanied by both informal problem descriptions and their corresponding LATEX-based informal proofs. 

The dataset aims to facilitate IMO-level AI mathematical reasoning research and provide a challenging benchmark to evaluate the reasoning ability of automated theorem systems. The dataset is currently targeting **Lean** formal system.

The dataset is a work in progress. Each problem is auto-formalized with feedback and verified by human experts. However, there is still a small probability that the generated formal statement is semantically incorrect. Discussions or P&R are welcome.

## Citation

The construction process of the dataset (i.e., auto-formalization with feedback) is described in detail in the following [paper](https://arxiv.org/abs/2309.04295). If you find our work helpful, please consider to cite this paper.

```
@misc{liu2023fimo,
      title={FIMO: A Challenge Formal Dataset for Automated Theorem Proving}, 
      author={Chengwu Liu and Jianhao Shen and Huajian Xin and Zhengying Liu and Ye Yuan and Haiming Wang and Wei Ju and Chuanyang Zheng and Yichun Yin and Lin Li and Ming Zhang and Qun Liu},
      year={2023},
      eprint={2309.04295},
      archivePrefix={arXiv},
      primaryClass={cs.AI}
}
```

## Statistics

| Category      | Total Quantity | Success Count | Success Rate |
| ------------- | -------------- | ------------- | ------------ |
| Algebra       | 124            | 89            | 71.8%        |
| Number Theory | 121            | 60            | 49.6%        |
| Total         | 245            | 149           | 60.8%        |

`Total Quantity` denotes all the problems from the International Mathematical Olympiad Shortlisted Problems from 2006 to 2021.  `Success Count` denotes the problems that are formalized through our auto-formalization with feedback process and, therefore, being a part of this dataset.

## Example Problem Statement

* Informal Statement

Let $a, b, c$ be the sides of a triangle. Prove that

$$
\frac{\sqrt{b+c-a}}{\sqrt{b}+\sqrt{c}-\sqrt{a}}+\frac{\sqrt{c+a-b}}{\sqrt{c}+\sqrt{a}-\sqrt{b}}+\frac{\sqrt{a+b-c}}{\sqrt{a}+\sqrt{b}-\sqrt{c}} \leq 3
$$

* Informal Proof

Note first that the denominators are all positive, e.g. $\sqrt{a}+\sqrt{b}>\sqrt{a+b}>\sqrt{c}$. Let $x=\sqrt{b}+\sqrt{c}-\sqrt{a}, y=\sqrt{c}+\sqrt{a}-\sqrt{b}$ and $z=\sqrt{a}+\sqrt{b}-\sqrt{c}$. Then

$b+c-a=\left(\frac{z+x}{2}\right)^{2}+\left(\frac{x+y}{2}\right)^{2}-\left(\frac{y+z}{2}\right)^{2}=\frac{x^{2}+x y+x z-y z}{2}=x^{2}-\frac{1}{2}(x-y)(x-z)$

and

$$
\frac{\sqrt{b+c-a}}{\sqrt{b}+\sqrt{c}-\sqrt{a}}=\sqrt{1-\frac{(x-y)(x-z)}{2 x^{2}}} \leq 1-\frac{(x-y)(x-z)}{4 x^{2}}
$$

applying $\sqrt{1+2 u} \leq 1+u$ in the last step. Similarly we obtain

$$
\frac{\sqrt{c+a-b}}{\sqrt{c}+\sqrt{a}-\sqrt{b}} \leq 1-\frac{(z-x)(z-y)}{4 z^{2}} \quad \text { and } \quad \frac{\sqrt{a+b-c}}{\sqrt{a}+\sqrt{b}-\sqrt{c}} \leq 1-\frac{(y-z)(y-x)}{4 y^{2}}
$$

Substituting these quantities into the statement, it is sufficient to prove that

$$
\frac{(x-y)(x-z)}{x^{2}}+\frac{(y-z)(y-x)}{y^{2}}+\frac{(z-x)(z-y)}{z^{2}} \geq 0 .
$$

By symmetry we can assume $x \leq y \leq z$. Then

$$
\begin{gathered}
\frac{(x-y)(x-z)}{x^{2}}=\frac{(y-x)(z-x)}{x^{2}} \geq \frac{(y-x)(z-y)}{y^{2}}=-\frac{(y-z)(y-x)}{y^{2}}, \\
\frac{(z-x)(z-y)}{z^{2}} \geq 0
\end{gathered}
$$

and (1) follows.

* Formal Statement (Lean)

```
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
```

## Structure

When organizing our project structure, we followed [openai/miniF2F](https://github.com/openai/miniF2F), hopefully making it easier for researchers to utilize our work. Each problem is nominated as `fimo_{year}_{category}_p{problem_count}`, where `fimo` denotes the Formalized IMO-level problems.

* `lean/fimo.lean`: Formalized IMO shortlist problems in LEAN language.
* `prompts/algebra_prompts.txt`: Prompts for algebra problems.
* `prompts/number_theory_prompts.txt`: Prompts for number theory problems.
* `informal`: Problems in JSON format. Each problem has a `problem_name`, an `informal_statement`, and an `informal_proof`.

### Lean

To install the project make sure you have [elan](https://github.com/leanprover/elan) installed,
then in the directory where you want the project installed run:

```
leanpkg configure
leanpkg build
```

Since having one file per statement causes slowness in Lean parsing stage, all Lean statements are
exceptionally aggregated in one file (`fimo.lean`). These files contain a list of
the problem statements defined as `theorem`s.
