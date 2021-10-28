---
layout: post
title: P, its universal property, and species
latex: katex
katex:
  macros:
antex:
    preamble:
        \usepackage{tikz,tikz-cd}
        \usetikzlibrary{calc,positioning}
        \usepackage[all]{xy}
        \usepackage{commutative-diagrams}
        \usepackage{amsmath,amsfonts}
        \usepackage{xcolor}
        \usepackage{tikz}
---


The fundamental object of study of the theory of combinatorial species is the category $\bf P$ of finite sets and bijections, and its presheaf category $[{\bf P}^\text{op}, {\bf Set}]$. (Note: due to the fact that a groupoid is a self-dual category, there isn't  much difference between $[{\bf P}^\text{op}, {\bf Set}]$ and $[{\bf P}, {\bf Set}]$, but we will usually speak about the first category.)

### The groupoid of natural numbers

**Definition** (The category $\bf P$). The category $\bf P$, also called the *groupoid of natural numbers* has

1. Objects the finite sets $A,B,\dots$;
2. Hom sets $\hom(A,B)$ the set of bijective functions $\sigma : A \to B$ if $|A| = |B|$, and the empty set otherwise.

**Remark** (On the structure of $\bf P$).

**Corollary.** A functor $X : {\bf P} \to {\bf Set}$ is just...

**Theorem.** The universal property of $\bf P$ as the free symmetric monoidal category on a singleton

### Monoidal structure on $\bf P$

**Definition** (The Cartesian monoidal structure).

**Definition** (The Cauchy monoidal structure).

**Definition** (The substitution monoidal structure).