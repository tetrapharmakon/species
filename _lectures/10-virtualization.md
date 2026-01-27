---
layout: post
title: "Virtualization: species with additive inverses"
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

It would be very useful, for many practical purposes, to have a category "like $\bf Spc$, but where there are additive inverses". In a serendipitous turn of events, Joyal showed that this is possible. 

The framework was established by André Joyal (and more recently extended by Yeong-Nan Yeh, a student of Lawvere at Buffalo) to expand the reach of combinatorial differential and functional calculus.

The idea is similar to how one obtains the integers from the *semi*ring $\mathbb N$ with a "Grothendieck group" construction; a "virtual species" would now be a pair $(F,G)$, interpreted as a formal difference $F-G$ of species, with two of them, say $\Phi=(F,G)$ and $\Phi^\prime=(F^\prime,G^\prime)$ equivalent if and only if $F+G^\prime=F^\prime+G$.

In order for this definition to work as expected, however, it must be the case that the coproduct of species makes it into a traced monoidal category. This seems a pretty strong requirement, but it turns out that it is true!

**Theorem** (Joyal). The category of *finite* species (a finite species being an endofunctor of $\bf B$) is traced monoidal with respect to the sum operation. This ensures the presence of a *natural* family of "trace" morphisms

$$ {\bf B}(X+Z,Y+Z) \to {\bf B}(X,Y) $$

(natural in $X,Y$, and a cowedge in $Z$).

*Proof.* Finiteness is a fundamental assumption, the result being false for species taking infinite values; note also that 

$$ {\bf Cat}({\bf B},{\bf B}) \cong {\bf Cat}({\bf B},{\bf Fin}) $$

thus the sum of finite species *is* coproduct.

Starting with a bijection $\phi: X + Z \to Y + Z$, and we want to describe a bijection $\psi: X \to Y$. Starting with an element $x \in X$, we can be in two situations:

1. if $\phi(x) \in Y$, then stop. That will be $\psi(x)$. 

2. if $\phi(x) \in Z$, then feed that back into $\phi$, and keep looping as many times as it takes to finally land in $Y$. 

The maps determined in this way is injective between sets of the same cardinality, so it's a bijection.

So the idea is that if $S_k$ acts on $(F + H)[k] = F[k] + H[k]$, say by $g \mapsto \phi_g$, then apply this algorithm to $\phi_g$.

This allows for the 

**Definition.** A *virtual species* is an object of the category obtained applying the "categorified Grothendieck group" construction to the traced category $(\bf Spc,+)$ of finite species.

**Remark.** The category of virtual species is a particular instance of a *generalised 2-ring*; by this, we mean a category $\cal K$ equipped with 

- a monoidal structure $\oplus$ (the additive part of the 2-ring);
- a monoidal structure $\otimes$ (the multiplicative part of the 2-ring);
- such that Laplaza axioms for a "rig category" hold, and 
- such that $({\cal K},\oplus)$ is compact closed

**Remark.** Note that no 2-ring can have $\oplus=+$, because if $A+B=0$ sum to the initial object, then $A,B=0$. The 2-ring of virtual species is peculiar among 2-rings, in that the sum of species *comes* from the coproduct operation of regular species, but it's not a coproduct itself.

**Remark.** The set $Virt$ of isomorphism classes of virtual species constitutes a commutative ring under the following operations:
- **Addition:** $(F - G) + (H - K) = (F + H) - (G + K)$.
- **Multiplication:** $(F - G) \cdot (H - K) = (F \cdot H + G \cdot K) - (F \cdot K + G \cdot H)$.
- **Neutral Elements:** The empty species $0$ (specifically $0 - 0$) serves as the additive identity, and the unit species $1$ (specifically $1 - 0$) serves as the multiplicative identity.

Recall from [lecture 6](./5-species-and-analytic-functors-wide-pullbacks.html#canonical_deco) that every virtual species $\Phi$ possesses a unique representation in reduced form expressed as $\Phi = \Phi^+ - \Phi^-$. In this representation, the species $\Phi^+$ and $\Phi^-$ are unrelated, meaning they share no common non-empty molecular subspecies. 

- *Positive Part ($\Phi^+$):* The species representing the positive component.
- *Negative Part ($\Phi^-$):* The species representing the negative component.
- *Strictly Virtual:* A virtual species is classified as strictly virtual if its negative part $\Phi^-$ is not the empty species.
- *Positive Species:* If $\Phi^- = 0$, then $\Phi$ is equivalent to an ordinary species.

The formal power series associated with a virtual species $\Phi = F - G$ are determined by the subtraction of the series of its representative components.
- *Exponential Generating Series:* $\Phi(x) = F(x) - G(x)$.
- *Type Generating Series:* $\tilde{\Phi}(x) = \tilde{F}(x) - \tilde{G}(x)$.
- *Cycle Index Series:* $Z_\Phi = Z_F - Z_G$.

Note that all take value in rings with *integer* coefficients.

**Remark.** Operations on ordinary species are extended to the ring of virtual species through linearity and distributivity. Note that *new* operations, that do not make sense for ordinary species, can be defined and are nontrivial.

- *Derivation and Pointing:* The derivative $\Phi^\prime$ is defined as $F^\prime - G^\prime$, and the pointing operation $\Phi^\bullet$ is $F^\bullet - G^\bullet$.
- *Substitution:* The partitional composition $\Phi \circ \Psi$ is defined using a two-sort species construction. For a species $F$, the virtual species $F(X - Y)$ is defined as $F(X + Y) \times (E(X) \cdot E^{-1}(Y))$, where $E^{-1}$ is the multiplicative inverse of the species of sets.
- *Multiplicative Inverse:* For a species $F$ where $F(0) = 1$, a multiplicative inverse $1/F$ exists in $Virt$. For the species of sets $E$, the inverse is $E^{-1} = \sum_{k \ge 0} (-1)^k (E_+)^k$, where $E_+$ is the species of non-empty sets.
- *Substitutional Inverse:* For a species $G$ where $G(0) = 0$ and $G^\prime(0) = 1$, there exists a unique substitutional inverse $G^{\langle -1 \rangle}$ such that $G \circ G^{\langle -1 \rangle} = G^{\langle -1 \rangle} \circ G = X$.

**Theorem** (Yeh 1986). Let $\mathfrak{A}$ be the set of (isomorphism classes) of atoms in $\bf Spc$. The ring $Virt$ of non-weighted virtual species is isomorphic to the ring of formal power series $\mathbb{Z}\llbracket \mathfrak{A} \rrbracket$ in an infinite number of variables, where each variable corresponds to an atomic species (such as $X, E_2, E_3, C_3, \dots$). This identifies that every virtual species has a unique molecular decomposition $\Phi = \sum_{M \in \mathfrak{M}} \phi_M M$, where the coefficients $\phi_M$ are integers. This decomposition serves as a strict generalization of the cycle index series.

Yeh also identified a fundamental relationship between the category of species and permutation groups. There exists a bijection $\Phi$ between the set of isomorphism classes of transitive $S_n$-sets (which are in one-to-one correspondence with conjugacy classes of subgroups of the symmetric group $S_n$) and the set of molecular species of degree $n$. This bijection extends to a ring isomorphism between the Burnside ring $B(S_n)$ of the symmetric group and the ring $\mathcal{V}\mathcal{S}_n$ of virtual species of degree $n$. Under this mapping, the cycle index series of a molecular species corresponds exactly to the Polya cycle polynomial of the associated permutation group.

**Remark** (Combinatorial Logarithm and Connected Components). Virtual species allow for a generalized definition of "connected structures" even for species that do not naturally possess them in the semi-ring $\bf Spc$. If $F$ is a species such that $F(0) = 1$, there exists a unique virtual species $\Gamma = F^c$ satisfying the equation $F = E^\Gamma = E\circ\Gamma$. This virtual species $\Gamma$ is called the *combinatorial logarithm* of $F$ and denoted $\log F$. For example, the species $L$ of linear orders does not have an ordinary species of connected components, but it possesses a (strictly) virtual species of connected components $L^c$ in $Virt$.

The existence of subtraction changes the nature of solutions to combinatorial differential equations.
- **Non-constant Solutions to $\Phi^\prime = 0$:** In the ring of virtual species, the equation $\Phi^\prime = 0$ has an infinite number of non-constant solutions, such as $\Phi = nC_n - X^n$ for $n \ge 2$. This makes the theory of differential equations inherently "less well-defined" than in ordinary calculus. For any differential 2-rig $\cal R$, one can define the *ring of constants* as the full subcategory spanned by the objects $C$ such that $\partial C\cong 0$; this is a sub-2-rig of $\cal R$, since 
    - it contains $\varnothing$, since $\partial$ preserves it *qua* empty coproduct;
    - it contains $C+C^\prime$, since $\partial(C+C^\prime)\cong \partial C+\partial C^\prime\cong \varnothing+\varnothing\cong \varnothing$;
    - it contains $C\otimes C^\prime$, since $\partial(C\otimes C^\prime) \cong \varnothing\otimes C^\prime + C\otimes\varnothing\cong \varnothing$;
    - Note how more in general every 2-rig is an actegory over its 2-rig of constants: $\partial(C\otimes X) \cong C \otimes \partial X$.
- **Integration:** For any virtual species $\Psi$, the equation $\Phi^\prime = \Psi$ has a general solution $\Phi = \Omega + \int \Psi$, where $\Omega$ is any solution to $\Omega^\prime = 0$.
- **Iterative Methods:** The Newton-Raphson method for species is defined using the derivative and inverses within the virtual species framework to solve functional equations like $Y = X \cdot R(Y)$.
