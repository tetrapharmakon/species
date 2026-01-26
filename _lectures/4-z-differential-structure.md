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

$$ g_{F'}(t) = \frac{d}{dt}g_F(t) $$

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

*Proof.*

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

**Example** (The derivative of the species of linear orders). This is where the combinatorial arguments start to the the only ways to argue.

**Example** (The derivative of the species of subsets). ...

**Example** (The derivative of the species of cycles). A species of $\partial C(n)$ structure is a species of $C(n+1)$ structure, i.e. a cyclic order on a set with $n+1$ elements, of which one has been singled out. But then, that element is the head, or tail, of a linear order and $\partial C(n)\cong L(n)$. More formally, the maps $C(n+1) \to L(n)$ defined as 

$$ \{\circ_1 < \circ_2 < \dots < \circ_n < \bullet_{n+1} < \circ_1\} \mapsto \{\circ_1 < \circ_2 < \dots < \circ_n\}$$

are equivariant for all $n$.

**Example** (The derivative of the species of permutations). ... 

**Remark.** Taylor expansion of a species 

**Definition.** Kähler differentials 

**Definition.** Differential equations on $\bf Spc$

**Definition.** The category of differential operators on $\bf Spc$