---
layout: post
title: "Derivation: the differential structure on $\\bf Spc$"
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
        \usepackage{amsmath}


---

Every species $F : {\bf B} \to {\bf Set}$ admits a "formal derivative" $F'$ so that the generating series of $F'$ is the formal derivative of $g_F(t)$:

$$ g_{F'}(t) = \frac{d}{dt}g_F(t) $$

Since the formal derivative of (exponential) power series is defined by shifting coefficients, because $\frac{d}{dt}\frac{t^n}{n!} = t^{n-1}{(n-1)!}$, the derivative $F'$ is defined acting on a finite set $n$ with $n$ elements as $F'[n] = F[n+1]$ (without restricting to a skeleton of $\bf B$, this is written $F[A] = F[A+1]$ where $A+1$ is the coproduct of $A$ with a singleton).

**Remark.** The derivative of species is a functor $\partial : {\bf Spc} \to {\bf Spc}$ that satisfies the following properties:

- linearity
- Leibniz rule
- chain rule

**Proposition.** The derivative of species has both a left adjoint $\boldsymbol L$ and a right adjoint $\boldsymbol R$; as a consequence, $\partial$ preserves all limits and colimits in $\bf Spc$.

*Proof.*

**Example** (The derivative of the species of elements). ...

**Example** (The derivative of the species of singletons). ...

**Example** (The derivative of the species of a representable species). ...

**Example** (The derivative of the species of linear orders). ...

**Example** (The derivative of the species of subsets). ...

**Example** (The derivative of the species of cycles). ...

**Example** (The derivative of the species of permutations). ... 

**Remark.** Taylor expansion of a species 

**Definition.** Kähler differentials 

**Definition.** Differential equations on $\bf Spc$

**Definition.** The category of differential operators on $\bf Spc$