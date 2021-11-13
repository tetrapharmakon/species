---
layout: post
title: Species and analytic functors
latex: katex
katex:
  macros:
antex:
    preamble:
        \usepackage{tikz,tikz-cd}
        \usetikzlibrary{calc,positioning}
        \usepackage[all,2cell]{xy}\UseAllTwocells
        \usepackage{commutative-diagrams}
        \usepackage{amsmath,amsfonts}
        \usepackage{xcolor}
        \usepackage{tikz}
---

This chapter embarks on a more category-theoretic study of species. Every species has a canonical decomposition as an infinite sum $f_0 + f_1 + f_2 + \dots$ and it gives rise to an endofunctor $\bar F $ of $\bf Set$ that admits a "Taylor expansion". Such functors are called *analytic*, and they can be characterised intrisically as the finitary endofunctors of $\bf Set$ satisfying a weak exactness property.

### Analytic functors, wide pullbacks

**Construction.** Given a combinatorial species $f : {\bf P} \to \bf Set$, we can consider the left Kan extension

{% tex classes: [antex, display] %}
\setlength{\fboxrule}{1sp}
\setlength{\fboxsep}{0sp}
\fbox{\xymatrix{
{\bf P} \drtwocell<\omit>{}\ar[d]_J \ar[r]^f & {\bf Set} \\
{\bf Set} \ar@/_1pc/[ur]_F &
}}
{% endtex %}

and for $X\in\bf Set$ the set $FX$ can be computed pointwise as the coend

$$\int^n f(n)\times X^n =: \left(\coprod_{n\ge 1} f(n)\times X^n\right)/\left\langle \begin{smallmatrix}\sigma.e; x_1,\dots,x_n) \sim (e, x_{\sigma 1},\dots, x_{\sigma n}) \\ \sigma \in S_n, n\ge 1\end{smallmatrix} \right\rangle \tag{$\star$} $$

such a functor is called *analytic*, and in fact we call in this way every functor that lies in the image of the functor $\text{Lan}_J$, where $J : {\bf P} \hookrightarrow {\bf Set}$ is the (nonfull) inclusion functor.

**Definition** (Analytic functor). An endofunctor $F$ of $\bf Set$ is called *analytic* if it lies in the essential image of $\text{Lan}_J$, or in other words, if it arises as the left Kan extension along $J : {\bf P} \hookrightarrow {\bf Set}$ of a combinatorial species $f : {\bf P} \to {\bf Set}$. Such a species will be called the *generating species* of $F$.

It is then evident that $\text{Lan}_J$ is the left adjoint in a pair

$$ \text{Lan}_J :  {\bf Spc} \leftrightarrows [{\bf Set}, {\bf Set}] : J^*. $$

Since $J$ is not fully faithful, the category of combinatorial species cannot be seen as a full subcategory of endofunctors of $\bf Set$ subject to some additional property prescribed by the coreflection $J^*$.

Its essential image is thus a little bit more difficult to characterise than in the case of $[{\bf Fin}, {\bf Set}]$ examined in lecture 1.

With a little bit more effort, we can however characterise such an essential image as the subcategory of those $F : {\bf Set} \to {\bf Set}$ such that

1. $F$ is finitary;
2. $F$ weakly preserves wide pullbacks.

The second condition deserves more explanation.

**Definition.** An endofunctor $F : {\bf Set} \to {\bf Set}$ is said to *weakly preserve pullbacks* if for every pullback square

{% tex classes: [antex, display] %}
\setlength{\fboxrule}{1sp}
\setlength{\fboxsep}{0sp}
\fbox{\xymatrix{
A\times_C B \ar@{}[dr]|(.33)\lrcorner \ar[r] \ar[d] & A \ar[d]\\
B \ar[r]& C
}}
{% endtex %}

the canonical map $F(A\times_C B) \to FA \times_{FC} FB$ is surjective.

**Definition.** Let $E$ be a set and $\cal C$ a category; a *($E$-ary) wide pullback* with sink $X \in \cal C$ is the limit of a diagram $E \to {\cal C}/X$ where $E$ is regarded as a discrete category and ${\cal C}/X$ is the slice of $\cal C$ over $X$.

In simple terms, a wide pullback is a pullback having possibly more than two arrows pointing to the same object.

In more obscure terms, let $E$ be a set, and let $E^\rhd$ be the category where a distinguished new object $\infty$ has be forcefully rendered a terminal object; a $E$-ary wide pullback in $\cal C$ is a limit of a diagram $E^\rhd \to \cal C$.

The characterisation of analytic functors in terms of weak preservation of wide pullbacks was first showed by Joyal in his "*Foncteurs analytiques*"; the proof of the equivalence will occupy the entire lecture, and it comes from a more modern presentation of this idea in Adamek-Velebil that is purely elementary, in the sense that it relies on elementary category theory and it is quite straightforward.

### Canonical decomposition and examples

Since $\text{Lan}_J$ is a left adjoint, it is evident that $\text{Lan}_J(f \sqcup g) \cong \text{Lan}_J f \sqcup \text{Lan}_J g$, so that the class of analytic functors is close under finite (and in fact, arbitrarily large) coproducts. More importantly, the analytic functor associated to $f\sqcup g$ is just the coproduct of the analytic functors $F=\text{Lan}_Jf$ and $G=\text{Lan}_Jg$.

Thus, in order to completely understand analytic functors, it is enough to understand the $\sqcup$-indecomposable objects of $\bf Spc$. Such indecomposable objects can be characterised.

**Proposition** (Canonical decomposition of a species). Every combinatorial species $f : {\bf P} \to {\bf Set}$ splits into a countable sequence of $\sqcup$-indecomposable objects, unique up to reordering: the *canonical decomposition* of $f$.

*Proof.* The category ${\bf P}$ splits as a coproduct of groups, namely ${\bf P} = \coprod_{n\ge 1} S_n$, so that a functor $f : {\bf P} \to {\bf Set}$ is in fact determined by a countable family of (left) $S_n$-sets $f_n : S_n \times X_n \to X_n$ under the isomorphism

$$\textstyle {\bf Spc} = [{\bf P}, {\bf Set}] \cong \left[ \coprod_{n\ge 1} S_n , {\bf Set}\right] \cong \prod_{n\ge 1} [S_n, {\bf Set}] $$

keeping in mind that the category $[S_n, {\bf Set}]$ is just the category of sets equipped with a left $S_n$-action. Thus, the action of $f$ on objects and morphisms is determined as the sum $f_1 + f_2 + f_3 + \dots$

**Example.** Let $f : {\bf P} \to {\bf Set}$ be the sym-representable species sending $[n]\mapsto S_n/H$; the associated analytic functor sends a set $X$ to the set $X^n/H$, where the tuples of elements of $X$ are identified iff they differ by a permutation in $H$.

The functor $X\mapsto X^n/H$ is called *sym-representable analytic*.

As an important corollary of the previous example and of the canonical decomposition, we obtain that every analytic functor splits into a disjoint union of sym-representables as follows: Let $F$ be analytic; then the equivalence relation in the coend $(\star)$ acts separately on each summand, and yields the decomposition of $FX$ as a coproduct $FX = \coprod_{n\ge 1} \frac{f(n)\times X^n}{\sim}$, where $\sim$ is the equivalence relation consisting of all pairs $(e;\vec x) \sim (f(\sigma).e; \vec x \cdot \sigma)$.

Writing the above coproduct as a sum and interpreting the quotient as a "fraction by $n!$", we get that every analytic functor admits a *Taylor series expansion*

$$ FX = \sum_{n\ge 1} \frac{f(n)\times X^n}{n!}. $$

**Example** (The AF of the species of singletons).

**Example** (The AF of a representable species).

**Example** (The AF of the species of the species of sets).

**Example** (The AF of the species of the species of permutations).

**Example** (The AF of the species of the species of oriented cycles).

We now embark on the proof of the characterisation theorem for analytic functors. We provide an elementary proof in two parts.

**Definition.** Superfinitary functor.

**Theorem** (Characterisation of analytic functors, I). For a superfinitary functor $F : {\bf Set} \to {\bf Set}$ the following conditions are equivalent:

1. $F$ weakly preserves pullbacks;
2. $F$ is analytic;
3. $F$ splits as a coproduct of sym-representables.

**Theorem** (Characterisation of analytic functors, II). For a finitary functor $F : {\bf Set} \to {\bf Set}$ the following conditions are equivalent:


1. $F$ is analytic;
2. $F$ is a coproduct of symmetrized representables;
3. $F$ weakly preserves *countable* wide pullbacks;
4. $F$ weakly preserves wide pullbacks (of all cardinality).

### Proof of the first theorem

...

The proof of the second theorem, which was the one originally proved by Joyal, follows from a similar argument; in particular, the implication $3\Rightarrow 2$ follows from the fact that each $F$ that weakly preserves countable wide pullbacks is superfinitary (prove this by contradiction as an exercise). All other implications are trivial or follow clearly from what we already know.