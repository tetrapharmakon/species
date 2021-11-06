---
layout: post
title: Monoidal Structures on $\bf P$
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



A fundamental tenet of categorical combinatorics is that the richness of the objects it tries to study ("combinatorial objects", broadly intended) comes from the synergy between many different structures one can equip the categories meant to describe said combinatorial objects.

### Monoidal structure on $\bf P$ and $\bf Spc$

In particular, there are three distinct *monoidal structures* on the category of species, all of which have a quite natural combinatorial interpretation. One of them is the most important for us because it is induced on $\bf Spc$ by a natural choice of a monoidal product on $\bf P$. The monoidal structure on $\bf P$ is essentially determined by the disjoint sum of finite set: in a skeleton for $\bf P$, $[n]\cup [m] = [n+m]$. This operation induces a *convolution* operation on $\bf Spc$.

**Definition** (The "sum and shuffle" product on $\bf P$). The "sum and shuffle" monoidal structure $\oplus$ on $\bf P$ is the bifunctor $\\_\oplus\_ : {\bf P} \times {\bf P} \to \bf P$ defined as follows:

- on objects, $[n]\oplus [m]$ is just the set $[n+m]$;
- on morphisms, let's say $\sigma : [n] \to [n]$ and $\eta [m] \to [m]$ are two bijections, the bijection $∑ \oplus \eta$ is defined as a "shuffle permutation", namely

$$ \sigma \oplus \eta : i \mapsto \begin{cases} \sigma i & \text{ if } 1 \le i \le  n \\ \eta(i-n) & \text{ if } n+1 \le i \le n+m \end{cases} $$

In simple terms, this means that a permutation of $n$ elements and a permutation of $m$ elements act "in parallel" on a set with $n+m$ elements. (Exercise: write $\sigma \oplus \eta : [6] \to [6]$ when $n=m=3$, $\sigma = \left( \begin{smallmatrix} 1 & 2 & 3 \\\\ 3 & 1 & 2 \end{smallmatrix}\right)$ and $\eta = \left( \begin{smallmatrix} 1 & 2 & 3 \\\\ 2 & 1 & 3 \end{smallmatrix}\right)$.)

**Definition** (The Cartesian monoidal structure). Given two species $X_\bullet,Y_\bullet$, their *Cartesian product* is the species

$$ (X \times Y)_\bullet : [n] \mapsto X[n] \times Y[n] $$

It can be easily checked that $(X\times Y)_\bullet$ is the binary product bifunctor in $\bf Spc$. (Evidently: because limits, and *a fortiori* products, in a category of functors, are computed pointwise.)

In terms of their formal power series representation, the product corresponds to the pointwise (or "Hadamard") product of formal power series: given $f,g : \mathbb N \llbracket t\rrbracket$, $f\times g$ is the series

$$ \sum_{n=0}^\infty (f_ng_n) t^n.$$

**Definition** (The coCartesian structure). Given two species $X_\bullet,Y_\bullet$, their *coproduct* is the species

$$ (X \cup Y)_\bullet : [n] \mapsto X[n] \cup Y[n] $$

where $\cup$ denotes the disjoint union of sets. It can be easily checked that $(X\cup Y)_\bullet$ is the binary coproduct bifunctor in $\bf Spc$. (Evidently: because colimits, and *a fortiori* coproducts, in a category of functors, are computed pointwise.)

In terms of their formal power series representation, the product corresponds to the plain *sum* of formal power series.

In order to introduce the next construction, we need the following definition: let $X,Y$ be two sets on which a group $G$ is acting, respectively on the right and on the left.

We define the *equivariant product* $X\otimes_G Y$ of $X$ and $Y$ to be the set obtained as the coequaliser of the pair of maps

{% tex classes: [antex, display] %}
\xymatrix{
  X \times G \times Y \ar@<.5em>[r]^{X \times \beta} \ar@<-.5em>[r]_{\alpha \times Y} & X \times Y \ar[r] & X\otimes_G Y
}
{% endtex %}

where $\alpha : X \times G \to X$ and $\beta : G \times Y \to Y$ are the actions.

**Definition** (The Cauchy monoidal structure). Given two species $X_\bullet,Y_\bullet$, their *Cauchy product* is the species

$$ (X \cdot Y)_\bullet : [n] \mapsto \sum_{p+q=n} X[p] \otimes Y[q] $$

where the sum is indexed over all tuples $p,q$ such that $p+q=n$. It can be shown that the Cauchy product $(X\cdot Y)_\bullet$ of two combinatorial species is the [Day convolution]() inherited by the "sum and shuffle" monoidal structure on $\bf P$.

(Exercise: how do you use the sum and shuffle product and the equivariant product to interpret the $\otimes$ sign?)

The last and more important monoidal structure with which the category of species is endowed is called the *substitution* monoidal structure, and its definition resembles the one given for $[{\bf Fin},{\bf Set}]$ in [lecture 1]().

On generating series, this operation coincides with *functional substitution*: given two formal power series $f = \sum a_n t^n,g = \sum b_m t^m \in K\llbracket t\rrbracket$, define the series $f[g](t)$ to be the one obtained by formally unwinding the expression

$$ a_0 + a_1 g(t) + a_2 (g(t) \cdot g(t)) + \dots $$

(*Exercise*. Find an explicit expression for $\[t^n\]\(f[g]\)$ in terms of the $a_n, b_m$'s.)

**Definition** (The substitution monoidal structure).

We have seen that the substitution product on $[{\bf Fin},{\bf Set}]$ can equivalently be described as the monoidal structure obtained on $[{\bf Fin},{\bf Set}]$ by transport of structure under the equivalence of $[{\bf Fin},{\bf Set}]$ with finitary endofunctors of $\bf Set$. A similar theorem holds in this case: the left Kan extension of a functor $X : {\bf P} \to {\bf Set}$ along the (nonfull) inclusion $j : {\bf P} \to {\bf Set}$ yields an equivalence between $\bf Spc$ and a monoidal subcategory of $[{\bf Set},{\bf Set}]$.

### On the structure of $\bf Spc$ as a topos

On top of all of this structure, the category of species, i.e. functors ${\bf P}^\text{op} \to {\bf Set}$ has very nice properties of a completely different kind: it is a *Grothendieck topos* (or shortly, just a *topos*).

In short, a Grothendieck topos is a category $\cal E$ where "the usual kind of Mathematics can be enacted" (at the price of doing so *constructively*).

Somewhat surprisingly, the class of categories embodying such a powerful language can be axiomatised pretty concisely: a topos is a category $\cal E$

1. admitting all finite limits;
2. that is *cartesian closed*, meaning that there is a natural bijection
   $$ {\cal E}(A\times B, C) \cong {\cal E}(A, C^B) $$
   for every three objects $A,B,C$
3. having a *subobject classifier*, meaning an object $\Omega$ with the property that for every $A\in\cal E$ the poset of all subobjects of $A$ is parametrised by the set of morphisms into a fixed object $\Omega$ that thus "classifies" monomorphisms.

Unwinding axiom 3, it means the following: there exists a unique monomorphism $\tau : 1 \to \Omega$ with the property that *every* monomorphism $m : U \to A$ into *every* object $A\in \cal E$ appears in a pullback square

{% tex classes: [antex, display] %}
\xymatrix{
  U\ar[r]\ar[d]_m  & 1 \ar[d]^\tau  \\
  A \ar[r] & \Omega
}
{% endtex %}

of $\tau$ along a unique $\chi_A : A \to \Omega$.

This request translates diagrammatically the request that every subset $X\hookrightarrow A$ has a "characteristic function" $\chi_X : A \to \Omega$ such that $\chi_X(a)=1$ if and only if $a\in X$.

The meat is in the third axiom: having a subobject classifier is a powerful property for a category (familiar categories like groups, vector spaces, and $\bf Cat$ (categories and functor) cannot have one; prove it as an exercise.)


**Remark.** The cartesian closure of $\bf Spc$

...

**Remark.** The subobject classifier of $\bf Spc$

...