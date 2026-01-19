---
layout: post
title: "Operads: first contact"
latex: katex
katex:
  macros:
    '\Opd': '\mathbf{Opd}'
antex:
    preamble:
        \usepackage{tikz,tikz-cd}
        \usetikzlibrary{calc,positioning}
        \usepackage[all,2cell]{xy}\UseAllTwocells
        \usepackage{commutative-diagrams}
        \usepackage{amsmath,amsfonts,amssymb}
        \usepackage{xcolor}
        \usepackage{stmaryrd}
        \usepackage{tikz}
        \def\Opd{\mathbf{Opd}}
---

An operad is a monoid for the substitution product discussed in [lecture 3](./3-monoidal-structures-on-P.html#defi-5). As such, "the theory of operads" is the study of the category $\mathbf{Opd}={\bf Mon}({\bf Spc},\circ)$; but things are never as simple as they seem...

First, let's flesh out what the definition prescribes. An *operad* consists of a functor $T : {\bf B} \to \bf Set$, equipped with 

- multiplication, a natural transformation of type $\mu : T \circ T\Rightarrow T$, subject to the associativity axiom:

  {% tex classes: [antex, display] %}
  \setlength{\fboxrule}{1sp}
  \setlength{\fboxsep}{0sp}
  \fbox{\xymatrix{
    xxx
  }}
  {% endtex %} 
  
- unit, a natural transformation of type $\eta : J \Rightarrow T$ which satisfies the left and right unit axioms:
  
  {% tex classes: [antex, display] %}
  \setlength{\fboxrule}{1sp}
  \setlength{\fboxsep}{0sp}
  \fbox{\xymatrix{
    xxx
  }}
  {% endtex %}

Some of the structure of $\mathbf{Opd}$ can be deduced from the fact that we are just looking at a particular instance of the category of monoids in a monoidal category:

**Remark.** There is an adjunction

{% tex classes: [antex, display] %}
\setlength{\fboxrule}{1sp}
\setlength{\fboxsep}{0sp}
\fbox{\xymatrix{
  \Opd \ar@<-.3em>[r]_-U & \ar@<-.3em>[l]_-F ({\bf Spc},\circ)
}}
{% endtex %}

whence we can derive (among other things) that

- the category of operads is complete, and limits are created by the forgetful functor $U$;
- colimits are complicated, but still they are reducible to certain reflexive coequalizers of free algebras, via the "Linton trick".

One can define the *free operad* on a combinatorial species, i.e. a left adjoint to the forgetful functor $U$ above; the situation, however, is in stark contrast with the case of *Cauchy* monoids, because

- The Day convolution product is separately cocontinuous in both variables (compare this with the fact that the substitution product commutes with colimits in its left, but not in its right, component: $-\circ G$ is cocontinuous (and thus a left adjoint, given that $\bf Spc$ is a locally finitely presentable category), $F\circ-$ isn't -and thus a right adjoint to it can't exist).
- In the case of Day convolution, the free-forgetful adjunction is easy to characterize conceptually: the free Day-monoid on a species is $\sum_{n\ge 0} F^{*n}$, which reduces to the species $L\circ F$; two corollaries of this fact are important: first, the action of the forgetful functor $U : {\bf Mon}({\bf Spc},\otimes) \to {\bf Spc}$ coincides with the Day-hom $\{\}$

A not-so-helpful observation is that the free operad on $F$ has to be obtained as the initial algebra for the functor ${\bf Spc} \to {\bf Spc} : P\mapsto y1 + F\circ P$. Adamek's theorem then ensures that such an initial algebra is the colimit of the chain

$$ y1 \to y1 + F \circ y1 = y1 + F \to y1 + F \circ (y1 + F) \to \dots $$

The problem is, we cannot develop such an expression simplifying, since the substitution product is only left cocontinuous.

**Proposition.** Every operad $T : {\bf B} \to {\bf Set}$ defines a monad $\flat T : {\bf Set} \to {\bf Set}$ as follows:

- the underlying endofunctor $\flat T$ is 
  
  $$ (\flat T)X := \int^n X^n \times Tn $$

  evidently, $\flat T$ is the analytic functor associated to $T$, so the construction of this proposition can be summarized as: *the analytic functor associated to an operad* (qua species) *is a monad*, and thus an *analytic* monad.
- the unit (component) $\eta : X \to (\flat T)X$ is defined through the unit of $T$,

  {% tex classes: [antex, display] %}
  \setlength{\fboxrule}{1sp}
  \setlength{\fboxsep}{0sp}
  \fbox{\xymatrix{
    X \cong X\times 1\ar[r]^-{\langle \text{id},\eta\rangle}&
    X^1 \times T1 \ar[r]^-{\text{in}_1} &
    \int^n X^n \times Tn
  }}
  {% endtex %}

- the multiplication (component) $\mu : (\flat T)((\flat T)X) \to (\flat T)X$ is defined from the composition

  $$ \begin{aligned}
  \int^{m} (M_T(X))^m \times Tm 
  &\cong \int^{m} \Bigl[ \int^{n} X^n \times Tn \Bigr]^m \times Tm \\
  &\cong \int^{m} \left(\int^{\vec n} X^{n_1+\cdots+n_m} \times T{n_1} \times \cdots \times T{n_m} \right) \times Tm  \\
  &\cong \int^{m,\vec n} X^{n_1+\cdots+n_m} \times T{n_1} \times \cdots \times T{n_m} \times  Tm \\
  &\to \int^k X^k\times Tk 
  \end{aligned} $$
  
  where the last arrow is obtained, in turn, composing 

  {% tex classes: [antex, display] %}
  \setlength{\fboxrule}{1sp}
  \setlength{\fboxsep}{0sp}
  \fbox{\xymatrix{
    X^{\sum n_i} \times Tm \times T{n_1} \times \cdots \times T{n_m}  \ar[d]_-{\langle\mu,\text{id}\rangle} & \\
    X^{\sum n_i} \times T\left(\sum n_i\right)  \ar[r]^-{\text{in}_{k=\sum n_i}} &
    \int^k X^k \times Tk
  }}
  {% endtex %}
