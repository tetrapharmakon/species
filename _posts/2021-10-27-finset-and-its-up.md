---
layout: post
title: Fin and Its Universal Property
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

## The universal property of $\bf Fin$ and $[{\bf Fin},{\bf Set}]$

The category $\bf Fin$ has objects the finite sets and morphisms all functions; a skeleton of $\bf Fin$ is the category whose objects are sets $[n]=\{1,\dots,n\}$ for $n\ge 0$ (with the convention that $[0]=\varnothing$), and morphisms are functions $f : [n] \to [m]$.

**Theorem**. The category $\bf Fin$ is the free finite coproduct completion of the singleton $\bullet$.

*Proof.* It is enough to show that a functor $\bf Fin \to \mathcal{C}$ that preserves coproducts is uniquely determined by the image of $[1]$, i.e. by $F[1]=X$; this is obvious, because

$$ F([n]) = \coprod_{i=1}^n F([1]) = \coprod_{i=1}^n X = [n] \otimes X $$

(if $ \\_ \otimes \\_ $ denotes the [tensor]() of $X\in\mathcal{C}$ with the set $[n]$). $\blacksquare$

As an immediate corollary, the opposite category ${\bf Fin}^\text{op}$ is the free finite *product* completion of the singleton $\bullet$.

**Theorem.** There is an equivalence of categories between

1. The category of all functors ${\bf Fin} \to {\bf Set}$, and natural transformations;
2. The category of *finitary* endofunctors of $\bf Set$, i.e. those $T : {\bf Set} \to {\bf Set}$ that preserve [filtered colimits]().

*Proof.* Let's first build an adjunction between the two categories; the "tautological" inclusion functor $J : {\bf Fin} \to {\bf Set}$ induces an adjunction

$$ \text{Lan}_J : [{\bf Fin}, {\bf Set}] \leftrightarrows [{\bf Set}, {\bf Set}] J^* $$

where $J^*$ is the "precomposition with $J$" functor, and $\text{Lan}_J$ its left adjoint. Such a left adjoint is fully faithful, because $J$ is fully faithful, and this last condition entails that in the diagram

{% tex classes: [antex, display] %}
\xymatrix{
  A \drtwocell<\omit>{\eta} \ar[r]^F\ar[d]_J & B \\
  C\ar@/_1pc/[ur]_{\text{Lan}_J} &
}
{% endtex %}

The 2-cell $\eta : F \Rightarrow (\text{Lan}_J F)\circ J $ is invertible; $\eta$ is exactly the unit of the adjunction $\text{Lan}_J \dashv J^*$, and this in turn entails that the left adjoint in the adjunction is fully faithful.

It only remains to characterise the essential image of $\text{Lan}_J$ as the full subcategory of finitary functors on $\bf Set$; a general theorem comes to the rescue again: the objects we are interested in are just the ones at whose components the counit of the adjunction $\text{Lan}_J \dashv J^*$ is an isomorphism; unwinding this condition, we get to prove that the following conditions are equivalent:

1. $T : {\bf Set} \to {\bf Set}$ is finitary;
2. The counit $\epsilon_T : \text{Lan}_J(TJ) \Rightarrow T$ is a natural isomorphism.

This is easily seen: let's say that $T$ is finitary, and unwind the counit using the universal property; given $A\in \bf Set$, the left Kan extension of $TJ$ along $J$, computed in $A$, is just the [weighted colimit]() of $TJ$ with weight $P={\bf Set}(J-, A)$, and this is in turn the colimit of $TJ$ over the (opposite of the) [category of elements]() of $P$, i.e the colimit of the composition $T \circ \Sigma^\text{op}$, where the category of elements and the canonical projection $\Sigma$ appear in the upper left corner in the pullback

{% tex classes: [antex, display] %}
\xymatrix{
  \mathcal{E}_A^J\ar[r]\ar[d]_\Sigma & {\bf Set}_* \ar[d]\\
  {\bf Fin}^\text{op} \ar[r]_{P} & \bf Set
}
{% endtex %}

This category is filtered, so in the end $\lambda A.\text{Lan}_J(TJ)A\cong \lambda A.T((\text{Lan}_J J)A)\cong \lambda A.TA$, naturally in $A$ (because $\text{Lan}_JJ$ is isomorphic to the identity functor). $\blacksquare$

**Remark.** From a higher perspective, this is a consequence of a more general theorem (but this explanation is imprecise); given a suitable class of "shapes", i.e. a subcategory $\mathcal{D} \subseteq {\bf Cat}$, there is an equivalence of categories between

1. The category of all functors $F_\mathcal{D}(\bullet) \to {\bf Set}$, and natural transformations;
2. The category of endofunctors of $\bf Set$ that commute with $\mathcal{D}$-filtered colimits,

where $F_\mathcal{D}(\bullet)$ is the free completion of the point under $\mathcal{D}$-shaped limits.

**Fact.** Given an equivalence of categories $F :{\cal V} \leftrightarrows {\cal W} : G$, where $\cal V$ is (symmetric) monoidal, there is an essentially unique way to give $\cal W$ a monoidal structure, so that $F,G$ become [strong monoidal functors]().

*Sketch of proof.* Let's say $(\otimes, I)$ is a monoidal structure on $\cal V$. Define a tensor product on $\cal W$ using $F,G$: $(X,Y)\mapsto X\odot Y= F(GX \otimes GY)$. Define a monoidal unit $K:= GI$. Straightforward from here. $\blacksquare$

**Corollary.** Under the same notation as above, there is an equivalence of categories

$$ \text{Mon}({\cal V}) \leftrightarrows \text{Mon}({\cal W}) $$

induced by $(F,G)$ between internal monoids in $(\cal V, \otimes, I)$ and internal monoids in $(\cal W, \odot, K)$.

**Remark.** The category of all endofunctors of $\bf Set$ is strict monoidal, with respect to composition of functors. The category $[{\bf Set}, {\bf Set}]_\omega$ of finitary endofunctors inherits a strict monoidal structure from $[{\bf Set}, {\bf Set}]$, because the composition of finitary functors is again finitary.

As a consequence, the category $[{\bf Fin}, {\bf Set}]$ inherits a (non strict) monoidal structure, called the *substitution product*: the substitution of a pair of functors $M,N : {\bf Fin}\to{\bf Set}$ is the functor

$$ [n] \mapsto M \triangleleft N := (\text{Lan}_J M \circ \text{Lan}_J N) \circ J = \text{Lan}_J M \circ N$$

*Exercise.* Unwind the definition of $\text{Lan}_J M \circ N$ finding an explicit formula for $M\triangleleft N$. (We will come back to this.)

A last introductory remark, on the universal property of the presheaf category.

**Theorem.** Let $\cal C$ be a small category; the category $[{\cal C}^\text{op}, {\bf Set}]$ is the free small cocomplete category generated by $\cal C$.

*Proof.* This means that there is an isomorphism of categories between

1. The category of functors ${\cal C} \to {\cal D}$, when $\cal D$ is small-cocomplete;
2. The category of cocontinuous functors $[{\cal C}^\text{op}, {\bf Set}] \to \cal D$.

The equivalence is induced by the functor "precomposition with the Yoneda embedding ${\cal C} \to [{\cal C}^\text{op}, {\bf Set}]$, that defines a correspondence

$$ {\sf Cat}([{\cal C}^\text{op}, {\bf Set}], {\cal D}) \to {\sf Cat}({\cal C}, \cal D).$$