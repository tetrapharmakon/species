---
layout: post
title: "Motivation: on the tension between algebraic and bijective proofs"
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
        \usepackage{tikz}
---

In the words of R. Stanley, the basic problem of enumerative combinatorics is that of counting the number of elements
of a finite set. 

Inside this area of mathematics, there exists a tension between two different ways to concoct a proof for a statement (Stanley goes through a thorough analysis of what it really means to answer the above problem). In the words of another combinatorialist, 

<img src="../mendez-bij-proofs.png" alt="drawing" width="100%"/>

In order to appreciate what is a bijective proof, consider the following identity: 

$$ \binom{p+q}{n} = \sum_{k=0}^n \binom{p}{k}\binom{q}{n-k}. $$

There is an **algebraic** way of establishing this identity, namely observing that $\binom pk$ is the coefficient $\[x^k\](1+x)^p$, and similarly $\[x^{n-k}\](1+x)^q = \binom q{n-k}$; but then, 

$$
\begin{array}{rcl} 
(1+x)^p (1+x)^q&=&\displaystyle\sum_{i=0}^p \binom pi \cdot \sum_{j=0}^q \binom qj \\
&=&\displaystyle\sum_{n=0}^{p+q}\left(\sum_{k=0}^n \binom pk \binom q{n-k}\right)x^n \\ 
(1+x)^{p+q}&=& \displaystyle\sum_{n=0}^{p+q} \binom{p+q}n x^n
\end{array}
$$

the claim now follows from comparing coefficients.

There is however another way to argue, the **bijective** way: the *number* $\binom pk$ is nothing but the cardinality of the *set* of injections $N \hookrightarrow P$ if $N$ is an $n$-set and $P$ is a $p$-set. Thus, the question we have is: why is the cardinality of the set of injections $N \hookrightarrow P+Q$ equal to the product of the cardinalities of the sets $\text{Inj}(K,P)$ and $\text{Inj}(N\setminus K,Q)$? In the category $\bf Set$ coproducts and monomorphisms are pullback-stable, so to determine an injection $f:N\hookrightarrow P+Q$ it is sufficient to determine the sets $I,J$ in the pullbacks 

{% tex classes: [antex, display] %}
\setlength{\fboxrule}{1sp}
\setlength{\fboxsep}{0sp}
\fbox{\xymatrix{
  I \ar@{}[dr]|(.33)\lrcorner \ar[r]\ar[d]& P \ar@{^{(}->}[d]^{\text{in}_1}& J \ar@{}[dr]|(.33)\lrcorner \ar[r]\ar[d]& Q \ar@{^{(}->}[d]^{\text{in}_2}\\
  N \ar@{^{(}->}[r]_-f & P+Q & N \ar@{^{(}->}[r]_-f & P+Q
}}
{% endtex %}

(the sets $I,J$ partition $N$: $I\cap  J=\varnothing, I+J=N$).

Enumerative combinatorics has a tension between these two complementary styles of proof. Somehow, one is close to an *Erdősian* style, and the other is more in the vibe of G.-C. Rota (but this is not intended as a judgment in quality).

Combinatorial species are the coronation of an attempt to unify these two perspectives, recognizing their respective limits and values, offering a unified framework in which the theory of generating functions (à la [Wilf](https://www2.math.upenn.edu/~wilf/gfology2.pdf)) can be framed and understood at a deeper level.

The theory was first introduced in two papers by A. Joyal, 

- Joyal, André. _Une théorie combinatoire des séries formelles._ Advances in mathematics 42.1 (1981): 1-82.
- Joyal, André. _Foncteurs analytiques et especes de structures._ Combinatoire énumérative. Springer, Berlin, Heidelberg, 1986. 126-159.

which promoted for a long time the idea that the category $\bf Spc$ of combinatorial species is a categorified analogue of the semiring $\mathbb N\llbracket T\rrbracket$.


#### Reading list

- Stanley, Richard P. _What is enumerative combinatorics?._ Enumerative combinatorics. Boston, MA: Springer US, 1986. 1-63.
- Aigner, Martin. _A course in enumeration._ Berlin, Heidelberg: Springer Berlin Heidelberg, 2007.
- Joyal, André. _Une théorie combinatoire des séries formelles._ Advances in mathematics 42.1 (1981): 1-82.
- Joyal, André. _Foncteurs analytiques et especes de structures._ Combinatoire énumérative. Springer, Berlin, Heidelberg, 1986. 126-159.