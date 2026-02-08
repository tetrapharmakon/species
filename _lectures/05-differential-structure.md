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

Every species $F : {\bf B} \to {\bf Set}$ admits a "formal derivative" $F^\prime$ so that the generating series of $F^\prime$ is the formal derivative of $g_F(t)$:

$$ g_{F^\prime}(t) = \frac{d}{dt}g_F(t) $$

Since the formal derivative of (exponential) power series is defined by shifting coefficients, because $\frac{d}{dt}\frac{t^n}{n!} = t^{n-1}{(n-1)!}$, the derivative $F^\prime$ is defined acting on a finite set $n$ with $n$ elements as $F^\prime[n] = F[n+1]$ (without restricting to a skeleton of $\bf B$, this is written $F[A] = F[A+1]$ where $A+1$ is the coproduct of $A$ with a singleton).

**Remark.** The derivative of species is a functor $\partial : {\bf Spc} \to {\bf Spc}$ that satisfies the following properties:

- linearity: $\partial$ preserves finite coproducts

  $$ \partial(F+G)\cong \partial F + \partial G$$
- Leibniz rule: $\partial$, applied to a Day convolution $F\ast G$, is naturally isomorphic to 

  $$ \partial F \ast G + F\ast\partial G $$
- chain rule: $\partial$, applied to the substitution $F\circ G$, is naturally isomorphic to 

  $$ (\partial F\circ G) \ast \partial G $$

In fact, linearity can be strengthened into *cocontinuity*:

**Proposition.** The derivative of species has both a left adjoint $\boldsymbol L$ and a right adjoint $\boldsymbol R$; as a consequence, $\partial$ preserves all limits and colimits in $\bf Spc$.

**Lemma.** There is a natural isomorphism $\partial\cong [y(1),-]$ where $[-,-]$ is Day internal hom.

*Proof of Proposition.* Using the Lemma, clearly $\boldsymbol L \cong y(1) * -$; at the same time, $\partial\cong [y(1),-]$ is cocontinuous, because $y(1)$ is a tiny object; the existence of $\boldsymbol R$ follows, and its description can be extracted from the universal property; explicitly, 

$$ \textstyle L(F)(U) = \sum_{x\in U} F(U\setminus \{x\}) \qquad R(F)(U) = \prod_{x\in U} F(U\setminus \{x\}) $$

**Remark.** Note also that the Leibniz rule can be rephrased as follows:
> The $\partial$ functor is equipped with a tensorial strength $\partial X \ast Y \to \partial(X \ast Y)$, such that the diagram
> 
{% tex classes: [antex, display] %}
\setlength{\fboxrule}{1sp}
\setlength{\fboxsep}{0sp}
\fbox{\xymatrix{
\partial X \ast Y \ar[r]^-{\tau_{XY}}& \partial(X \ast Y) & \ar[l]_-{\tau_{YX}}\partial Y \ast X &\ar[l]_-{\text{swap}} X \ast \partial Y
}}
{% endtex %}

> is a coproduct diagram.

**Remark.** The derivative $F^\prime$ of a species $F$ is defined on a finite set $U$ by the collection of $F$-structures placed on the augmented set $U +\\{\bullet\\}$, where $\\{\bullet\\}$ is a singleton disjoint from $U$. This means that an $F^\prime$-structure on $U$ is exactly equivalent to an $F$-structure on a set of cardinality $n+1$. To determine the nature of the derivative species for a given $F$, one analyzes the structural configuration remaining on $U$ once the distinguished element $*$ is removed or its specific placement within the $F$-structure is isolated. This deserves more explanation. 

The distinguished point $\bullet$ acts as a "marker" that breaks the symmetry or the uniformity of the original structure. An $F$-structure on the set $U \cup \{\bullet\}$, with the element $\bullet$ distinct from all elements in $U$, allows one to describe the rest of the structure in $U$ relative to that distinguished position. 

The process that we will use below to determine $F'$ for any species $F$ is more or less as follows:
1.  Define the Augmented Structure: Start with an $F$-structure on the set $U$ plus the extra point $\bullet$.
2.  Identify the Role of $\bullet $: Observe how the structure is partitioned or ordered because of the presence of $\bullet$.
3.  Translate to $U$: Describe the remaining elements of $U$ using standard species operations (such as the partitional product or substitution) that account for the "hole" or "marker" left behind by $\bullet$.

**Example** (The derivative of the species of elements). The derivative of the species of elements is the species of elements itself. This can be seen reflected

- in the fact that $\frac d{dt}(\exp t) = \exp t$, or
- with a more combinatoria argument, noting that $\partial E(n) = E(n+1)= E(n)$ for all $n\ge 0$.

**Example** (The derivative of the species of singletons). The derivative of the representable $y(1)$ is the species defined as

$$ 
\partial y(1)(n) = 
\begin{cases}
\{\ast\}& n=0\\ 
\varnothing & n\ne 0
\end{cases}
$$

So $\partial y(1)=y(0)$. So *the monoidal unit for Day convolution is the initial object*; in differential algebra lingo, $y(0)$ is a $\partial$-constant. Note how the proof that the unit of a differential ring is a constant using the Leibniz rule adapts, but only up to a certain point: indeed,

$$ \partial\big(y(0)\big) = \partial\big( y(0) * y(0) \big) \cong \partial y(0) \ast y(0) + y(0) \ast\partial y(0) \cong \partial\big(y(0)\big) + \partial\big(y(0)\big) $$

so $J=\partial\big(y(0)\big)$ is an object "so small that $J\cong 2\cdot J$", but in principle it doesn't have to be initial!

*Exercise.* Find why, in the particular case of species, it must however be the case that $J\cong\varnothing$. Hint: prove that if $J\cong 2\cdot J$, then there exists an epimorphism $J\twoheadrightarrow \varnothing$. Conclude.

**Example** (The derivative of the species of a representable species). More in general, abstracting from the previous example, $\partial y(n) = y(n-1)$, with the implicit convention that $\partial y(0)=\varnothing$.

**Example** (The derivative of the species of linear orders). This is where the combinatorial arguments start to the the only ways to argue. The derivative $L^\prime$ of the species of linear orders is isomorphic to the partitional product $L^2$, also expressed as $L \ast L$. Combinatorially, an $L^\prime$-structure on a finite set $U$ is a linear ordering of the set $U \cup \\{\bullet\\}$; removing the distinguished element $\bullet$ splits the original linear order into a prefix and a suffix, each of which is a linear order on its respective subset. This combinatorial result is a lifting of the analytic identity $\frac{d}{dx}(1-x)^{-1} = (1-x)^{-2}$.

**Example** (The derivative of the species of subsets). The species $\wp$ of subsets is characterized by the combinatorial identity $\wp \cong E \ast E$, where $E$ is the species of sets and we know that $E^\prime \cong E$, thus the Leibniz rule gives

$$\wp^\prime = (E \ast E)^\prime = E^\prime \ast E + E \ast E^\prime = E \ast E + E \ast E = 2E^2 = 2\wp.$$

Thus, the derivative of the species of subsets is isomorphic to two copies of itself. This mirrors the analytic property of the associated generating series $e^{2x}$, whose derivative is $2e^{2x}$.

**Example** (The derivative of the species of cycles). A species of $\partial C(n)$ structure is a species of $C(n+1)$ structure, i.e. a cyclic order on a set with $n+1$ elements, of which one has been singled out. But then, that element is the head, or tail, of a linear order and $\partial C(n)\cong L(n)$. More formally, the bijections $C(n+1) \to L(n)$ defined as 

$$ \{\circ_1 < \circ_2 < \dots < \circ_n < \bullet_{n+1} < \circ_1\} \mapsto \{\circ_1 < \circ_2 < \dots < \circ_n\}$$

or better, depicted as follows,

{% tex classes: [antex, display] %}
\begin{tikzpicture}
\draw (0,0) circle (1cm);
\draw[->] (-110:1.15cm) arc (-110:-70:1.15cm);
\foreach \i/\j in {1/1,2/2,3/3,4/4,5/\star}{
  \node[draw, fill=white, circle, inner sep=1pt] at (\i*360/5+90+72:1cm) {\footnotesize ${\j}$};
  }
\begin{scope}[xshift=3cm]
\draw (-120:1cm) arc (-120:90:1cm);
% \draw[red] (90:1cm) arc (-90:90:1cm);
\draw[dotted] (0,0) circle (1cm);
\draw[->] (-110:1.15cm) arc (-110:-70:1.15cm);
\foreach \i/\j in {1/1,2/2,3/3,4/4,5/\star}{
  \node[draw, fill=white, circle, inner sep=1pt] at (\i*360/5+90+72:1cm) {\footnotesize ${\j}$};
  }
\end{scope}
\begin{scope}[xshift=5cm]
\foreach \j in {1,2,3,4}{
\node[draw, fill=white, circle, inner sep=1pt] at (\j,0) {\footnotesize ${\j}$};
}
\foreach \j in {1,2,3}{
\node at (\j+0.5,0) {\footnotesize $\le$};
}
\end{scope}
\end{tikzpicture}
{% endtex %}

are equivariant for all $n$. Note that $\\#C(n)=(n-1)!$, so $\\#\partial C(n) = n!$, in bijection with $L(n)$.

**Example** (The derivative of the species of permutations). The species $S$ of permutations is characterized by the combinatorial equation $S \cong E \circ C$, which states that every permutation is a set ($E$) of disjoint cycles ($C$). To find the derivative $S^\prime$, one applies the combinatorial chain rule for substitution: $(F \circ G)^\prime \cong (F^\prime \circ G) \ast G^\prime$. Substituting the known derivatives $E^\prime \cong E$ and $C^\prime \cong L$ into the formula yields:

$$S^\prime = (E^\prime \circ C) \ast C^\prime = (E \circ C) \ast L = S \ast L.$$

Consequently, the derivative of the species of permutations is isomorphic to the partitional product of the species of permutations and the species of linear orders. This reflects the analytic derivative of the generating series $(1-x)^{-1}$, which is $(1-x)^{-2}$, noting that the series for $S \ast L$ is $(\frac{1}{1-x}) \cdot (\frac{1}{1-x}) = (\frac{1}{1-x})^2$.

**Example** (The derivative of the species of partitions). For the species $Par$ of set partitions, an $Par^\prime$-structure consists of a partition of $U + \\{\bullet\\}$; the block containing the distinguished element $\bullet$ is isolated and removed, leaving a standard partition on the remaining subset of $U$. This leads to the combinatorial identity $Par^\prime \cong E \ast Par$, where $E$ is the species of sets representing the elements grouped in the block that originally contained $\bullet$. Similarly, for the species $a$ of trees, adding a distinguished element $\bullet$ to the set $U$ and subsequently removing it transforms the unrooted tree into an assembly of rooted trees, expressed as $a^\prime \cong E(A)$. This occurs because the edges previously connected to $\bullet$ in the original tree on $U + \\{\bullet\\}$ become the roots of the tree components that remain on $U$.

It is usually sufficient to apply in sequence linearity, the Leibniz rule, and the chain rule, to establish explicit descriptions for the iterated derivatives of "commonly used" species; of course, one can in principle also argue with the universal property alone, and prove what the Day internal hom amounts to in each case. But without making a guess, it's almost always impossible to find who is the correct candidate for the terminal wedge that describes the Day hom... So, the combinatorial approach of drawing pretty pictures is really the winning one!

Some examples of iterated derivatives:

- Since $L^\prime\cong L^2$, $L^{\prime\prime} \cong 2 \cdot L \ast L^\prime\cong 2 \cdot L L^2 = 2 L^3$ and more generally $L^{(n)} \cong n!\cdot L^{n+1}$;
- Since $\wp^\prime\cong 2\cdot\wp$, $\wp^{\prime\prime} \cong 2\cdot \wp^\prime=4\cdot\wp$ and more generally $\wp^{(n)} \cong 2^n\cdot \wp$;
- Since $S^\prime\cong S\ast L$, $S^{\prime\prime}\cong S^\prime\ast L + S\ast L^\prime=2\cdot(S\ast L^2)$ and more generally, $S^{(n)}\cong$...? (Try!)

## Taylor expansion

**Remark.** The Taylor-Maclaurin expansion of a species $F: {\bf B} \to \mathbf{Set}$ is defined by the isomorphism 

$$F(A+X) \cong \sum_{n=0}^\infty \frac{\partial^n F(A)}{n!} X^n.$$ 

In this expression, $X$ and $A$ are sets, and the notation $F(-)$ denotes the analytic functor $Lan_J F: \mathbf{Set} \to \mathbf{Set}$ induced by the species $F$. The term $\partial^n F(A)$ represents the $n$-th derivative of the species $F$ evaluated as an analytic functor at the set $A$. The division by $n!$ in the sum denotes the quotient by the action of the symmetric group $S_n$ over the $n$-th derivative.

Using coend notation to formally manage the quotient by the symmetric group, the expansion is represented as:
$$\int^{n \in {\bf B}} \partial^n F(A) \times X^n \cong \int^n F(A + n) \times X^n \cong F(A+X)$$.

The $n$-fold derivation $\partial^n F$ is interpreted as a derivative with respect to an $n$-set $U$, so that $\partial^n F[A] = F[A + U]$ (so one cal write $\partial^UF$ as well). When viewed as an analytic functor in the variable $A$, the $n$-th derivative is defined by the coend 

$$\partial^U F(A) = \int^m F[m+U] \times A^m.$$ 

The Taylor expansion is then calculated as the double coend $\int^n \int^m F[m + n] \times A^m \times X^n$. 

By Yoneda, $F[A+U] \cong \int^V F[V] \times {\bf B}(V, A+U)$, whence 

$$ \begin{aligned}
\int^{nm} F[m+n] \times A^m \times X^n
&\cong \int^{nmj} F[j] \times {\bf B}(j,m+n) \times A^m \times X^n\\
&\cong 
\int^{j} F[j] \times
\left(
  \int^{m,n} {\bf B}(j,m+n) \times A^m \times X^n
\right).\\ 
&\cong \int^{j} F[j] \times (A+X)^j
\end{aligned}$$

The final step of the proof utilizes the fact that $\mathbf{Set}$ is extensive, i.e. there is an equivalence of categories $\mathbf{Set}/A \times \mathbf{Set}/X \cong \mathbf{Set}/(A+X)$, which results in the identity $\int^{m,n} {\bf B}(j, m+n) \times A^m \times X^n \cong (A+X)^j$. Consequently, the double coend evaluates to $\int^j F[j] \times (A+X)^j$, which is the definition of the analytic functor evaluated at the set $A+X$.

## Kahler differentials

**Definition.** Consider the following result, a classical fact from differential algebra: 

> The space of derivations on a ring $R$ is parametrized by the space of sections of the "bundle" $\text{ev}_0 : R[X]/(X^2) \to R$ sending a polynomial $a+bX + (X^2)$ to $a$. 

More informally, a derivation is a point $R \to R[\varepsilon]$ such that the diagram 

{% tex classes: [antex, display] %}
\setlength{\fboxrule}{1sp}
\setlength{\fboxsep}{0sp}
\fbox{\xymatrix{
A
}}
{% endtex %}

commutes. The $R$-module $R[\varepsilon] := R[X]/(X^2)$ is called the module of *Kähler differentials* of $R$.

There is an analogue of this construction for (differential) 2-rigs. Let $\mathcal{R}$ be a cocomplete $2$-rig.

Consider the unique $2$-cell $!:\varnothing \Rightarrow (- \otimes t^2)$, where $-\otimes t^2$ "multiplies by $t^2$"; this is just syntactic sugar for the endofunctor of ${\cal R}[t]$ that "multiplies (Day convolution) by $t^2$". Then, the coinverter

{% tex classes: [antex, display] %}
\setlength{\fboxrule}{1sp}
\setlength{\fboxsep}{0sp}
\fbox{\xymatrix{
\mathcal{R}[t]
  \rtwocell^{\varnothing}_{-\otimes t^2}{}
&
\mathcal{R}[t]
  \ar[r]^{q}
&
\mathcal{R}[\varepsilon]
}}
{% endtex %}

coincides with the procedure of killing off polynomials divisible by
$t^2$, hence $\mathcal{R}[\varepsilon]$ is the "quotient $2$-rig" by the ideal
$(t^2)$. The ring operation is defined on the equivalence classes as

$$
(a + tb)(c + td) = ac + (ad + bc)t + t^2 bd .
$$

Now we would like to build the "space of sections" of a canonical
"evaluation at $0$" map

{% tex classes: [antex, display] %}
\setlength{\fboxrule}{1sp}
\setlength{\fboxsep}{0sp}
\fbox{\xymatrix{
\mathcal{R}[t]
  \rtwocell^{\varnothing}_{-\otimes t^2}{}
&
\mathcal{R}[t]
  \ar[r]^{q}
  \ar[dr]_{ev_0}
&
\mathcal{R}[\varepsilon]
  \ar@{-->}[d]^{\text{section}}
\\
&&
\mathcal{R}
}}
{% endtex %}

together with $\mathcal{R}[t] \xrightarrow{ev_0} \mathcal{R}$, i.e. an analogue of the map $ev_0$. The latter, as a functor $ev_0 : \mathcal{R} \otimes \mathbf{Spc} \to \mathcal{R} : \textstyle(A,F) \mapsto \sum_{F_0} A$ is induced by the universal property of coproducts.

**Theorem.** There is an isomorphism

$$
\mathrm{Der}[\mathcal{R}]
\cong\{\text{sections}/\mathcal{R} \text{ of } ev_0 : \mathcal{R}[\varepsilon] \to \mathcal{R}\}.
$$

## $\partial$-algebras and coalgebras

### Definition of Up and Down Operators
In the big book, an "up operator" $u$ on a species $P$ is a $\partial$-coalgebra structure on $P$, denoted $P \to \partial P$; dually, a down operator $d$ is a $\partial$-algebra structure, denoted $\partial P \to P$. The species with an up or down operator form categories ${\bf Spc}^\uparrow$ and ${\bf Spc}^\downarrow$ There are inserter diagrams

{% tex classes: [antex, display] %}
\setlength{\fboxrule}{1sp}
\setlength{\fboxsep}{0sp}
\fbox{\xymatrix{
{\bf Spc}^\uparrow\drtwocell<\omit>{}\ar[r]\ar[d] & {\bf Spc}\ar@{=}[d] & {\bf Spc}^\downarrow\drtwocell<\omit>{}\ar[r]\ar[d] & {\bf Spc} \ar[d]^-\partial\\ 
{\bf Spc} \ar[r]_-\partial & {\bf Spc} & {\bf Spc}\ar@{=}[r] & {\bf Spc} 
}}
{% endtex %}


**Proposition.** The Day convolution of two $\partial$-coalgebras $(P,u)(Q,v)$ is a $\partial$-coalgebra $(P \cdot Q, w)$, where  $w : u \cdot id + id \cdot v$. This construction establishes ${\bf Spc}^\uparrow$ as a symmetric monoidal category $({\bf Spc}^\uparrow, \cdot, \beta)$. 

**Proposition.** The duality functor $(-)^\ast$ establishes a relationship between up and down operators. If $(p, u)$ is a species with up operators, its dual $(p^\ast, u^\ast)$ is a species with down operators, where $u^\ast: \partial(p^\ast) \to p^\ast$ corresponds to the dual of the up operator $u$. On the subcategory of finite-dimensional species, this defines an inverse strong monoidal contravariant functor between $({\bf Spc}^\uparrow, \cdot_q)$ and $(Sp_d, \cdot_q)$.

### Algebraic Derivations and Coderivations
A species with up or down operators can interact with monoid and comonoid structures in species. 
*   *Up derivation*: An up operator $u$ is a derivation of a monoid $(p, \mu, \iota)$ if it satisfies the compatibility diagram where $u \circ \mu = \mu^\prime \circ (u \cdot id + id \cdot u)$.
*   *Up coderivation*: An up operator $u$ is a coderivation of a comonoid $(p, \Delta, \epsilon)$ if $\Delta^\prime \circ u = (u \cdot id + id \cdot u) \circ \Delta$.
*   *$q$-Versions*: Skewed derivations and coderivations are defined by replacing the standard operator sum with the $q$-deformed version $u \cdot id + \tau_q \cdot u$. 

The exponential species $E$ serves as a primary example where the down operator $d$ is a derivation of the monoid $E$ and the up operator $u$ is a coderivation of the comonoid $E$. The linear order species $L$ is a comonoid in ${\bf Spc}^\uparrow$ when equipped with an up operator that adds a new minimum element to the order.

## Differential equations

**Definition.** Differential equations on $\bf Spc$

For example:

- the species $\wp$ of subsets satisfies the differential equation $Y^\prime = 2\cdot Y$;
- the species $S$ of permutations satisfies the differential equation $Y^\prime = L\ast Y$;
- the species $Par$ of set partitions satisfies the differential equation $Y^\prime = E\ast Y$.

**Definition.** The category of differential operators on $\bf Spc$