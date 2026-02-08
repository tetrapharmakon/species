---
layout: post
title: "Multiplication: Monoidal Structures on B"
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
        \usepackage{stmaryrd}
        \usepackage{tikz}
---



A fundamental tenet of categorical combinatorics is that the richness of the objects it tries to study ("combinatorial objects", broadly intended) comes from the synergy between many different structures one can equip the categories meant to describe said combinatorial objects.

### Monoidal structure on $\bf B$ and $\bf Spc$

In particular, there are three distinct *monoidal structures* on the category of species, all of which have a quite natural combinatorial interpretation. One of them is the most important for us because it is induced on $\bf Spc$ by a natural choice of a monoidal product on $\bf B$. The monoidal structure on $\bf B$ is essentially determined by the disjoint sum of finite sets: in a skeleton for $\bf B$, $[n]\cup [m] = [n+m]$. This operation induces a *convolution* operation on $\bf Spc$.

<div id="defi-1"></div>
**Definition** (The "sum and shuffle" product on $\bf B$). The "sum and shuffle" monoidal structure $\oplus$ on $\bf B$ is the bifunctor $\\_\oplus\_ : {\bf B} \times {\bf B} \to \bf B$ defined as follows:

- on objects, $[n]\oplus [m]$ is just the set $[n+m]$;
- on morphisms, let's say $\sigma : [n] \to [n]$ and $\eta : [m] \to [m]$ are two bijections, the bijection $\sigma\oplus \eta$ is defined as a "shuffle permutation", namely

$$ \sigma \oplus \eta : i \mapsto \begin{cases} \sigma i & \text{ if } 1 \le i \le  n \\ \eta(i-n) & \text{ if } n+1 \le i \le n+m \end{cases} $$

In simple terms, this means that a permutation of $n$ elements and a permutation of $m$ elements act "in parallel" on a set with $n+m$ elements. (Exercise: write $\sigma \oplus \eta : [6] \to [6]$ when $n=m=3$, $\sigma = \left( \begin{smallmatrix} 1 & 2 & 3 \\\\ 3 & 1 & 2 \end{smallmatrix}\right)$ and $\eta = \left( \begin{smallmatrix} 1 & 2 & 3 \\\\ 2 & 1 & 3 \end{smallmatrix}\right)$.)

<div id="defi-2"></div>
**Definition** (The Cartesian monoidal structure). Given two species $X_\bullet,Y_\bullet$, their *Cartesian product* is the species

$$ (X \times Y)_\bullet : [n] \mapsto X[n] \times Y[n] $$

It can be easily checked that $(X\times Y)_\bullet$ is the binary product bifunctor in $\bf Spc$. (Evidently: because limits, and *a fortiori* products, in a category of functors, are computed pointwise.)

In terms of their formal power series representation, the product corresponds to the pointwise (or "Hadamard") product of formal power series: given $f,g : \mathbb N \llbracket t\rrbracket$, $f\times g$ is the series

$$ \sum_{n=0}^\infty (f_ng_n) t^n.$$

<div id="defi-3"></div>
**Definition** (The coCartesian structure). Given two species $X_\bullet,Y_\bullet$, their *coproduct* is the species

$$ (X \cup Y)_\bullet : [n] \mapsto X[n] \cup Y[n] $$

where $\cup$ denotes the disjoint union of sets. It can be easily checked that $(X\cup Y)_\bullet$ is the binary coproduct bifunctor in $\bf Spc$. (Evidently: because colimits, and *a fortiori* coproducts, in a category of functors, are computed pointwise.)

In terms of their formal power series representation, the product corresponds to the plain *sum* of formal power series.

To introduce the next construction, we need the following definition: let $X,Y$ be two sets on which a group $G$ is acting, respectively on the right and on the left.

We define the *equivariant product* $X\otimes_G Y$ of $X$ and $Y$ to be the set obtained as the coequaliser of the pair of maps

{% tex classes: [antex, display] %}
\setlength{\fboxrule}{1sp}
\setlength{\fboxsep}{0sp}
\fbox{\xymatrix{
 X \times G \times Y \ar@<.5em>[r]^{X \times \beta} \ar@<-.5em>[r]_{\alpha \times Y} & X \times Y \ar[r] & X\otimes_G Y
}}
{% endtex %}

where $\alpha : X \times G \to X$ and $\beta : G \times Y \to Y$ are the actions.

<div id="defi-4"></div>
**Definition** (The Cauchy monoidal structure). Given two species $X_\bullet,Y_\bullet$, their *Cauchy product* is the species

$$ (X \cdot Y)_\bullet : [n] \mapsto \sum_{p+q=n} X[p] \otimes Y[q] $$

where the sum is indexed over all tuples $p,q$ such that $p+q=n$. It can be shown that the Cauchy product $(X\cdot Y)_\bullet$ of two combinatorial species is the [Day convolution](https://ncatlab.org/nlab/show/Day+convolution) inherited by the "sum and shuffle" monoidal structure on $\bf B$.

(Exercise: how do you use the sum and shuffle product and the equivariant product to interpret the $\otimes$ sign?)

The last and more important monoidal structure with which the category of species is endowed is called the *substitution* monoidal structure, and its definition resembles the one given for $[{\bf Fin},{\bf Set}]$ in [lecture 1](1-finset-and-its-up.html).

On generating series, this operation should correspond to *functional substitution*: the operation that given two formal power series $f = \sum a_n t^n,g = \sum b_m t^m \in K\llbracket t\rrbracket$, defines the series $(f\circ g)(t)$ as the one obtained by formally unwinding the expression

$$ a_0 + a_1 g(t) + a_2 (g(t) \cdot g(t)) + \dots $$

(*Exercise*. Find an explicit expression for $\[t^n\](f\circ g)$ in terms of the $a_n, b_m$'s.)

But one must be careful, as this relation is true for generating species but *not* for type-generating species. For example, this is true for the species of permutation $\cal S$, which is equal to the substitution of the species $\cal C$ of cycles into the species $E$ of sets. For the species $\cal S$, the type generating series is $\dots$, whereas for the substitution $E\triangleleft \cal C$ the type generating series is $\dots$.

The formula for the type generating series of a substitution $F\triangleleft G$ involves the *cycle index series* of the substituting species:

$$ \widetilde{F \triangleleft G}(x) = Z_F(\tilde G(x), \tilde G(x^2), \tilde G(x^3),\dots) $$

In lesson 1 we have seen how the category $[{\bf Fin}, {\bf Set}]$ inherits a (non-strict) monoidal structure, called the *substitution product*: the substitution of a pair of functors $M,N : {\bf Fin}\to{\bf Set}$ is the functor

$$ [n] \mapsto M \triangleleft N := (\text{Lan}_J M \circ \text{Lan}_J N) \circ J = \text{Lan}_J M \circ N$$

<div id="defi-5"></div>
**Definition** (The substitution monoidal structure). Given two combinatorial species we can define their substitution product as follows:

$$ F \circ G := \lambda m . \int^{n,k_1,\dots,k_n} F(n) \times Gk_1\times \dots \times Gk_n \times {\bf B}(m, k_1+\dots+k_n). $$

or more concisely

$$ F\circ G := \lambda m.\int^n Fn \times G^{\ast n}(m) $$

Observe that the structure exists for a similar reason than the case of $\bf Fin$: the left Kan extension of a functor $X : {\bf B} \to {\bf Set}$ along the (nonfull) inclusion $J : {\bf B} \to {\bf Set}$ yields an equivalence between $\bf Spc$ and a monoidal subcategory of $[{\bf Set},{\bf Set}]$ (it is not immediate how to characterise it because in this case the inclusion functor $J : {\bf B} \to {\bf Set}$ is not full). We will disclose what's going on in [lecture 5](./5-species-and-analytic-functors-wide-pullbacks.md), but in any case one can argue that there exists an adjunction

$$ {\bf Spc} \leftrightarrows ([{\bf Set},{\bf Set}],\circ) $$

that restricts to an equivalence of categories ${\bf Spc}\cong {\bf AnF}\subseteq [{\bf Set},{\bf Set}]$; the image category $\bf AnF$, the subcategory of *analytic functors* is closed under composition (=the monoidal product on $[{\bf Set},{\bf Set}]$) and thus, by transport of structure, we obtain a monoidal equivalence 

$$ ({\bf Spc},\circ) \leftrightarrows ({\bf AnF},\circ) $$

*Exercise.* (Disregarded in commutative algebra courses.) Given two formal power series $f,g \in K\llbracket t\rrbracket$, find an explicit formula for the coefficient $c_n$ of degree $n$ in the series $f\circ g(t)$. (Is it possible to "decategorify" the above expression for $F\circ G$, given that if $f,g$ are the generating series of $F,G$ respectively, then $c_n$ is the cardinality of $F\circ G$?)

Since it is a bit convoluted to argue on the existence of the substitution monoidal structure, we give a sketch of an argument based on having established the Day convolution (closed) monoidal structure. The full story is surveyed in [Coends, Chapter 6] and in turn, it comes from Kelly's paper "On the Operads of JP May".

<div id="label-8"></div>
**Definition.** Iterated Day convolution in the category of species takes the following form:

$$ F_1 * \cdots * F_n = \int^{k_1,\ldots,k_n} \mathcal{P}\!\left(\sum k_i, -\right) \cdot F_1 k_1 \otimes \cdots \otimes F_n k_n. $$

and in particular if $F_1=\dots = F_n = F$ one has 

$$ F * \cdots * F = \int^{k_1,\ldots,k_n} \mathcal{P}\!\left(\sum k_i, -\right) \cdot F k_1\otimes \cdots \otimes F k_n. $$

<div id="label-9"></div>
**Theorem.** The operation $-\circ-$ above defines a monoidal structure on $\bf Spc$, with unit given by the representable at $1$.

*Proof.* Start observing that the assignment $(n,F)\mapsto F^{*n}$ is a bifunctor ${\bf B}\times{\bf Spc} \to \bf Spc$. This fact will be used throughout. Then, the key observation in order to prove associativity is the presence of an isomorphism of functors 

$$ (F\circ G)^{*m} \cong F^{*m} \circ G, $$

which follows from the computation

$$
\begin{array}{rcl}
(F \circ G)^{*m}
&=&\displaystyle
\int^{\vec n}
\mathcal{P}\!\left(\sum n_i, -\right)
\cdot
(F \circ G){n_1} \otimes \cdots \otimes (F \circ G){n_m}
\\[0.5em]
&\cong&\displaystyle
\int^{\vec n, \vec k}
\mathcal{P}\!\left(\sum n_i, -\right)
\cdot
F{k_1} \otimes G^{*k_1}{n_1}
\otimes \cdots \otimes
F{k_m} \otimes G^{*k_m}{n_m}
\\
&\cong&\displaystyle
\int^{\vec n, \vec k}
F{k_1} \otimes \cdots \otimes F{k_m}
\otimes
\mathcal{P}\!\left(\sum n_i, -\right)
\cdot
G^{*k_1}{n_1} \otimes \cdots \otimes G^{*k_m}{n_m}
\\
&\cong&\displaystyle
\int^{\vec k}
F{k_1} \otimes \cdots \otimes F{k_m}
\otimes
\bigl( G^{*k_1} * \cdots * G^{*k_m} \bigr)
\\
&\cong&\displaystyle
\int^{\vec k}
F{k_1} \otimes \cdots \otimes F{k_m}
\otimes
G^{* \sum k_i}
\\
&\cong &\displaystyle
\int^{\vec k, r}
\mathcal{P}\!\left(\sum k_i, r\right)
\otimes
F{k_1} \otimes \cdots \otimes F{k_m}
\otimes
G^{*r}
\\
&\cong&\displaystyle
\int^{r}
F^{*m}r \otimes G^{*r}
=
F^{*m} \circ G .
\end{array}
$$

Incidental remark: a corollary of this is that $y(n)\circ F\cong y(1)^{\ast n}\circ F\cong (y(1)\circ F)^{\ast n}\cong F^{\ast n}$.

From this it is possible to define the associator as the chain of isomorphisms

$$
\begin{aligned}
F \circ (G \circ H)
&=  \displaystyle\lambda k.
\int^{m}
F_m \otimes (G \circ H)^{*m}k
\\
&\cong \displaystyle \lambda k.
\int^{m}
F_m \otimes (G^{*m} \circ H)k
\\
&\cong \displaystyle \lambda k.
\int^{m,l}
F_m \otimes G^{*m}l \otimes H^{*l}k
\\
&\cong \displaystyle \lambda k.
\int^{l}
(F \circ G)l \otimes H^{*l}k = (F \circ G) \circ H
\end{aligned}
$$

Each step of this chain is natural in all its conceivable arguments; it is a tedious job to verify that this satisfies the pentagon identity.

<div id="dayhom"></div>
**Definition-Theorem.** The substitution monoidal structure is left cocontinuous, and thus left-closed; this makes the existence of the internal (left) hom for the substituion product; to show what shape it has to have, just compute

$$
\begin{aligned}
{\bf Spc}(F\circ G,H) &= \int_r {\bf Set}\Big( \int^m Fm\times G^{*m}r,Hr \Big) \\ 
&\cong \int_r \int_m  {\bf Set}( Fm\times G^{*m}r,Hr ) \\ 
&\cong \int_r \int_m  {\bf Set}( Fm, {\bf Set}(G^{*m}r,Hr ))\\ 
&\cong \int_m  {\bf Set}\Big( Fm, \int_r{\bf Set}(G^{*m}r,Hr )\Big)\\ 
&\cong {\bf Spc}\big( F, \{G,H\}\big)\\ 
\end{aligned}
$$

if $\\{G,H\\}m := \int_r{\bf Set}(G^{*m}r,Hr )$.

### On the structure of $\bf Spc$ as a topos

The following subsection is of no particular interest for us, but the category of species happens to be a (Grothendieck) topos, and I haven't been able to find any source investigating the consequences of this fact (or even describing this structure, at least to some extent). Thus I find a nice exercise in style to fill the gap.

This said: on top of all of the structure mentioned above, the category of species, i.e. functors ${\bf B}^\text{op} \to {\bf Set}$ has very nice properties of a completely different kind; it is a *Grothendieck topos* (or shortly, just a *topos*).

In short, a Grothendieck topos is a category $\cal E$ where "the usual kind of Mathematics can be enacted" (at the price of doing so *constructively*).

Somewhat surprisingly, the class of categories embodying such a powerful language can be axiomatised pretty concisely: a topos is a category $\cal E$

1. admitting all finite limits;
2. that is *cartesian closed*, meaning that there is a natural bijection
 $$ {\cal E}(A\times B, C) \cong {\cal E}(A, C^B) $$
 for every three objects $A,B,C$
3. having a *subobject classifier*, meaning an object $\Omega$ with the property that for every $A\in\cal E$ the poset of all subobjects of $A$ is parametrised by the set of morphisms into a fixed object $\Omega$ that thus "classifies" monomorphisms.

Unwinding axiom 3, it means the following: there exists a unique monomorphism $\tau : 1 \to \Omega$ with the property that *every* monomorphism $m : U \to A$ into *every* object $A\in \cal E$ appears in a pullback square

{% tex classes: [antex, display] %}
\setlength{\fboxrule}{1sp}
\setlength{\fboxsep}{0sp}
\fbox{\xymatrix{
 U\ar[r]\ar[d]_m  & 1 \ar[d]^\tau  \\
 A \ar[r] & \Omega
}}
{% endtex %}

of $\tau$ along a unique $\chi_A : A \to \Omega$.

This request translates diagrammatically the request that every subset $X\hookrightarrow A$ has a "characteristic function" $\chi_X : A \to \Omega$ such that $\chi_X(a)=1$ if and only if $a\in X$.

The meat is in the third axiom: having a subobject classifier is a powerful property for a category (familiar categories like groups, vector spaces, and $\bf Cat$ (categories and functor) cannot have one; prove it as an exercise.)

The following facts do not add much depth to the following discussion, so we leave them as highly optional exercises; the only reason to engage with them is if you have never seen how both statements can be proved in fair generality.

*Exercise* (The cartesian closure of $\bf Spc$). Show that the category of combinatorial species is *cartesian closed*, as a consequence of the following general fact.

Let ${\cal C}^\lor = [\mathcal{C}, {\bf Set}]$ be the category of functors $F : {\cal C} \to {\bf Set}$. Show that there is a natural bijection

$$ {\cal C}^\lor(F\times G, H) \cong {\cal C}^\lor(F, H^G) \cong {\cal C}^\lor(G, H^F) $$

where $F\times G$ is the product $C\mapsto FC\times GC$, and $H^G : {\cal C}^\text{op} \to {\bf Set}$ is the "internal hom" between $G$ and $H$.

*Exercise* (The subobject classifier of $\bf Spc$). Show that the category of combinatorial species is *cartesian closed*, as a consequence of the following general fact.

Let ${\cal C}^\lor = [\mathcal{C}, {\bf Set}]$ be the category of functors $F : {\cal C} \to {\bf Set}$. Show that the following position defines a subobject classifier $\Omega$ for ${\cal C}^\lor$.

$$ \Omega : C\mapsto \text{Sub}_{\cal C}(yC) = \{R \hookrightarrow yC \} $$

(in words: $C$ goes to the set of isomorphism classes of monics with codomain $yC$, the representable functor on $C$).

1. Characterise $y(n)={\bf B}(n, -)$ in the case of species;
2. Specialise the above definition to $\mathcal C = \bf B$: who is $\Omega$ in this case (remember that the map $R \to y(n)$ must be a *natural transformation*, not just a collection of components: what constraint does this condition pose on $R$?)

For those who know, $\bf Spc$ happens to be the *classifying topos* for $\bf B$-torsors; although this is not a particularly deep finding when species are valued in $\bf Set$ (as opposed to a different base of enrichment, see [lesson 8](8-species-like-categories.html#label-1)), it acquires more depth when species are considered in -say- a category of bundles over a fixed space; in that case, torsors are principal bundles with group(oid) $\bf B$.

#### Reading list

- Bergeron, François, et al. _Combinatorial species and tree-like structures_. No. 67. Cambridge University Press, 1998.
- Aguiar, Marcelo, and Swapneel Arvind Mahajan. _Monoidal functors, species and Hopf algebras_. Vol. 29. Providence, RI: American Mathematical Society, 2010.