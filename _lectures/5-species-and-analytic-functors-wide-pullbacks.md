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

This chapter embarks on a more category-theoretic study of species. Every species has a canonical decomposition as an infinite sum $f_0 + f_1 + f_2 + \dots$ and it gives rise to an endofunctor $\bar F $ of $\bf Set$ that admits a "Taylor expansion".

Such functors are called *analytic*, and they can be characterised intrisically as the finitary endofunctors of $\bf Set$ satisfying a weak exactness property.

### Analytic functors, wide pullbacks

**Construction.** Given a combinatorial species $f : {\bf P} \to \bf Set$, we can consider the left Kan extension

{% tex classes: [antex, display] %}
\setlength{\fboxrule}{1sp}
\setlength{\fboxsep}{0sp}
\fbox{\xymatrix{
foo
}}
{% endtex %}

and $FX$ can be computed as the coend

$$ X\mapsto \int^n f(n)\times X^n $$

such a functor is called *analytic*, and in fact we call in this way every functor that lies in the image of the functor $\text{Lan}_J$, where $J : {\bf P} \hookrightarrow {\bf Set}$ is the (nonfull) inclusion functor. It is then evident that $\text{Lan}_J$ is the left adjoint in a pair

$$ \text{Lan}_J :  {\bf Spc} \leftrightarrows [{\bf Set}, {\bf Set}] : J^*. $$

Since $J$ is not fully faithful, the category of combinatorial species cannot be seen as a full subcategory of endofunctors of $\bf Set$ subject to some additional property prescribed by the coreflection $J^*$.

Its essential image is thus a little bit more difficult to characterise than in the case of $[{\bf Fin}, {\bf Set}]$ examined in lecture 1.

With a little bit more effort, we can however characterise such an essential image as the subcategory of those $F : {\bf Set} \to {\bf Set}$ such that

1. $F$ is finitary;
2. $F$ weakly preserves wide pullbacks.

The second condition deserves more explanation, but first a bit of history. This equivalence was first showed by Joyal in his "*Foncteurs analytiques*"; the proof of the equivalence will occupy the entire lecture, and it comes from a more modern presentation of this idea in Adamek-Velebil that is purely elementary, in the sense that it relies on elementary category theory and it is quite straightforward.

**Definition.** An endofunctor $F : {\bf Set} \to {\bf Set}$ is said to *weakly preserve pullbacks* if for every pullback square

{% tex classes: [antex, display] %}
\setlength{\fboxrule}{1sp}
\setlength{\fboxsep}{0sp}
\fbox{\xymatrix{
foo
}}
{% endtex %}

the canonical map $F(A\times_C B) \to FA \times_{FC} FB$ is surjective.

**Definition.** Let $E$ be a set and $\cal C$ a category; a *($E$-ary) wide pullback* with sink $X \in \cal C$ is the limit of a diagram $E \to {\cal C}/X$ where $E$ is regarded as a discrete category and ${\cal C}/X$ is the slice of $\cal C$ over $X$.

In simple terms, a wide pullback is a pullback having possibly more than two arrows pointing to the same object. In more obscure terms, let $E$ be a set, and let $E^\rhd$ be the category where a distinguished new object $\infty$ has be forcefully rendered a terminal object; a $E$-ary wide pullback in $\cal C$ is a limit of a diagram $E^\rhd \to \cal C$.

### Canonical decomposition and examples

Examples of analytic functors and of their

### Proof of the theorem