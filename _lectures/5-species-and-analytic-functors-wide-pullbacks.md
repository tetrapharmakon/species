---
layout: post
title: "Representation: species and analytic functors"
latex: katex
katex:
  macros:
antex:
    preamble:
        \usepackage{tikz,tikz-cd}
        \usetikzlibrary{calc,positioning}
        \usepackage[all,2cell]{xy}\UseAllTwocells
        \usepackage{commutative-diagrams}
        \usepackage{amsmath,amsfonts,amssymb}
        \usepackage{xcolor}
        \usepackage{tikz}
---

This chapter embarks on a more category-theoretic study of species. Every species has a canonical decomposition as an infinite sum $f_0 + f_1 + f_2 + \dots$, and it gives rise to an endofunctor $\bar F $ of $\bf Set$ that admits a "Taylor expansion". Such functors are called *analytic*, and they can be characterised intrinsically as the finitary endofunctors of $\bf Set$ satisfying a weak exactness property.

### Analytic functors, wide pullbacks

<div id="label-1"></div>
**Construction.** Given a combinatorial species $f : {\bf B} \to \bf Set$, we can consider the left Kan extension

{% tex classes: [antex, display] %}
\setlength{\fboxrule}{1sp}
\setlength{\fboxsep}{0sp}
\fbox{\xymatrix{
{\bf B} \drtwocell<\omit>{}\ar[d]_J \ar[r]^f & {\bf Set} \\
{\bf Set} \ar@/_1pc/[ur]_F &
}}
{% endtex %}

and for $X\in\bf Set$ the set $FX$ can be computed pointwise as the coend

$$ \int^n f(n)\times X^n =: \left(\sum_{n\ge 1} f(n)\times X^n\right)/\left\langle \begin{smallmatrix}\sigma.e; x_1,\dots,x_n) \sim (e, x_{\sigma 1},\dots, x_{\sigma n}) \\ \sigma \in S_n, n\ge 1\end{smallmatrix} \right\rangle \qquad(\star) $$

Such a functor is called *analytic*, and we call similarly every functor that lies in the image of the functor $\text{Lan}_J$, where $J : {\bf B} \rightarrow {\bf Set}$ is the (nonfull) inclusion functor.

<div id="label-2"></div>
**Definition** (Analytic functor). An endofunctor $F$ of $\bf Set$ is called *analytic* if it lies in the essential image of $\text{Lan}_J$, or in other words, if it arises as the left Kan extension along $J : {\bf B} \rightarrow {\bf Set}$ of a combinatorial species $f : {\bf B} \to {\bf Set}$. Such a species will be called the *generating species* of $F$.

It is then evident that $\text{Lan}_J$ is the left adjoint in a pair

$$ \text{Lan}_J :  {\bf Spc} \leftrightarrows [{\bf Set}, {\bf Set}] : J^\ast. $$

Since $J$ is not fully faithful, $J^\ast$ is not a coreflection, so the category of combinatorial species cannot be seen as a full subcategory of endofunctors of $\bf Set$ subject to some additional property prescribed by the right adjoint $J^\ast$.

Its essential image is thus a little bit more difficult to characterise than in the case of $[{\bf Fin}, {\bf Set}]$ examined in [lecture 1](./1-finset-and-its-up.html).

With a little more effort than there, we can characterise such an essential image as the subcategory of those $F : {\bf Set} \to {\bf Set}$ such that

1. $F$ is finitary;
2. $F$ weakly preserves wide pullbacks.

This will be the *fundamental representation theorem* of combinatorial species as analytic functors. The first condition is the well-known fact that $F$ preserves $\omega$-filtered colimits; the second condition deserves a bit more explanation.

<div id="label-3"></div>
**Definition.** An endofunctor $F : {\bf Set} \to {\bf Set}$ is said to *weakly preserve pullbacks* if for every pullback square

{% tex classes: [antex, display] %}
\setlength{\fboxrule}{1sp}
\setlength{\fboxsep}{0sp}
\fbox{\xymatrix{
A\times_C B \ar@{}[dr]|(.33)\lrcorner \ar[r] \ar[d] & A \ar[d]\\
B \ar[r]& C
}}
{% endtex %}

the canonical map obtained through the universal property $F(A\times_C B) \to FA \times_{FC} FB$ is surjective.

<div id="label-4"></div>
**Definition.** Let $S$ be a set and $\cal C$ a category; a *($S$-ary) wide pullback* with sink $X \in \cal C$ is the limit of a diagram $S \to {\cal C}/X$ where $S$ is regarded as a discrete category and ${\cal C}/X$ is the slice of $\cal C$ over $X$.

In simple terms, a wide pullback is a pullback having possibly more than two arrows pointing to the same object.

{% tex classes: [antex, display] %}
\setlength{\fboxrule}{1sp}
\setlength{\fboxsep}{0sp}
\fbox{\xymatrix@R=0mm{
A_s\ar[ddr]&\\
A_{s'}\ar[dr]&\\
\vdots&X\\
A_{s''}\ar[ur]
}}
{% endtex %}

In more obscure terms, let $S$ be a set, and let $S^\rhd$ be the category where a distinguished new object $\infty$ has been forcefully rendered a terminal object; a $S$-ary wide pullback in $\cal C$ is a limit of a diagram $S^\rhd \to \cal C$.

The characterisation of analytic functors in terms of weak preservation of wide pullbacks was first shown by Joyal in his "*Foncteurs analytiques*".

The proof will occupy the entire lecture, and it comes from a more modern presentation of this idea in Adamek-Velebil that is purely elementary, in the sense that it relies on elementary category theory and is pretty straightforward.

### Canonical decomposition and examples

Since $\text{Lan}_J$ is a left adjoint, it is evident that $\text{Lan}_J(f + g) \cong \text{Lan}_J f + \text{Lan}_J g$, so that the class of analytic functors is close under finite (and in fact, arbitrarily large) coproducts. More importantly, this proves that the analytic functor associated to $f+ g$ is just the coproduct of the analytic functors $F=\text{Lan}_Jf$ and $G=\text{Lan}_Jg$.

Thus, to completely understand analytic functors, it is enough to understand the $+$-indecomposable objects of $\bf Spc$. Such indecomposable objects can be characterised.

<div id="label-5"></div>
**Proposition** (Canonical decomposition of a species). Every combinatorial species $f : {\bf B} \to {\bf Set}$ splits into a countable sequence of $+$-indecomposable objects, unique up to reordering: the *canonical decomposition* of $f$.

*Proof.* We have already observed that the groupoid ${\bf B}$ splits as a coproduct of groups, namely ${\bf B} = \sum_{n\ge 1} S_n$, so that a functor $f : {\bf B} \to {\bf Set}$ is in fact determined by a countable family of (left) $S_n$-sets $f_n : S_n \times X_n \to X_n$ under the isomorphism

$$\textstyle {\bf Spc} = [{\bf B}, {\bf Set}] \cong \left[ \sum_{n\ge 1} S_n , {\bf Set}\right] \cong \prod_{n\ge 1} [S_n, {\bf Set}] $$

keeping in mind that the category $[S_n, {\bf Set}]$ is just the category of sets equipped with a left $S_n$-action. Thus, the action of $f$ on objects and morphisms is determined as the sum $f_1 + f_2 + f_3 + \dots$ if $f_n := \kappa_n f$ in the sense of [lecture 2](./2-p-and-its-up-and-species.html#concentration).

<div id="label-6"></div>
**Corollary.** Since the decomposition of a species $f$ as a sum $f_1 + f_2 + f_3 + \dots$ is uniquely determined, the following concepts are well defined:

- the *odd part* $f_o$ of a species $f : {\bf B} \to {\bf Set}$ consisting of the sum $\sum_{k\ge 0} f_{2k+1}=f_1+f_3+\dots$;
- the *even part* $f_o$ of a species $f : {\bf B} \to {\bf Set}$ consisting of the sum $\sum_{k\ge 1} f_{2k}=f_2+f_4+\dots$.

The following *splitting formula* for the cycle index series of the even and odd parts of a species $f$ holds true:

$$ \begin{cases} Z_{E_e} = \frac12 \left( Z_E(x_1, x_2,x_3,\dots) + Z_E(-x_1,x_2,-x_3,\dots)\right) \\ Z_{E_o} = \frac12 \left( Z_E(x_1, x_2,x_3,\dots) - Z_E(-x_1,x_2,-x_3,\dots)\right). \end{cases} $$

<div id="label-7"></div>
**Example.** Let $f : {\bf B} \to {\bf Set}$ be the [sym-representable species](./2-p-and-its-up-and-species.html#label-11) sending $[n]\mapsto S_n/H$; the associated analytic functor sends a set $X$ to the set $X^n/H$, where the tuples of elements of $X$ are identified iff they differ by a permutation in $H$.

The functor $X\mapsto X^n/H$ is called *sym-representable analytic*.

As an important corollary of the previous example and of the canonical decomposition, we obtain that every analytic functor splits into a disjoint union of sym-representables as follows: Let $F$ be analytic; then the equivalence relation in the coend $(\star)$ acts separately on each summand, and yields the decomposition of $FX$ as a coproduct $FX = \sum_{n\ge 1} \frac{f(n)\times X^n}{\sim}$, where $\sim$ is the equivalence relation consisting of all pairs $(e;\vec x) \sim (f(\sigma).e; \vec x \cdot \sigma)$.

Writing the above coproduct as a sum and interpreting the quotient as a "fraction by $n!$", we get that every analytic functor admits a *Taylor series expansion*

$$ FX = \sum_{n\ge 1} \frac{f(n)\times X^n}{n!}. $$

<div id="label-8"></div>
**Example** (The AF of the species of singletons). Recall that the species $U$ of singletons is defined as the species centred in $1$, with value a one-element set. So, the colimit that computes $\text{Lan}_J U$ reduces to the identity functor ${\bf Set} \to {\bf Set}$.

<div id="label-9"></div>
**Example** (The AF of a representable species). The species [concentrated](2-p-and-its-up-and-species.html#label-3) in $n\ge 1$ over the set $S_n$ gives rise to the functor $X\mapsto {\bf Set}(Jn, X)=X^n$ raising $X$ to the $n$th power.

<div id="label-10"></div>
**Example** (The AF of the species of sets). The [species of sets](2-p-and-its-up-and-species.html#label-5) $E$ gives rise to the analytic functor sending a set $X$ to the set of *finite multisets* on $X$, i.e. finite $\mathbb N$-linear combinations of elements of $X$ like $3x+y+z$ or $x+2y+11w+t$...

From the colimit formula for $\text{Lan}_JE$ we derive that $\tilde E$ sends $X$ to $\sum_n X^n/S_n$ (quotient sets), and this means that in an $n$-tuple of elements of $X$, the order of the coordinates does not matter, but the number of repetitions does.

<div id="label-11"></div>
**Example** (The AF of the species of permutations). The species of [permutations](2-p-and-its-up-and-species.html#label-6) gives rise to the analytic functor sending $X$ to $\sum_n X^n$. This functor builds the free monoid (if the sum starts from 0) or the free semigroup (if the sum starts from 1) on the set $X$.

<div id="label-12"></div>
**Example** (The AF of the species of oriented cycles).

<div id="label-12-bis"></div>
**Example** (The AF of the species of subsets).

We now embark on the proof of the characterisation theorem for analytic functors. We provide an elementary proof in two parts.

<div id="label-13"></div>
**Definition.** An endofunctor of $\bf Set$ is called *superfinitary* if there exists a finite set $[n] = \\{1,\dots,n\\}$ with the property that for each $X \in \bf Set$, the set $FX$ is the union of the images of $Fh$'s, with $h : [n] \to X$. In simple words, $F$ is superfinitary if, there exists an $n\ge 0$ such that for every set $X$, $FX$ is generated by the set $X^n$. Note that in this definition, $n$ is *the same* for all $X$'s.

<div id="here"></div>
**Remark.** Observe that if $F$ is superfinitary,

1. we can choose a *minimal* $n$ with the property that $X^n$ generates $FX$; say this minimal $n$ is called $n_0$. Then,
2. there exists $x_0 \in Fn_0$ which is minimal, i.e. such that $x_0$ does not lie in the image of any $F(f : [k] \hookrightarrow [n])$ for $[k]$ a proper subobject of $[n]$ (as this would violate minimality of $[n]$).

**Lemma.** Every endofunctor $F$ of $\bf Set$ is the coproduct (in the category $[{\bf Set}, {\bf Set}]$) of functors $F_x$ each of which preserves the terminal object.

*Proof.* The coproduct will be indexed by the set $F1$; given $x\in F1$, define the functor $F_x : {\bf Set} \to {\bf Set}$ sending $A$ to the fiber of $Ft_A$ over $x$, if $t_A : A \to 1$ is the terminal map. On morphisms, a map $A\to B$ defines a function $(Ft_A)^\leftarrow(x) \to (Ft_B)^\leftarrow(x)$. Clearly, this is a functor, and each $F_x$ sends $1$ to $F(\text{id}_1)(x)=\\{x\\}$, so it preserves the terminal object.

It is equally clear that $F$ results as the coproduct $\sum_{x\in F1} F_x$, because each $FA$ is isomorphic to the sum $\sum_{x\in F1} (Ft_A)^\leftarrow x$ (implicitly relying on the equivalence of categories ${\bf Set}/F1 \cong {\bf Set}^{F1}$).

This apparently simple lemma has powerful consequences: when we want to prove a statement for a certain class ${\cal A}$ of endofunctors of $\bf Set$, and $\cal A$ is stable under coproducts, we can assume that an endofunctor in $\cal A$ preserves the terminal object.

A particular case of such an $\cal A$ is the class of analytic functors.

<div id="label-14"></div>
**Theorem** (Characterisation of analytic functors, I). For a superfinitary functor $F : {\bf Set} \to {\bf Set}$ the following conditions are equivalent:

1. $F$ weakly preserves pullbacks;
2. $F$ is analytic;
3. $F$ splits as a coproduct of sym-representables.

When this is proved, the assumption of superfinitariness (is that even a name...?) can be removed, obtaining Joyal's characterisation of $\cal A$.

<div id="label-15"></div>
**Theorem** (Characterisation of analytic functors, II). For a finitary functor $F : {\bf Set} \to {\bf Set}$ the following conditions are equivalent:

1. $F$ is analytic;
2. $F$ is a coproduct of sym-representables;
3. $F$ weakly preserves *countable* wide pullbacks;
4. $F$ weakly preserves wide pullbacks (of all cardinality).

### Proof of the first theorem

Let's prove that $(1 \Rightarrow 3)$. First of all, we can assume that $F1\cong 1$. Note that, as a consequence, $F$ weakly preserve products, because it weakly preserves the pullback

{% tex classes: [antex, display] %}
\setlength{\fboxrule}{1sp}
\setlength{\fboxsep}{0sp}
\fbox{\xymatrix{
A\times B \ar@{}[dr]|(.33)\lrcorner \ar[r] \ar[d] & A \ar[d]\\
B \ar[r]& 1
}}
{% endtex %}

This means that, provided we choose a minimal $n_0, x_0$ as in [the previous remark](./5-species-and-analytic-functors-wide-pullbacks.html#here), every $f : X \to [n]$ such that $x_0$ lies in the image of $Ff$ must be an epimorphism.

In particular, all elements in the set

$$ \text{Fix}(F|x_0) := \{ f : [n] \to [n] \mid Ff(x_0)=x_0 \} $$

are epimorphisms, and since $[n]$ is finite, they must be bijections as well. This determines a subgroup $H_F \le S_n$.

We shall show that there exists an isomorphism of functors $\tilde{\xi}\_{x_0} : {\bf B}(n,-)/H_F \cong F$, where ${\xi}_{x_0}$ is the unique natural transformation corresponding to $x_0$ via Yoneda.

First of all, $\xi\_{x_0}$ descends to the quotient "$H_F$-faithfully", in the sense that $\xi\_{x_0}u=\xi\_{x_0}v$ if and only if $u,v$ lie in the same $H_F$-orbit (if: obvious; only if: the pullback of $u$ against $v$ must be weakly preserved by $F$), and thus defines an injective function $\tilde{\xi}\_{x_0} : {\bf B}(n,-)/H_F \hookrightarrow F$; using that $F$ weakly preserves pullbacks, we can show that $\tilde{\xi}\_{x_0}$ is also surjective: given $y\in Fn$, there exist $f : n\times n \to n$ and $z\in Fn$ such that $F\pi_1 z=x_0$ and $F\pi_2 z = y$. But then $\pi_1f\in \text{Fix}(F\|x\_0)$, so it is invertible. Then, $\xi\_{x_0}u=y$ if we fix $u=\pi_2 f (\pi_1 f)^{-1}$.

The implication that $(3 \Rightarrow 2)$ is evident from the fact that each sym-representable is analytic, and $\cal A$ is closed under coproducts.

Finally, to prove that $(2 \Rightarrow 1)$, it is enough to prove that all concentrated species $\kappa_n f$ weakly preserve pullbacks

**Remark.** The proof of the second theorem, which was the one initially proved by Joyal, follows from a similar argument; in particular, the implication $3\Rightarrow 2$ follows from the fact that each $F$ that weakly preserves countable wide pullbacks is superfinitary (prove this by contradiction as an exercise). All other implications are trivial or follow clearly from what we already know.

#### Reading list

- Adámek, J., and J. Velebil. _Analytic functors and weak pullbacks._ Theory and Applications of Categories [electronic only] 21 (2008): 191-209.