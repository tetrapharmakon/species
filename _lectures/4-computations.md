---
layout: post
title: Some explicit combinatorial identities
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

We have seen that to a combinatorial species we can associate

- its generating series, defined as the formal power series 

$$ foo $$ 

- its *type* generating series

$$ bar $$ 

For example: if $\cal C$ is the species of oriented cycles on finite sets, and $\wp$ is the species of subsets, we have that

$$ {\cal C}[n] =(n-1)! \quad(\text{for } n\ge 1)\qquad \qquad \wp[n] = 2^n $$ 

so that their product ${\cal C} \times \wp$ sends $n\ge 1$ to $(n-1)! \cdot 2^n$, and thus the type generating series of the product is 

$$ \sum_{n=1}^\infty \big((n-1)! \cdot 2^n\big) \frac{t^n}{n!} = \sum_{n=1}^\infty \frac{2^n t^n}{n} = \log\left( \frac1{1-2t}\right)$$


The generating series of a combinatorial species is a powerful, but rather coarse, invariant of the species: for example, the species $\cal S$ of permutations and the species $\cal L$ of linear orders have the same generating species, because $\|{\cal S}[n]\| = n! = \| {\cal L}[n] \|$, so that 

$$ g_{\cal S}(t) = ∑_{n=0}^\infty t^n = \frac1{1-t} = g_{\cal L}(t). $$

The type generating series of $\cal S$ and $\cal L$ are, however, different, because the sets of orbits $\|{\cal S}[n]\| / S_n$ and $\| {\cal L}[n] \| / S_n$ have different cardinalities: 

$$ \tilde{g}_{\cal S}(t) = \dots \qquad \qquad  \tilde{g}_{\cal L}(t) = \dots $$

In order to gain a deeper understanding of the combinatorial species $F$ through an algebraic gadget, we have to introduce the *cycle index series* of $F$:

$$ \dots $$

Computations of a few simple $Z$'s; for $E$ an $\cal C$. In general, computations of $Z_F$'s that do not use sophisticated techniques of infinite series' summing are near to impossible. More than often, an explicit formula for $Z_F$ relies on mysterious combinatorial identities (through which a clever manipulation of $Z_F$'s can shed light on *even more mysterious* combinatorial identities).

Cycle index series are however an unavoidable tool in the calculus of combinatorial species; in fact, they play a fundamental role in expressing the formula for the type generating series of a substitution of species: 

$$ \widetilde{F \triangleleft G}(x) = Z_F(\tilde G(x), \tilde G(x^2), \tilde G(x^3),\dots) $$

This formula can be used in order to obtain the expression of $Z_{\cal S}$ in terms of $Z_E$ and $Z_{\cal C}$, and the formula for the cycle index series yields the identity 

$$ \prod_{k\ge 1} \frac1{1-t^k} = \exp \sum_{k\ge 1} \frac1k \frac{t^k}{1-t^k} $$

or the remarkable explicit expression for the type generating series of ${\cal C}\times \wp$ above:

$$ \widetilde{\cal C \times \wp}(t) = \sum_{n\ge 1} \left( \frac 1n \sum_{d | n} \varphi(d) 2^{n/d} \right) t^n $$

where $\varphi(-)$ is the Euler function, and the inner sum is extended over all divisors of $n$.

As fascinating as it certainly looks, the accent of this exposition is however not on the bare combinatorics, but on the category theory! So let's not delve into the details of how the former identities have been derived.

Let's instead review one motivating example of a combinatorial identity *derived* from a couple black boxes, but whose combinatorial interpretation is elucidated by the language of combinatorial species.

**Theorem.** Let $a = \sum_{k\ge 1} \frac{a_k}{k}$, $a_0 = \sum_{k\ge 1} \frac{a_{2k}}{2k}$ nd $a_1 = \sum_{k\ge 0} \frac{a_{2k+1}}{2k+1}$ be three formal power series in the ring $\mathbb{Q}\llbracket a_1, a_2, a_3,\dots\rrbracket$. Then, 

$$ e^a = \exp\left(a_1 + \frac{a_2}2 + \frac{a_3}3 + \dots\right) = e^{a_0}(\cosh a_1 + \sinh a_1).$$

*Proof.* ...