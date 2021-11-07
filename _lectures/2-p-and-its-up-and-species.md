---
layout: post
title: The category P and species
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


The fundamental object of study of the theory of combinatorial species is the category $\bf P$ of finite sets and bijections, and its presheaf category $[{\bf P}^\text{op}, {\bf Set}]$. (Note: since a groupoid is a self-dual category, there is not much difference between $[{\bf P}^\text{op}, {\bf Set}]$ and $[{\bf P}, {\bf Set}]$, but we will usually speak about the second category.)

### The groupoid of natural numbers

**Definition** (The category $\bf P$). The category $\bf P$, also called the *groupoid of natural numbers*, has

1. Objects the finite sets $A,B,\dots$;
2. Hom sets $\hom(A,B)$ the set of bijective functions $\sigma : A \to B$ if $\text{card}(A) = \text{card}(B)$, and the empty set otherwise.

A skeleton of $\bf P$ consists of the category having objects the natural numbers $[n]=\{1,\dots, n\}$ (with the convention that $[0]$ is empty), and hom-sets $\hom(n,n)$ the symmetric groups $S_n$ for each $n\ge 0$.

**Remark** (On the structure of $\bf P$). Every groupoid splits as a disjoint union of connected groupoids (each of which is equivalent to a group); the (skeleton of the) category $\bf P$ splits as a disjoint union of the symmetric groups $S_n$, with $n\ge 0$.

So the *canonical decomposition* of $\bf P$ is the equivalence of categories

$$ {\bf P} \cong \coprod_{n=0}^\infty S_n. $$

An immediate corollary of this decomposition is that a functor $X : {\bf P} \to {\bf Set}$ is uniquely determined by a "symmetric sequence":
<!-- of sets $(X_n \mid n\ge 0)$ each of which has a left action of the symmetric group on $n$ elements. -->

**Corollary.** A functor $X : {\bf P} \to {\bf Set}$ is completely determined by the following data:

1. A sequence of sets $(X_n \mid n\ge 0)$;
2. A sequence of functions $(a^X_n : S_n \times X_n \to X_n)$, each of which is a left action of $S_n$ on the set $X_n$.

*Proof.* It is evident that the actions $a^X_n$ are precisely the action on morphisms of a functor $X_\bullet : {\bf P} \to {\bf Set}$ (vice versa, every hom-set ${\bf P}(n,m)$ is empty for $n\neq m$, so the datum of the actions is enough to "glue" a functor $X$).

**Definition** (Category of species). A functor $X_\bullet : {\bf P} \to {\bf Set}$ is called a *combinatorial species*. The *category* $\bf Spc$ of combinatorial species has objects the functors $X_\bullet : {\bf P} \to {\bf Set}$, and morphisms the natural transformations $\alpha : X_\bullet \Rightarrow Y_\bullet$.

So, a combinatorial species is entirely described by a sequence of sets $(X_n\mid n\ge 0)$, each of which has an action of the symmetric group on $n$ letters.

*Remark.* (A critical remark on how to think about combinatorial species). Given the corollary above, it is not a mistake to interpret a combinatorial species as a "categorified formal power series": the sequence of the $X_n$'s above is the sequence of coefficients of a formal power series $a_0 + a_1t+a_2t^2+\dots$. In slightly more formal terms, to the species $X_\bullet$ one can associate the "exponential" formal power series

$$g_X(t)= \sum_{n=0}^\infty \frac{|X_n|}{n!} t^n $$

(do not pay particular attention to the denominator term $n!$; it is there to simplify some expressions and blur the distinction between formal power series and analytic function to which it converges) where $t$ is a formal parameter and $\|X_n\|$ is the cardinality of $X_n$.


We will soon substantiate this idea showing that most of the operations that make sense for formal power series, such as addition, multiplication and an analogue of functional composition, also make sense for combinatorial species.

The reader shall however be warned that, while a quite intuitive invariant of the combinatorial species $X_\bullet$, its generating series is also a quite coarse one. For example, the correspondence that sends $X_\bullet$ into $g_X$ is not injective: there is plenty of species for which $\forall n.\|X_n\| = \|Y_n\|$ (and thus $g_X=g_Y$) without them being isomorphic. (For example, the species $S$ of permutations and the species $L$ of linear orders: in that case, $\forall n.\|S_n\| = \|L_n\| = n!$, and $g_S=g_L=\sum_{n=0}^\infty t^n = \frac1{1-t}$.)

*Remark.* (A remark on the generality of this definition). Originally, Joyal defined a "finitary species" (*espèce finitaire*) as an endofunctor of $\bf P$; the red book also concentrates on species having finite values. These two definitions are equivalent, because a functor ${\bf P} \to {\bf Fin}$ factors along the inclusion ${\bf P} \hookrightarrow {\bf Fin}$; but the category of all $\bf Set$-valued functors ${\bf P} \to {\bf Set}$ has way nicer categorical properties.

The category $\bf P$ and $\bf Spc$ have two important universal properties:

**Theorem.** The category $\bf P$ is the free symmetric monoidal category on a singleton.

*Proof.* Proving this claim amounts to show that given a symmetric monoidal category $\cal A$ there is an equivalence of categories between

1. the category $\cal A$, and
2. The category of strong monoidal functors $F : {\bf P} \to {\cal A}$.

In simple terms, a strong monoidal functor $F$ as above is determined by its value on the point. This is evident in light of the definition of the "sum and shuffle" monoidal product: the generic object of $\bf P$ is $[n] = [1] \oplus \dots \oplus [1]$, so that a strong monoidal functor $F$ must send $[n]$ to $F[1]^{\otimes n}$.

Similarly, with the additional request of cocompleteness, one proves the following.

**Theorem.** The category $\bf Spc$ is the free cocomplete symmetric monoidal category on a singleton.

### A few examples of species

**Example** (The species of singletons).

**Example** (The species of elements).

**Example** (The terminal species).

**Example** (The species of permutations).

**Example** (The species of linear orders).

**Example** (The species of graphs).

**Example** (The species of trees).

**Example** (The species of rooted trees).

**Example** (The species of...).


### Contact of order $n$ between species

As it is well-known, in the ring of formal power series $K\llbracket t\rrbracket$ ($K$ any commutative unital ring), one can define a binary relation $\sim_n$ of *contact of order n* between elements $f,g$: two series have contact of order $n$ if they are congruent modulo $t^n$ (more formally: $f\mathrel{\sim_n}g$ if the difference $f-g$ is in the kernel of the canonical map $K\llbracket t\rrbracket \to K[t]/(t^n)$ from the inverse limit).

**Definition.** For every $n\ge 0$, we denote $\iota_n : {\bf P}_{\le n} \hookrightarrow {\bf P}$ the inclusion of the full subcategory of $\bf P$ on the objects $\{[0],[1],\dots, [n]\}$.

Precomposition with $\iota_n$ determines a *truncation* functor

$$ \iota^*_n := \tau_n : {\bf Spc} = [{\bf P}, {\bf Set}]\to [{\bf P}_{\le n}, {\bf Set}] $$

and left and right Kan extensions along $\iota_n$ put $\tau_n$ in the middle of a triple of adjoint functors

$$ l_n \dashv \tau_n \dashv r_n $$

Formally, $l_n$ (resp., $r_n$) is the left (resp., right) Kan extension of a functor $H \in [{\bf P}\_{\le n}, {\bf Set}]$ along the functor
$\iota_{\le n}$; as an exercise, prove that these functors can be described explicitly as

$$ l_nF : m \mapsto \begin{cases} Fm & m \le n \\ \varnothing & m > n \end{cases} \qquad \qquad r_nF : m \mapsto \begin{cases} Fm & m \le n \\ * & m > n \end{cases} $$

We will say that a species $F$ has a contact of order $n$ with a species $G$ if $\tau_n F = \tau_n G$. We denote this relation as $F \mathrel{\sim_n} G$.

It is clear that when $F$ has contact of order $n$ with $G$, their associated series stand in the same relation.

**Definition.** A *sequence* of species is an ordered family of species $(F_0,F_1,\dots)$. The sequence $(F_0,F_1,\dots)$ is said to *converge* to the species $F_\infty$ if the following "Cauchy" condition is satisfied: for every $N\ge 0$ there exists an index $\bar n$ such that for every $n\ge \bar n$, $F_n \mathrel{\sim_N} F_\infty$.

In simple terms, $(F_0,F_1,\dots)$ converges to $F_\infty$ if for every $N\ge 0$, all but a finite number of terms of the sequence have contact of order $N$ with $F_\infty$. If this is the case, we write $F_n \overset{n\to\infty}\rightharpoondown F_\infty$.

*Exercise.* Is there a way to interpret this notion as a categorical construction? If $F_n \overset{n\to\infty}\rightharpoondown F_\infty$, does $F_\infty$ have a universal property?


#### Reading list

...