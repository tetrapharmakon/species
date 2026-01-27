---
layout: post
title: "Operads: more advanced results"
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
        \newcommand{\sha}{\mathbin{\text{\foreignlanguage{russian}{ш}}}}
        \tikzset{
          pics/vertex/.style args={#1}{
            code={
              \draw (0,0) -- (-90:#1);
              \draw (0,0) -- (60:#1);
              \draw (0,0) -- (120:#1);
              \filldraw[fill=white] (0,0) circle (#1/2);}}}
        \tikzset{
          pics/box/.style args={#1,#2}{
            code={
              \draw (#1/6,10pt) -- ++(0,-#1);
              \draw (#1/2,10pt) -- ++(0,-#1);
              \draw (1.83*#1,10pt) -- ++(0,-#1);
              \draw (#1,#1/6) -- ++(0,-#1);
              \filldraw[fill=white] (0,0) rectangle (2*#1,#1) node[pos=.5, font=\tiny] {$#2$};}}}

---

Some of the structure of the category $\mathbf{Opd}$ of operads can be deduced from the fact that we are just looking at a particular instance of the category of monoids in a monoidal category.


## Operads as monoids, and free constructions


**Remark.** There is an adjunction

{% tex classes: [antex, display] %}
\setlength{\fboxrule}{1sp}
\setlength{\fboxsep}{0sp}
\fbox{\xymatrix{
 \Opd \ar@<-.3em>[r]_-U & \ar@<-.3em>[l]_-F ({\bf Spc},\circ)
}}
{% endtex %}

whence we can derive (among other things) that

- the category of operads is complete, and limits are created by the forgetful functor $U$; in particular, the Hadamard product of two species which happen to be operads inherits an operad structure (it is a straightforward consequence of a general fact, but it's cool to see the derivation). Let $T_* : {\cal J} \to {\bf Opd}$ be a diagram of operads; then the limit $\text{lim}_{\cal J}\, T_J$ computed in species inherits a structure of operad as follows:

$$
 \begin{aligned}
  (\text{lim}_{\cal J}\, T_J)\circ (\text{lim}_{\cal J}\, T_J) & = \int^m (\text{lim}_{\cal J}\, T_J)m \times (\text{lim}_{\cal J}\, T_J)^{*m}                                                                                                    \\
                                                               & = \int^m \text{lim}_{\cal J}\, (T_Jm) \times (\text{lim}_{\cal J}\, T_J)^{*m}                                                                                                    \\
                                                               & \cong \int^m \text{lim}_{\cal J}\, (T_Jm) \times \\ 
                                                               &\kern4em\times\int^{J_1,\dots, J_m} \text{lim}_{J_1}\dots \text{lim}_{J_m} T_{J_1}n_1 \times\dots \times T_{J_m}n_m\times {\bf B}(\sum n_i,-) \\
                                                               & \to \text{lim}_{\cal J}\,\text{lim}_{J_1}\dots \text{lim}_{J_m} \int^m (T_Jm) \times \\
                                                               &\kern4em\times\int^{n_1,\dots, n_m}  T_{J_1}n_1 \times\dots \times T_{J_m}n_m\times {\bf B}(\sum n_i,-)   \\
  (\dag)                                                       & \to \text{lim}_{\cal J} \int^m (T_Jm) \times \int^{n_1,\dots, n_m}  T_J n_1 \times\dots \times T_J n_m\times {\bf B}(\sum n_i,-)                                                 \\
                                                               & = \text{lim}_{\cal J} \int^m (T_Jm) \times T_J^{*m}                                                                                                                              \\
  (\ddag)                                                      & \to \text{lim}_{\cal J} T_J
 \end{aligned}
$$

where $(\dag)$ precomposes with the diagonal functor $\Delta : {\cal J} \to {\cal J}^m$, and $(\ddag)$ uses the multiplication of each $T_J$; the unit is much easier to obtain, since $\eta_J : y1 \Rightarrow T_J$ is a cone, inducing a unique $\bar\eta : y1 \Rightarrow \text{lim}_{\cal J} T_J$ into the limit.

- colimits are complicated, but still they are reducible to certain reflexive coequalizers of free algebras, via the "Linton trick".

One can define the *free operad* on a combinatorial species, i.e. a left adjoint to the forgetful functor $U$ above; the situation, however, is in stark contrast with the case of *Cauchy* monoids, because

- The Day convolution product is separately cocontinuous in both variables (compare this with the fact that the substitution product commutes with colimits in its left, but not in its right, component: $-\circ G$ is cocontinuous (and thus a left adjoint, given that $\bf Spc$ is a locally finitely presentable category; we proved this in [lecture 3](./3-monoidal-structures-on-P.html#dayhom)), while $F\circ-$ is not—and thus a right adjoint to it can't exist).
- In the case of Day convolution, the free-forgetful adjunction is easy to characterize conceptually: the free Day-monoid on a species is $\sum_{n\ge 0} F^{*n}$, which reduces to the species $L\circ F$.

In order to prove that $L\circ F\cong \sum_{n\ge 0} F^{\ast n}$, first observe that $L = \sum_{n\ge 0} y(n)$, where $y(n)$ is the representable at $n$; so, since $-\circ F$ is cocontinuous, it is enough to prove that $y(n)\circ F\cong F^{*m}$, which is immediate: $L\circ F\cong \big(\sum_{n\ge 0} y(n)\big)\circ F\cong \sum_{n\ge 0} y(n) \circ F$, and

$$ y(n) \circ F = \int^m {\bf B}(n,m)\times F^{*m} \cong F^{*n} $$

by Yoneda (equivalently, use the observation in the proof of existence of the substitution monoidal structure, $y(n)\circ F\cong y(1)^{\ast n}\circ F\cong (y(1)\circ F)^{\ast n}\cong F^{\ast n}$).

---

A not-so-helpful observation is that the free operad on $F$ has to be obtained as the initial algebra for the functor ${\bf Spc} \to {\bf Spc} : P\mapsto y1 + F\circ P$. Adamek's theorem then ensures that such an initial algebra is the colimit of the chain

$$ y1 \to y1 + F \circ y1 = y1 + F \to y1 + F \circ (y1 + F) \to \dots $$

The problem is, we cannot develop such an expression by simplifying, since the substitution product is only left cocontinuous.

- In case $F$ is the species concentrated on an object $X$ at degree $n$, the free operad is associated to the free monad over the functor $X\times-$ (i.e. the free monad over said analytic functor); it's the monad given by actions of the free monoid $X^\ast$ on $X$ as alphabet. The operad is obtained restricting its action to $\bf B$ along the inclusion $J$.
- In case $F=c_X$ is the species constant on an object $X$, the associated analytic functor sends a set $Y$ to the product $X\times \mathbb N[Y]$ of $X$ and the free commutative monoid (set of multisets) on $Y$. The free monad over this, restricted to $\bf B$ along $J$, yields the free operad over $c_X$.

<div id="alg_operad"></div>

## Algebras for an operad

Monoids want to act on things, and to every category of monoids there is an associated category of modules; moreover, if $T$ is an operad, $T\circ-$ is obviously a monad on $\bf Spc$; thus, a (left) module for an operad then consists of an Eilenberg-Moore algebra for the monad $T\circ-$. It is a species $X$ together with a map $\xi : T\circ A \to A$, satisfying the $(T\circ-)$-algebra equations. In components, let $A(m)$ be the components of the species $A$; then the action is a map 

$$ \xi_r : \int^m Tm\times A^{*m}r \to Ar $$

which corresponds to 

$$ \xi_r : \int^{m,\vec n} Tm\times An_1\times\dots\times An_m \times {\bf B}(\sum n_i,r) \to Ar $$

now little more can be said in general. However, if $A(m) \equiv A$ is constant on a set $A$ (and with a bit of care, such constants can be defined on *some* bases of enrichment for $\cal V$-species), observe that $T\circ A$ is also constant (at the object $\int^m Tm\times A^m$) and thus the notion of algebra reduces to a single object $A$, with maps $\xi^{(m)} : Tm\times A^m \to A$ for all $m\in\bf B$, subject to certain equations (the cowedge condition, and natural compatibility with the monoid structure of $T$).

**Remark.** Compare this tension between a more natural, but elusive notion (a $T$-module understood as a species) and a more restrictive but also tame notion (a $T$-algebra understood as a single object), with a similar situation appreciated in monad theory: turning an operad $T$ into a monad $\flat T$ as in [ref](./9-species-and-operads.html#monad-from-opd), a $T$-module is an *analytic endofunctor* equipped with a natural transformation $\xi : TA\Rightarrow A$, while a $T$-algebra is a single *object* equipped with a single arrow $\xi : TA\to A$.

**Remark.** Note that once the monad $\flat T$ associated to an operad is known, and $A$ is any set, the object $\flat TA$ is the (carrier of the) free $T$-algebra for the operad $T$.

Note that since $-\circ A$ has a right adjoint for every species $A$ (even non constant), the algebra map $\xi$ is tantamount to a homomorphism of operads $\hat{\xi} : T \to \\{A,A\\}$, into the substitution-right-hom of [ref](./3-monoidal-structures-on-P.html#dayhom). Note also that if $A$ is again constant at $A$, the species $\\{A,A\\}$ sends $m$ to ${\bf Set}(A^m,A)$.

An algebra (in the restricted, constant sense above) for the operad...

- ...of endomorphisms for the species $P$ consists of a set $X$ equipped with maps $\xi^{(m)} : \\{P,P\\}(m)\times A^m \to A$, i.e. a map of type
  $$ \xi^{(m)}_n : \int_r {\bf Set}(P^{\ast m}r,Pr)\times A^m \to A $$
  if $P$ is itself constant at $P_0$, this expression simplifies into 
  $$ \xi^{(m)}_n : {\bf Set}(P^m_0,P_0)\times A^m \to A $$
  evidently then, $P_0$ is an algebra for the operad $\\{P_0,P_0\\}$, and the algebra map is given by the adjoint of the identity of $[P_0,P_0]$.

- ...$Com$ (or $Com_+$) (having carrier $E$ (or $E_+$), see [lecture 9](./9-species-and-operads.html#exoperad-E)) consists of a family of maps $E(m)\times A^m \cong A^m\to A$, i.e. an $m$-ary operation $\xi^{(m)} : A^m \to A$ for every $m\ge 0$, each of which is *completely symmetric*, meaning $\xi^{(m)}(a_1,\dots, a_m) = \xi^{(m)}(a_{\tau 1},\dots, a_{\tau m})$  for every $\tau \in S_m$. In fact, one can prove that the operations of arity $m\ge 2$ are reducible to $\xi^{(2)} : A\times A \to A$ (which together with the associativity request, equips $A$ with a commutative semigroup structure). Reasoning via the associated analytic functor, an algebra for the associated monad is a commutative monoid (or semigroup).
- ...$As$ (or $As_+$) (having carrier $L$ (or $L_+$), see [lecture 9](./9-species-and-operads.html#exoperad-L)) consists of a family of maps $\xi^{(m)} : S_m\times A^m \to A$; an element $(\sigma;(x_1,\dots,x_m))$ can be thought of as a linear order on its second component: $x_{\sigma 1} < \dots < x_{\sigma m}$, in such a way that $\xi^{(m)}(\sigma;\vec x)$ prescribes the product of the $x_i$'s in the order specified by $\sigma$; again, the operations of arity $m\ge 2$ are reducible to $\xi^{(2)} : A\times A \to A$. Reasoning via the associated analytic functor, an algebra for the associated monad is a monoid (resp., a semigroup).
- ...$Perm$ (having carrier the species of elements $J$) consists of a family of maps $\xi^{(m)} : m \times A^m \to A$; as such, the $m$-tuple of elements...

**Remark** (Operads and virtual species). An operad in the category of virtual species is a virtual species $\Phi$ that satisfies the requirements of a monoid with respect to the substitution product. This structural definition requires a composition morphism $\gamma: \Phi \circ \Phi \to \Phi$ and a unit morphism $\eta: X \to \Phi$ that fulfill the associativity and unit axioms within the ring $Virt$. 

The introduction of virtual species provides results for operadic structures that are not possible in the semi-ring of ordinary species. Specifically, every virtual species $G$ where $G(0) = 0$ and $G^\prime(0) = 1$ possesses a unique substitutional inverse $G^{\langle -1 \rangle}$. This inverse satisfies the identities $G \circ G^{\langle -1 \rangle} = X$ and $G^{\langle -1 \rangle} \circ G = X$. This allows for the explicit resolution of combinatorial functional equations of the form $F = A \circ \Psi$, where the solution is determined as $\Psi = A^{\langle -1 \rangle} \circ F$. For instance, the species of rooted trees $A$ has a substitutional inverse $A^{\langle -1 \rangle} = X \cdot E^{-1}$, which is used to define the virtual species $\Lambda = X + E_2 - X^2$ in the context of the dissymmetry theorem for trees.