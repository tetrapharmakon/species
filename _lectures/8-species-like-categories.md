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

<div id="label-1"></div>
**Definition.** The category $(S,{\cal V})\text{-}\mathbf{Spc}$ of *$(S,{\cal V})$-species* is defined as the functor category $\mathbf{Cat}({\bf B}[S],{\cal V})$ where ${\bf B}[S]$ is the free symmoncat on the set $S$.

Evidently, the "category of species" studied so far is the category $(1,{\bf Set})\text{-}\mathsf{Spc}$ if $1$ is a singleton set.

<div id="label-2"></div>
**Remark.** One could have defined a category $({\cal A},{\cal V})\text{-}\mathsf{Spc}$ as the functor category $\mathbf{Cat}({\bf B}[{\cal A}],{\cal V})$ (the free symmoncat construction makes sense for every category, not just the discrete ones). This is however a different kind of gadget, which would deserve the name of *free (cocomplete) 2-rig on $\cal A$*; species, in this perspective, occupy a special role as they are free *on a set*, much like a polynomial ring is free on a set of generators (for its multiplication) regarded as variables.

This definition is very pliable: the formal properties of $(S,{\cal V})\text{-}\mathbf{Spc}$ are not much dependent on $\cal V$, which can be chosen to be the category $\bf Top$ of topological spaces, or vector spaces, or simplicial sets,... but also the category $(T,{\cal W})\text{-}\mathbf{Spc}$ for a different pair $(T,\cal W)$ (what happens in that case)?

Leaving the base of enrichment $\cal V$ equal to $\bf Set$ and raising the cardinality of $S$ one obtains the so-called *multicolored* species (the terminology dates back to homotopy theory, where the set $S$ is regarded as a set of "colours" for an "operad" -we will get there). Observe that since ${\bf B}[-]$ is a club in the sense of [Kelly](https://ncatlab.org/nlab/show/club), among many other properties that this doctrine has there is the fact that 

$$ {\bf B}[S] \cong {\bf B}[1]\wr S \cong \prod_{s\in S}{\bf B}[1] $$

can be written as a "wreath product" of ${\bf B}[1]$ with $S$, i.e. as the *power* ${\bf B}[1]^S = {\bf B}^S$.

Regarding species as formal power series, the category $\mathbf{Cat}({\bf B}[S],{\cal V}) = \mathbf{Cat}({\bf B}^S,{\cal V})$ should be regarded as the category of polynomials in $\\# S$ variables, and coefficients in $\cal V$.

<div id="label-3"></div>
**Exercise.** ($\star$) I have had for quite some time in the back of my head the idea that it is interesting to study species when $\cal V$ is compact closed, or star-autonomous; see for example [here](https://arxiv.org/abs/math/0612496), where some work is done in this direction; if this sounds like an interesting project for you, please let's do it together.

#### Substitution product of colored species

An explicit description of the $n$-fold convolution of presheaves $M_1,\ldots,M_n : \mathbb{P}/I \to \mathbf{Set}$ is given in [Mé96, 2.1]: the coend in Equation (5) splits as the sum

$$
\sum_{p \in n\text{-}\mathrm{Dec}(m)} M_{p_1}(m_1) \times \cdots \times M_{p_n}(m_n)
$$

where $n$-$\mathrm{Dec}(m)$ denotes the set of $n$-decompositions (= decompositions in $n$ pieces) $p = (p_1,\ldots,p_n)$ of $m$, by virtue of the way in which $\mathbb{P}/I$ splits as a coproduct of groups.

We can endow the category of colored species with a substitution product; 
to motivate the construction, we review the most general form that the substitution operation acquires; 
let $I,J$ be two sets, $f \in k[J]$ a power series in $|J|$ indeterminates, 
with coefficients in the ring $k$ and $g = (g_j \mid j \in J)$ a $J$-family 
of elements of $k[I]$; then one defines the substitution of $g$ into $f$ as
the following power series in $k[I]$: 

$$
f \circ g = \sum_{n \in \mathbb{N}^J} a_n \prod_{j \in J} g_j^{n_j}
$$

(The ring operations in $k[I]$ say how to expand the power $g_j^{n_j}$ into a sum of monomials.)

In perfect analogy, this operation translates to coloured species, where the substitution of a $J$-family of $I$-coloured species $M = (M_j \mid j \in J)$ inside a $J$-species is defined as follows: the $J$-family $M$ can be understood as a functor

$$
M : J \to [\mathbb{P}/I, \mathbf{Set}]
$$

which, by virtue of the universal property of $\mathbb{P}/J$, extends uniquely to a functor $\widehat{M} : \mathbb{P}/J \to [\mathbb{P}/I, \mathbf{Set}]$, strong monoidal with respect to Day convolution on the codomain.

The functor sends an object $w = j_1 \cdots j_n$ to the convolution of the tuple
$M_{j_1} = M(j_1), \ldots, M_{j_n} = M(j_n)$, i.e. we have an action on objects

$$
(j_1 \cdots j_n) \mapsto M_{j_1} * \cdots * M_{j_n}
$$

and on morphisms (colour-preserving bijections) it is defined accordingly. We
shortly denote $\widetilde{M}(w)$ as $\widetilde{M}_w$.

Now, given a $J$-coloured species $N$ and a $J$-family
$M = (M_j \mid j \in J)$ of $I$-species, we define the substitution
$N \{ M \}$ to be the $I$-species

$$
u \mapsto \int^{w \in \mathbb{P}/J} N[w] \times \widetilde{M}_w[u]
$$

as $w$ ranges over all objects of $\mathbb{P}/J$, i.e. over all tuples
$(j_1 \cdots j_r)$ of various lengths. Thus, the coend above splits into the sum
of coends

$$
\sum_{r = 0}^{\infty}
\int^{(j_1 \cdots j_r) \in \mathbb{P}/J}
N[(j_1 \cdots j_r)] \times \widetilde{M}_{(j_1 \cdots j_r)}[u].
$$

**Proposition.** Equation above defines a bifunctor

$$
-\circ- : \mathbb{P}/J \times [\mathbb{P}/I, \mathbf{Set}]^J \to [\mathbb{P}/I, \mathbf{Set}]
$$

which is associative and unital in the sense that

- given a single $K$-species $F$, $\boldsymbol G = (G_k \mid k \in K)$ a $K$-family of
  $J$-species, and $\boldsymbol H = (H_j \mid j \in J)$ a $J$-family of $I$-species, then
  $F \circ (\boldsymbol G \circ\boldsymbol H )$ (where $\boldsymbol G \circ\boldsymbol H$ is the $K$-family of $J$-species defined as $k\mapsto G_k \circ\boldsymbol H$) is a single $I$-species, as well as
  $(F \circ\boldsymbol G)\circ \boldsymbol H$, and the two are canonically isomorphic;

- there exist a $J$-family of $J$-species with the property that
  $N \circ \boldsymbol y(o) \cong N$, naturally in $N \in [\mathbb{P}/J, \mathbf{Set}]$, and
  a $J$-species $y(j^\prime)$ with the property that for every $J$-family of
  $I$-species $M = (M_j \mid j \in J)$ one has $y(j^\prime) \circ \boldsymbol M \cong M_{j^\prime}$.

*Proof.* Once the notation is settled, the proof is a painstaking coend computation: let $w = (k_1,\ldots,k_r)$ be a tuple of elements of $K$, $u_1,\ldots,u_r$ a tuple of elements of $J^\ast$ so an $r$-tuple of tuples $u_s = (u^1_s,\ldots,u^{\ell_s}_s)$, and $(x_1,\ldots,x_r)$ an $r$-decomposition of $n \in I^*$, i.e. an $r$-tuple of elements such that $x_1 \oplus \cdots \oplus x_r = n$ in $\mathbb{P}/I$. Then,


$$
\begin{aligned}
F \circ(\boldsymbol G \circ\boldsymbol H)  [n]
&\cong \int^{w} F_w \times \widetilde{(G \circ\boldsymbol H )}_w[n] \\
&\cong \int^{w} F_w \times \Bigl( \int^{u_1} G_{k_1}[u_1] \times \widetilde{H}_{u_1}(x_1) \Bigr) \times \cdots \\
&\qquad\qquad\cdots \times \Bigl( \int^{u_{\ell(w)}} G_{k_{\ell(w)}}[u_{\ell(w)}] \times \widetilde{H}_{u_{\ell(w)}}(x_{\ell(w)}) \Bigr) \\
&\cong \int^{w,u_1,\ldots,u_{\ell(w)}}
F_w \times G_{k_1}[u_1] \times \cdots \times G_{k_{\ell(w)}}[u_{\ell(w)}] \\
&\qquad\qquad\times \widetilde{H}_{u_1}(x_1) \times \cdots \times \widetilde{H}_{u_{\ell(w)}}(x_{\ell(w)})
\times \mathbb{P}/I\Bigl(\sum_{t=1}^{\ell(w)} x_t, n\Bigr)\\ 
&\cong \int^{w,u_1,\ldots,u_{\ell(w)}}
F_w \times \widetilde{G}_w(u_1,\ldots,u_{\ell(w)}) \times \widetilde{H}_{\oplus_s u_s}[n] \\
(\oplus_s u_s = u)
&\cong \int^{w,u}
F_w \times \widetilde{G}_w[u] \times \widetilde{H}_u[n] \\
&\cong \int^{u} \Bigl( \int^{w} F_w \times \widetilde{G}_w[u] \Bigr) \times \widetilde{H}_u[n] \\
&\cong \int^{u} (F \circ \boldsymbol G )[u] \times \widetilde{H}_u[n] \\
&\cong (F \circ \boldsymbol G ) \circ \boldsymbol H .
\end{aligned}
$$

This concludes the proof of associativity; from here, it is almost all downhill: the left and right unitor are the isomorphisms

$$
N \circ\boldsymbol y(o) 
= \int^{w} N[w] \times \mathbb{P}/I(o,-)_w[n]
\cong \int^{w} N[w] \times \mathbb{P}/I(w,n)
\cong N[n]
$$

($y(o)$ is the $J$-family of $I$-species constant at the representable
$\mathbb{P}/I(o,-)$), and

$$
y(j) \circ \boldsymbol M
= \int^{w} \mathbb{P}/I(j,w) \times \widetilde{M}_w[n]
\cong M_j[n]
$$

for every $J$-family $M$ of $I$-species, where $y(j)$ is the representable
$J$-species at a singleton $j = \\{ j \\} \in \mathbb{P}/J$. The Yoneda lemma
picks out the component at $j$ of the $J$-family $M : J \to \mathbb{P}/I$.


---

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
\underset{\mathcal{P}}{\overset{\iota}{\rightleftarrows}}
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

<div id="label-4"></div>
**Proposition.**
For any positive comonoid $Q$, we have the following:

- $\mathcal{P}^{(1)}(Q)\subseteq\mathcal{P}^{(2)}(Q)\subseteq \cdots \subseteq Q$;
- $\bigcup_{k \ge 1} \mathcal{P}^{(k)}(Q)= Q$;
- $\Delta^{(k-1)}\bigl(\mathcal{P}^{(k)}(Q)\bigr)\subseteq \mathcal{P}(Q)^{\cdot k}$.

All comonoid homomorphisms are compatible with the coradical filtration

<div id="label-5"></div>
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

<div id="label-6"></div>
**Proposition.** Let $k[-]\dashv U$ be the free-forgetful adjunction between sets and vector spaces; then every $\bf Set$-species $P$ has a *$k$-linearization* (resorting to the word "linear" in this context feels unavoidable, but we maintain the prefix $k$ to avoid confusion) given by post-composition

{% tex classes: [antex, display] %}
\setlength{\fboxrule}{1sp}
\setlength{\fboxsep}{0sp}
\fbox{\xymatrix{
  {\bf B} \ar[r]^-{P} & {\bf Set} \ar[r]^-{k[-]} & k\text{-}{\bf Vect}
}}
{% endtex %}

The category of $k$-vector species is now equipped with the Day, Hadamard and substitution monoidal products, and $P\mapsto k[P]$ turns out to be a strong monoidal functor with respect to all three products. Moreover, a $\bf Set$-species is connected or positive if and only if its $k$-linearization is such.

---

### Linear species

The category $\mathbf{Lin}$ is defined as the category of totally
ordered finite sets $\langle n \rangle := \{1 < \cdots < n\}$ and
order-preserving bijections $\sigma : \langle n \rangle \to \langle n \rangle$.
Let's give a more intrinsic presentation for it.

<div id="label-7"></div>
**Definition.**
Let $S_n$ be the symmetric group of an $n$-set $[n]$. Let
$r : BS_n \to \mathbf{Set}$ be the (functor associated to the) left regular
representation of $S_n$, i.e. the action $S_n \to S_n$ given by left
multiplication; denote $[S_n/S_n]$ the associated [action groupoid](https://ncatlab.org/nlab/show/action+groupoid), i.e. the strict pullback


{% tex classes: [antex, display] %}
\setlength{\fboxrule}{1sp}
\setlength{\fboxsep}{0sp}
\fbox{\xymatrix{
{[S_n/S_n]} \ar[r] \ar[d] & {\mathbf{Set}_*} \ar[d] \\
BS_n \ar[r]_-r & \mathbf{Set} 
}}
{% endtex %}

<div id="label-8"></div>
**Remark.**
Notice that since the action is strictly transitive, $[S_n/S_n]$ consists of
the maximally connected groupoid on the underlying set of $S_n$. As such,
the unique functor $[S_n/S_n] \to \mathbf{1}$ is an equivalence of categories.

<div id="label-9"></div>
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
---

### Weighted species

Fix a commutative, unitary ring $R$. The category of *weighted sets* is defined as the following comma category construction:

{% tex classes: [antex, display] %}
\setlength{\fboxrule}{1sp}
\setlength{\fboxsep}{0sp}
\fbox{\xymatrix{
      \mathbf{wSet}_{/R} \ar[d]\ar[r] & 1 \ar[d]^{UR}\\ 
      \mathbf{Set} \ar@{=}[r] & \ultwocell<\omit>{}\mathbf{Set}
}}
{% endtex %}

  where $UR$ is the underlying set of the ring $R$. Explicitly, $\mathbf{wSet}$ has 

  - objects the pairs $(X,w : X \to R)$, where $X$ is a set and $w$ a weight function, associating to each element $x\in X$ a *weight* $w(x)\in R$;
  - arrows $f : (X,w) \to (Y,u')$ the functions $f : X \to Y$ that are weight preserving, i.e. $w^\prime\circ f = w$: they are the $f$ that make this triangle commutative.

  {% tex classes: [antex, display] %}
  \setlength{\fboxrule}{1sp}
  \setlength{\fboxsep}{0sp}
  \fbox{\xymatrix{
        X \ar[rr]^-f \ar[dr]_w && Y \ar[dl]^-{w'}\\ 
        &R&
  }}
  {% endtex %}

One can define a canonical functor $\zeta : \mathbf{Set} \to\mathbf{wSet}_{/R}$ sending a set $A$ to its *zero-weighting* $(X,w_0 : X \to R)$ with $w_0$ constant at $0_R$; observe that $\zeta$ has a left adjoint: it is defined sending a set $A$ to the trivial weighted set $w : A \to R$ which has the constant zero function as weight. 

A map of weighted sets $\zeta(A) \to Y$ now corresponds to a function $h : A\to Y$ with the property that $w_Y(h(a))=w_0(a)=0$, so that $h$ factors through the *kernel* of $w_Y$ (this is a functor as every weighted set morphism induces a function $\ker (X,v)\to\ker(Y,w)$); hence,

$$ \textbf{wSet}_{/R}(\zeta A, (Y,w))\cong \textbf{Set}(A,\ker(Y,w)). $$

As an immediate consequence, $\zeta$ preserve all colimits that exist in $\mathbf{wSet}_{/R}$. 

<div id="label-10"></div>
**Remark.** In fact, $\mathbf{wSet}_{/R}$ is locally finitely presentable, by Proposition 1.57 in [LPAC].

Does $\zeta$ have a right adjoint?

Observe also that a slightly less rigid category can be obtained replacing the comma construction above with the analog *lax* comma (or slice):

{% tex classes: [antex, display] %}
\setlength{\fboxrule}{1sp}
\setlength{\fboxsep}{0sp}
\fbox{\xymatrix{
      \mathbf{wSet}_{/\!\!/R} \ar[d]\ar[r] & 1 \ar[d]^{UR}\\ 
      \mathbf{Set} \ar@{=}[r] & \ultwocell<\omit>{lax\kern1em}\mathbf{Set}
}}
{% endtex %}

provided $R$ has some preorder structure defined over it: there, arrows will become inequalities filling the triangle 

  {% tex classes: [antex, display] %}
  \setlength{\fboxrule}{1sp}
  \setlength{\fboxsep}{0sp}
  \fbox{\xymatrix{
        X \ar[rr]^-f \ar[dr]_w &\ar@{}[d]|(.4)\ge& Y \ar[dl]^-{w'}\\ 
        &R&
  }}
  {% endtex %}

This can't of course be done in a canonical way uniformly for all rings, so one has to restrict to a subclass of $\bf Ring$.

Let $R$ be a commutative unital ring.

<div id="label-11"></div>
**Definition.** The ring $R$ is called *formally real* if $-1$ cannot be written as a finite sum of squares in $R$, that is,
$$
-1 \notin \left\{ \sum_{i=1}^n r_i^2 \mid r_i \in R,\ n \in \mathbb{N} \right\}.
$$

<div id="label-12"></div>
**Definition.** The *cone of sums of squares* of $R$ is the subset
$$
\Sigma R^2 := \left\{ \sum_{i=1}^n r_i^2 \middle| r_i \in R,\ n \in \mathbb{N} \right\} \subseteq R.
$$

The set $\Sigma R^2$ satisfies the following properties:
- $\Sigma R^2 + \Sigma R^2 \subseteq \Sigma R^2$,
- $\Sigma R^2 \cdot \Sigma R^2 \subseteq \Sigma R^2$,
- $1 \in \Sigma R^2$,
- $\Sigma R^2 \cap (-\Sigma R^2) = \{0\}$ if and only if $R$ is formally real.

<div id="label-13"></div>
**Definition.** Define a binary relation $\preceq$ on $R$ by
$$
a \preceq b \quad \Longleftrightarrow \quad b - a \in \Sigma R^2.
$$

<div id="label-14"></div>
**Proposition.** The relation $\preceq$ is a preorder on $R$ (i.e. reflexive and transitive) that is compatible with addition and multiplication. In general, $\preceq$ need not be antisymmetric.

Thus, for a formally real ring $R$, the cone of sums of squares induces a canonical preorder reflecting the ring’s algebraic notion of positivity, even though it does not necessarily define a partial order.


---

### Moebius species

<div id="label-15"></div>
**Definition.** Let $\bf Set$ be the category of sets, equipped with the tautological functor $J \colon \mathbf{Set} \to \mathbf{Cat}$ regarding each set as a discrete category; let $\mathbf{Pos}^{\top\\!\bot}$ be the category of posets with top and bottom, where morphisms are top- and bottom-preserving monotone maps; consider the comma category

$$
(J / \mathbf{Pos}^{\top\!\bot})
$$

defined by the diagram

{% tex classes: [antex, display] %}
\setlength{\fboxrule}{1sp}
\setlength{\fboxsep}{0sp}
\fbox{\xymatrix{
(J / \mathbf{Pos}^{\top\!\bot}) \ar[r] \ar[d] &
{*} \ar[d]^{\mathbf{Pos}^{\top\!\bot}} \\
\mathbf{Set} \ar[r]_{J} &
\mathbf{Cat}
}}
{% endtex %}

Unwinding the definition, $(J / \mathbf{Pos}^{\top\\!\bot})$ is the category having

- objects the pairs $(X, P \colon X \to \mathbf{Pos}^{\top\\!\bot})$, where $X$ is a set and $P$ is a functor; note that this means $P = \{ P_x \mid x \in X \}$ is an $X$-parametric family of posets with top and bottom;

- morphisms $(X, P) \to (Y, Q)$ are the functions $h \colon X \to Y$ such that $Q \circ h = P$. Each such $h$ splits into a family of monotone maps $P_x \to Q_{h(x)}$.


<div id="label-16"></div>
**Remark.** The category $(J / \mathbf{Pos}^{\top\\!\bot})$ is a complete and cocomplete (in fact, locally presentable), monoidal closed category.

<div id="label-17"></div>
**Proof.** Colimits are computed in $(J / \mathbf{Pos}^{\top\\!\bot})$ as in **Set** (created by the vertical left functor in Equation (6.15)); the category is accessible, as it arises as a limit in accessible categories and accessible functors; thus it is locally presentable, hence also complete (limits are, however, not straightforward to describe—even characterizing a terminal object is a bit convoluted).

As for its monoidal closed structure, call a map $P \times Q \to R$ in $\mathbf{Pos}^{\top\\!\bot}$ *balanced* if all $f(p,-) \colon Q \to R$ and $f(-,q) \colon P \to R$ preserve top and bottom elements, and call $\mathbf{BPos}(P \times Q, R)$ the set of all such balanced maps.

Then, the existence of a symmetric tensor product $\otimes$ such that

$$
\mathbf{BPos}(P \times Q, R)
\cong
\mathbf{Pos}^{\top\!\bot}(P \otimes Q, R)
$$

*representing balanced maps* follows from a standard argument on lifting monoidal structures to categories of algebras. Thus $\mathbf{Pos}^{\top\\!\bot}$ is the category of algebras for the simultaneous completion under initial and terminal object, regarding $\mathbf{Pos} \subset \mathbf{Cat}$.

This gives a monoidal (closed) structure to $(J / \mathbf{Pos}^{\top\\!\bot})$ where tensor and exponentials are defined as

$$
X \times Y
\xrightarrow{ P \times Q }
\mathbf{Pos}^{\top\!\bot} \times \mathbf{Pos}^{\top\!\bot}
\xrightarrow{ \widehat{\otimes} }
\mathbf{Pos}^{\top\!\bot},
$$

$$
X \times Y
\xrightarrow{ P \times Q }
(\mathbf{Pos}^{\top\!\bot})^{\mathrm{op}} \times \mathbf{Pos}^{\top\!\bot}
\xrightarrow{ [-,-] }
\mathbf{Pos}^{\top\!\bot}.
\qquad \square
$$

Thus, $\bigl( (J / \mathbf{Pos}^{\top\\!\bot}), \widehat{\otimes} \bigr)$
works as a Bénabou cosmos, and we can define

<div id="label-18"></div>
**Definition.** The category $\bf MSpc$ of *Moebius species* is the category of functors

$$
P \to (J / \mathbf{Pos}^{\top\!\bot}),
$$

i.e. the category of $( \mathbf{1}, (J / \mathbf{Pos}^{\top\\!\bot}) )$-species.

Since $P$ is a groupoid, each functor  $P \to (J / \mathbf{Pos}^{\top\!\bot})$ must factor through the core of   $(J / \mathbf{Pos}^{\top\!\bot})$; calling **Int** such core we obtain Definition 2.1 of 

Méndez, Miguel, and Julia Yang. _Möbius species._ Advances in Mathematics 85.1 (1991): 83-128

where $h$ is assumed to be a bijection (and the indexing sets are finite, hence   $h \colon [n] \to [n]$ is just a permutation), inducing order-isomorphisms

$$
P_i \cong Q_{\sigma i}
\qquad \text{for each } i = 1, \ldots, n.
$$

---

### Nominal sets

<div id="label-19"></div>
**Definition.** Consider the chain of inclusions

$$
S_1 \subset S_2 \subset \cdots \subset S_n \subset \cdots
$$

each identifying a group $S_n$ as the subgroup of $S_{n+1}$ spanned by the elements fixing $n+1$; the colimit $S_\infty$ of this chain in the category of groups is called the *infinite symmetric group* and consists of all bijections of   $\mathbb{N} = \{0,1,2,\ldots\}$ that fix all but finitely many elements (call these *finitely supported permutations*).

The group-theoretic properties of $S_\infty$ are the subject of intense study in connection with representation theory, the theory of Von Neumann algebras, ergodic theory and descriptive set theory (due to the nature of Polish group of $S_\infty$). For us, the connection with computer science, set theory and topos theory are an additional source of intuition: we define


<div id="label-20"></div>
**Definition.** The category $\bf Nom$ of *nominal sets* is the category of (set-theoretic) left
actions of $S_\infty$, or in other words the category of functors

$$
F \colon S_\infty \to \mathbf{Set}.
$$

#### Reading list

...