---
layout: post
title: "Computation: some explicit combinatorial identities"
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

We have seen that to a combinatorial species we can associate at least two important invariants "quantities", i.e. two formal power series from which we can deduce properties of the species. If $\|X_n\|$ denotes the cardinality of a set, and $F : {\bf P} \to {\bf Set}$ is a combinatorial species,

- the *generating series* of $F$ is defined as the formal power series in $t$

$$ \sum_{k\ge 1} \frac{|F[n]|}{n!} t^n $$

- its *type* generating series, instead, is defined as

$$ \sum_{k\ge 1} |\pi_0 F[n]| t^n $$

where the notation $\pi_0 F[n]$ denotes the quotient set $F[n]/S_n$ under the action of the symmetric group $S_n$ over $F[n]$. (This is no more and no less than the space of orbits of the action $S_n \curvearrowright F[n]$.)

For example: if $\cal C$ is the species of oriented cycles on finite sets, and $\wp$ is the species of subsets, we can consider the product species $C\times \wp$ that sends a finite set into a cyclic order of its elements, *on top of which* there is the choice of a subset $U\subseteq[n]$: the elements $(12345,\\{2,3,5\\})$ and $(12345,\\{1,2,5\\})$ of $C\times \wp[5]$ are respectively given by

{% tex classes: [antex, display] %}
\begin{tikzpicture}
\draw (0,0) circle (1cm);
\foreach[count=\j] \i/\k in {4/white,3/gray!40,2/gray!40,1/white,0/gray!40}{
  \node[draw, fill=\k, circle, inner sep=1pt] at (\i*360/5+90+72:1cm) {\footnotesize $x_{\j}$};
  }
\begin{scope}[xshift=4cm]
\draw (0,0) circle (1cm);
\foreach[count=\j] \i/\k in {4/gray!40,3/gray!40,2/white,1/white,0/gray!40}{
  \node[draw, fill=\k, circle, inner sep=1pt] at (\i*360/5+90:1cm) {\footnotesize $x_{\j}$};
  }
\end{scope}
\end{tikzpicture}
{% endtex %}

We have that

$$ {\cal C}[n] =(n-1)! \quad(\text{for } n\ge 1)\qquad \qquad \wp[n] = 2^n $$

so that their product ${\cal C} \times \wp$ sends $n\ge 1$ to $(n-1)! \cdot 2^n$, and thus the type generating series of the product is

$$ \sum_{n=1}^\infty \big((n-1)! \cdot 2^n\big) \frac{t^n}{n!} = \sum_{n=1}^\infty \frac{2^n t^n}{n} = \log\left( \frac1{1-2t}\right)$$

The generating series of a combinatorial species is a powerful, but relatively coarse, invariant of the species: for example, the species $S$ of permutations and the species $L$ of linear orders have the same generating species because $\|{S}[n]\| = n! = \| {L}[n] \|$, so that

$$ g_{S}(t) = \sum_{n=0}^\infty t^n = \frac1{1-t} = g_{L}(t). $$

The type generating series of $S$ and $L$ are, however, different, because the sets of orbits $\|{S}[n]\| / S_n$ and $\| {L}[n] \| / S_n$ have different cardinalities (the action of $S_n$ on linear orderings is transitive):

$$ \tilde{g}_{S}(t) = \exp \sum_{k\ge 1} \frac1k \frac{t^k}{1-t^k} \qquad \qquad  \tilde{g}_{L}(t) = \frac1{1-t} $$

In order to gain a deeper understanding of the combinatorial species $F$ through an algebraic gadget, we have to introduce the *cycle index series* of $F$:

$$ \dots $$

Computations of a few simple $Z$'s; for $E$ an $\cal C$. In general, computations of $Z_F$'s that do not use sophisticated infinite series' summing techniques are rare or even impossible. More than often, an explicit formula for $Z_F$ relies on mysterious combinatorial identities (through which a clever manipulation of $Z_F$'s can shed light on *even more mysterious* combinatorial identities).

Cycle index series are, however, an unavoidable tool in the calculus of combinatorial species; in fact, they play a fundamental role in expressing the formula for the type generating series of substitution of a species into another:

$$ \tilde{g}_{F \triangleleft G}(t) = Z_F(\tilde G(t), \tilde G(t^2), \tilde G(t^3),\dots) $$

This formula can be used in order to obtain the expression of $Z_{S}$ in terms of $Z_E$, and $Z_{\cal C}$, and the formula for the cycle index series yields the identity

$$ \prod_{k\ge 1} \frac1{1-t^k} = \exp \sum_{k\ge 1} \frac1k \frac{t^k}{1-t^k} $$

or the remarkable explicit expression for the type generating series of ${\cal C}\times \wp$ above:

$$ \tilde{g}_{\cal C \times \wp}(t) = \sum_{n\ge 1} \left( \frac 1n \sum_{d | n} \varphi(d) 2^{n/d} \right) t^n $$

where $\varphi(-)$ is the Euler function, and the inner sum is extended over all divisors of $n$.

As fascinating as it certainly looks, this exposition's accent is not on the bare combinatorics, but instead on the category theory! So let us not delve into the details of how the former identities have been derived.

Instead, let us review one motivating example of a combinatorial identity *derived* from a couple of black boxes but whose combinatorial interpretation is elucidated by the language of combinatorial species.

**Theorem.** Let $a = \sum_{k\ge 1} \frac{a_k}{k}$, $a_0 = \sum_{k\ge 1} \frac{a_{2k}}{2k}$ and $a_1 = \sum_{k\ge 0} \frac{a_{2k+1}}{2k+1}$ be three formal power series in the ring $\mathbb{Q}\llbracket a_1, a_2, a_3,\dots\rrbracket$. Then,

$$ e^a = \exp\left(a_1 + \frac{a_2}2 + \frac{a_3}3 + \dots\right) = e^{a_0}(\cosh a_1 + \sinh a_1).$$

*Proof.* The terminal species $E$ splits as the sum of two species $E_e, E_o$, of *even sets* and *odd sets* respectively: formally,

$$ E_e[n] = \begin{cases} \{\bullet\} & n = 2k \\ \varnothing & n = 2k+1 \end{cases} \qquad \qquad
E_o[n] = \begin{cases} \{\bullet\} & n = 2k+1 \\ \varnothing & n = 2k \end{cases} $$

so it is clear that $E = E_e + E_o$. Now, the relation $Z_E = Z_{E_e} + Z_{E_o}$ holds true, and from this we can derive the desired identity by observing that

$$ Z_{E_e} = \frac12 \left( Z_E(x_1, x_2,x_3,\dots) + Z_E(-x_1,x_2,-x_3,\dots)\right) \qquad (\star^1) $$

and

$$ Z_{E_o} = \frac12 \left( Z_E(x_1, x_2,x_3,\dots) - Z_E(-x_1,x_2,-x_3,\dots)\right). \qquad (\star^2) $$

A brute-force computation now shows that the LHS of $Z_E = Z_{E_e} + Z_{E_o}$ is precisely $e^a = \exp\left(a_1 + \frac{a_2}2 + \frac{a_3}3 + \dots\right)$ and the RHS simplifies to $e^{a_0}(\cosh a_1 + \sinh a_1)$.

We will see in the [following lecture](./5-species-and-analytic-functors-wide-pullbacks.html) that every species $F$ can be written as the sum of its "even" part and its "odd" part, thanks to the fact that every species $F$ admits a canonical decomposition as a coproduct

$$ F = F_0 + F_1 + F_2 + \dots $$

So, $F_e := F_0 + F_2 + F_4 +\dots$ and $F_o := F_1 + F_3 + F_5 + \dots$. A relation similar to $(\star^1, \star^2)$ holds for the cycle index series of $F$.

For example, we can split the species of permutations in its even and odd part as follows:

$$ Z_{S_e} = \frac12\left( \prod_{k\ge 1} \frac1{1-x_k} + \prod_{k\ge 1} \frac1{1-(-1)^k x_k} \right) $$

and

$$ Z_{S_o} = \frac12\left( \prod_{k\ge 1} \frac1{1-x_k} - \prod_{k\ge 1} \frac1{1-(-1)^k x_k} \right) $$

I do not know of any meaningful simplification for these formal power series in $x_1,x_2,\dots$; from this, however we can obtain the (type) generating series of $S_e, S_o$ as follows:

$$ g_{S_e}(t) = \frac12\left( \frac1{1-t} + \frac1{1 + t} \right)\qquad\qquad
g_{S_o}(t) = \frac12\left( \frac1{1-t} - \frac1{1 + t} \right)
$$

and

$$ \tilde g_{S_e}(t) = \frac12\left( \prod_{k\ge 1} \frac1{1-t^k} + \prod_{k\ge 1} \frac1{1-(-1)^k t^k} \right)\qquad
\tilde g_{S_o}(t) = \frac12\left( \prod_{k\ge 1} \frac1{1-t^k} - \prod_{k\ge 1} \frac1{1-(-1)^k t^k} \right).
$$
