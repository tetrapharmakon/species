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


The fundamental object of study of the theory of combinatorial species is the category $\bf P$ of finite sets and bijections, and its presheaf category $[{\bf P}^\text{op}, {\bf Set}]$. (Note: due to the fact that a groupoid is a self-dual category, there isn't  much difference between $[{\bf P}^\text{op}, {\bf Set}]$ and $[{\bf P}, {\bf Set}]$, but we will usually speak about the second category.)

### The groupoid of natural numbers

**Definition** (The category $\bf P$). The category $\bf P$, also called the *groupoid of natural numbers* has

1. Objects the finite sets $A,B,\dots$;
2. Hom sets $\hom(A,B)$ the set of bijective functions $\sigma : A \to B$ if $\text{card}(A) = \text{card}(B)$, and the empty set otherwise.

A skeleton of $\bf P$ consists of the category having objects the natural numbers $[n]=\{1,\dots, n\}$ (with the convention that $[0]$ is empty), and hom-sets $\hom(n,n)$ the symmetric groups $S_n$ for each $n\ge 0$.

**Remark** (On the structure of $\bf P$). Every groupoid splits as a disjoint union of connected groupoids (each of which is); the category $\bf P$ (or rather its skeleton) splits as a disjoint union of the groups $S_n$, with $n\ge 0$. So the *canonical decomposition* of $\bf P$ is the equivalence of categories

$$ {\bf P} \cong \coprod_{n=0}^\infty S_n. $$

An immediate corollary of this decomposition is that a functor $X : {\bf P} \to {\bf Set}$ is uniquely determined by a "symmetric sequence":
<!-- of sets $(X_n \mid n\ge 0)$ each of which has a left action of the symmetric group on $n$ elements. -->

**Corollary.** A functor $X : {\bf P} \to {\bf Set}$ is completely determined by the following data:

1. A sequence of sets $(X_n \mid n\ge 0)$;
2. A sequence of functions $(a^X_n : S_n \times X_n \to X_n)$, each of which is a left action of $S_n$ on the set $X_n$.

*Proof.* It is evident that the actions $a^X_n$ are precisely the action on morphisms of a functor $X_\bullet : {\bf P} \to {\bf Set}$ (vice versa, every hom-set ${\bf P}(n,m)$ is empty for $n\neq m$, so the datum of the actions is enough to "glue" a functor $X$).

**Definition** (Category of species). A functor $X_\bullet : {\bf P} \to {\bf Set}$ is called a *combinatorial species*.

The category $\bf Spc$ of combinatorial species has objects said functors, and morphisms the natural transformations $\alpha : X_\bullet \Rightarrow Y_\bullet$.

The category $\bf P$ and $\bf Spc$ have two important universal properties:

**Theorem.** The category $\bf P$ is the free symmetric monoidal category on a singleton.

**Theorem.** The category $\bf Spc$ is the free cocomplete symmetric monoidal category on a singleton.

### Monoidal structure on $\bf P$

**Definition** (The Cartesian monoidal structure).

**Definition** (The Cauchy monoidal structure).

**Definition** (The substitution monoidal structure).