---
layout: post
title: "Generalization: species-like structures"
latex: katex
katex:
  macros:
    '\svSpc': '(S,{\cal V})\text{-}\mathsf{Spc}'
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
        
---

There is a vast array of generalizations of the concept of species, that we now survey. Most of the theory developed so far applies to these general contexts as well, with due care about details (for example, it is not very easy to define the substitution product for colored species).

### Enriched, coloured species

If $S$ is a set regarded as a discrete category, and $\cal V$ a *Bénabou cosmos* (i.e. a complete, cocomplete, symmonclosed category), we give the following definition encompassing various (but not all) examples of this section.

**Definition.** The category $(S,{\cal V})\text{-}\mathbf{Spc}$ of *$(S,{\cal V})$-species* is defined as the functor category $\mathbf{Cat}({\bf B}[S],{\cal V})$ where ${\bf B}[S]$ is the free symmoncat on the set $S$.

Evidently, the "category of species" studied so far is the category $(1,{\bf Set})\text{-}\mathsf{Spc}$ if $1$ is a singleton set.

**Remark.** One could have defined a category $({\cal A},{\cal V})\text{-}\mathsf{Spc}$ as the functor category $\mathbf{Cat}({\bf B}[{\cal A}],{\cal V})$ (the free symmoncat construction makes sense for every category, not just the discrete ones). This is however a different kind of gadget, which would deserve the name of *free (cocomplete) 2-rig on $\cal A$*; species, in this perspective, occupy a special role as they are free *on a set*, much like a polynomial ring is free on a set of generators (for its multiplication) regarded as variables.

This definition is very pliable: the formal properties of $(S,{\cal V})\text{-}\mathbf{Spc}$ are not much dependent on $\cal V$, which can be chosen to be the category $\bf Top$ of topological spaces, or vector spaces, or simplicial sets,... but also the category $(T,{\cal W})\text{-}\mathbf{Spc}$ for a different pair $(T,\cal W)$ (what happens in that case)?

Leaving the base of enrichment $\cal V$ equal to $\bf Set$ and raising the cardinality of $S$ one obtains the so-called *multicolored* species (the terminology dates back to homotopy theory, where the set $S$ is regarded as a set of "colours" for an "operad" -we will get there). Observe that since ${\bf B}[-]$ is a club in the sense of [Kelly](), among many other properties that this doctrine has there is the fact that 

$$ {\bf B}[S] \cong {\bf B}[1]\wr S \cong \prod_{s\in S}{\bf B}[1] $$

can be written as a "wreath product" of ${\bf B}[1]$ with $S$, i.e. as the *power* ${\bf B}[1]^S = {\bf B}^S$.

Regarding species as formal power series, the category $\mathbf{Cat}({\bf B}[S],{\cal V}) = \mathbf{Cat}({\bf B}^S,{\cal V})$ should be regarded as the category of polynomials in $\\# S$ variables, and coefficients in $\cal V$.

**Exercise.** ($\star$) I have had for quite some time in the back of my head the idea that it is interesting to study species when $\cal V$ is compact closed, or star-autonomous; see for example [here](https://arxiv.org/abs/math/0612496), where some work is done in this direction; if this sounds like an interesting project for you, please let's do it together.

### Vector species

Let $k$ be a field. The category of $k$-vector species (it would be more natural to call them *$k$-linear*, however this might cause confusion with the concept of linear species below, which doesn't pertain vector spaces) is the category $(1,k\text{-}{\bf Vect})\text{-}\mathbf{Spc}$ of functors ${\bf B} \to k\text{-}{\bf Vect}$.

The theory of $k$-vector species is huge; the entire big book by Aguiar and Mahajan has been written to study if. In a certain sense, their interest lies in the fact that $k$-vector species have a more interesting and subtle theory of comonoids and bimonoids (hence the title of the big book), whereas a comonoid in $\bf Set$-valued species is a relatively more trivial notion. 

*Par contre* many structures can be unraveled from $k$-vector species; among the species, a particularly special role is played by *connected* and *positive* species:

- a species $F :$ is called *positive* if $F[0] = F\varnothing$ is empty. In turn, a $k$-vector species is called *positive* if $F[0]=F\varnothing$ is the null vector space.
- a species $F :$ is called *connected* if $F[0] = F\varnothing$ is a singleton. In turn, a $k$-vector species is called *connected* if $F[0]=F\varnothing$ is a vector space of dimension 1.

Associated to any positive comonoid there is a canonical filtration. *Primitive elements* form the first step in this filtration.

Let $(Q, \Delta,\epsilon)$ be a positive comonoid (i.e., a positive species which is a Day comonoid). 

The species of *primitive elements* of $Q$ is the positive species defined by

$$
\mathcal{P}(Q) := \ker \Delta .
$$

The functor $\mathcal{P}$ is left adjoint to the functor $\iota$
which views a positive species as a positive comonoid with zero coproduct:

$$
\mathbf{Spc}_+
\;\;\underset{\mathcal{P}}{\overset{\iota}{\rightleftarrows}}\;\;
\mathbf{Comon}(\mathbf{Spc}_+).
$$

Consider more generally the positive species
$$
\mathcal{P}^{(k)}(Q) := \ker \Delta^{(k)},
$$
for $k \ge 1$, where $\Delta^{(k)}$ is the $k$-fold iteration of the coproduct (coassociativity ensures that all composites 

{% tex classes: [antex, display] %}
\setlength{\fboxrule}{1sp}
\setlength{\fboxsep}{0sp}
\fbox{\xymatrix{
  Q \ar[r]^-\Delta & Q\otimes Q \ar[r] & \dots \ar[r] & Q\otimes \dots\otimes Q
}}
{% endtex %}

that can be obtained from $\Delta$ and identities are the same map).
This is the $k$-th term of the *coradical filtration* of $Q$.
Each $\mathcal{P}^{(k)}(Q)$ is by definition a subspecies of
$Q$.

From coassociativity and positivity it follows:

**Proposition.**
For any positive comonoid $Q$, we have the following:

- $\mathcal{P}^{(1)}(Q)\subseteq\mathcal{P}^{(2)}(Q)\subseteq \cdots \subseteq Q$;
- $\bigcup_{k \ge 1} \mathcal{P}^{(k)}(Q)= Q$;
- $\Delta^{(k-1)}\bigl(\mathcal{P}^{(k)}(Q)\bigr)\subseteq \mathcal{P}(Q)^{\cdot k}$.

All comonoid homomorphisms are compatible with the coradical filtration

**Proposition.**
Let $f : Q \to P$ be a morphism of positive comonoids.
Then
$$
f\bigl(\mathcal{P}^{(k)}(Q)\bigr)
\subseteq
\mathcal{P}^{(k)}(P).
$$

In addition, if the restriction
$$
f : \mathcal{P}(Q) \to \mathcal{P}(P)
$$
is injective, then $f : Q \to P$ is injective.


Another reason why $k$-vector species are important is the presence of an adjunction between species and $k$-vector species, induced by the free-forgetful adjunction over $\bf Set$, having nice properties of preservation of *all* the relevant monoidal structures on $\bf Spc$:

**Proposition.** Let $k[-]\dashv U$ be the free-forgetful adjunction between sets and vector spaces; then every $\bf Set$-species $P$ has a *$k$-linearization* (resorting to the word "linear" in this context feels unavoidable, but we maintain the prefix $k$ to avoid confusion) given by post-composition

{% tex classes: [antex, display] %}
\setlength{\fboxrule}{1sp}
\setlength{\fboxsep}{0sp}
\fbox{\xymatrix{
  {\bf B} \ar[r]^-{P} & {\bf Set} \ar[r]^-{k[-]} & k\text{-}{\bf Vect}
}}
{% endtex %}

The category of $k$-vector species is now equipped with the Day, Hadamard and substitution monoidal products, and $P\mapsto k[P]$ turns out to be a strong monoidal functor with respect to all three products. Moreover, a $\bf Set$-species is connected or positive if and only if its $k$-linearization is such.

### Linear species

The category $\mathbf{Lin}$ is defined as the category of totally
ordered finite sets $\langle n \rangle := \{1 < \cdots < n\}$ and
order-preserving bijections $\sigma : \langle n \rangle \to \langle n \rangle$.
Let's give a more intrinsic presentation for it.

**Definition.**
Let $S_n$ be the symmetric group of an $n$-set $[n]$. Let
$r : BS_n \to \mathbf{Set}$ be the (functor associated to the) left regular
representation of $S_n$, i.e. the action $S_n \to S_n$ given by left
multiplication; denote $[S_n/S_n]$ the associated [action groupoid](), i.e. the strict pullback


{% tex classes: [antex, display] %}
\setlength{\fboxrule}{1sp}
\setlength{\fboxsep}{0sp}
\fbox{\xymatrix{
{[S_n/S_n]} \ar[r] \ar[d] & {\mathbf{Set}_*} \ar[d] \\
BS_n \ar[r]_-r & \mathbf{Set} 
}}
{% endtex %}

**Remark.**
Notice that since the action is strictly transitive, $[S_n/S_n]$ consists of
the maximally connected groupoid on the underlying set of $S_n$. As such,
the unique functor $[S_n/S_n] \to \mathbf{1}$ is an equivalence of categories.

**Definition.**
We define the category $\mathbb{L}$ as the coproduct (in the category of
groupoids) $\coprod_{n \ge 0} [S_n/S_n]$; if $\mathcal{V}$ is a Bénabou
cosmos, the category of $\mathcal{V}$-valued $\mathbb{L}$-species is the
category of functors $\mathbb{L} \to \mathcal{V}$.

In the following we use the shorthand of denoting the category of
$\mathbf{Set}$-valued $\mathbb{L}$-species simply as $\mathbf{LSpc}$.
As a consequence of the equivalence established in Remark~6.6 above, an
$\mathbb{L}$-species is essentially a symmetric sequence:

$$\textstyle
\mathbf{LSpc}
= \prod_{n \ge 0} \mathbf{Cat}([S_n/S_n], \mathbf{Set})
\simeq \prod_{n \ge 0} \mathbf{Cat}(\mathbf{1}, \mathbf{Set})
\simeq \mathbf{Set}^{\mathbb{N}} .
$$

However, the interest in $\mathbb{L}$-species arises as (contrary to what
happens for $(\mathbb{S},\mathbf{Set})$-Spc)
differential equations in $\mathbf{LSpc}$ have unique solutions, following more closely the properties of formal power series.

Usually one compensates for the extreme rigidity of the domain category of
an $\mathbb{L}$-species fixing a commutative ring $R$ and `enriching' the
codomain of species in the category of *$R$-weighted sets*.

### Weighted species

Fix a commutative, unitary ring $R$. The category of*{*eighted sets} is defined as the following comma category construction:

{% tex classes: [antex, display] %}
\setlength{\fboxrule}{1sp}
\setlength{\fboxsep}{0sp}
\fbox{\xymatrix{
      \mathbf{wSet}_{/R} \ar[d]\ar[r] & 1 \ar[d]^{UR}\\ 
      \mathbf{Set} \ar@{=}[r] & \ultwocell<\omit>{}\mathbf{Set}
}}
{% endtex %}

  where $UR$ is the underlying set of the ring $R$. Explicitly, $\mathbf{wSet}$ has 

  - objects... 
  - arrows... 

One can define a canonical functor $\zeta : \mathbf{Set} \to\mathbf{wSet}_{/R}$ sending a set $A$ to its *zero-weighting* $(X,w_0 : X \to R)$ with $w_0$ constant at $0_R$; observe that $\zeta$ has a left adjoint: it is defined sending a set $A$ to the trivial weighted set $w : A \to R$ which has the constant zero function as weight. 

A map of weighted sets $\zeta(A) \to Y$ now corresponds to a function $h : A\to Y$ with the property that $w_Y(h(a))=w_0(a)=0$, so that $h$ factors through the *kernel* of $w_Y$ (this is a functor as every weighted set morphism induces a function $\ker (X,v)\to\ker(Y,w)$); hence,

$$ \textbf{wSet}_{/R}(\zeta A, (Y,w))\cong \textbf{Set}(A,\ker(Y,w)). $$

As an immediate consequence, $\zeta$ preserve all colimits that exist in $\mathbf{wSet}_{/R}$. 

**Remark.** In fact, $\mathbf{wSet}_{/R}$ is locally finitely presentable, by Proposition 1.57 in [LPAC].

Does $\zeta$ have a right adjoint?

### Moebius species
...

### Nominal sets

...