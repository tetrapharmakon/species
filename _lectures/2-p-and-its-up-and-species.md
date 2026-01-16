---
layout: post
title: The category P and species
latex: katex
katex:
  macros:
antex:
    preamble:
        \usepackage{tikz,tikz-cd}
        \usetikzlibrary{calc,positioning, fit}
        \usepackage[all,2cell]{xy}\UseAllTwocells
        \usepackage{commutative-diagrams}
        \usepackage{amsmath,amsfonts,amssymb}
        \usepackage{xcolor}
        \usepackage{stmaryrd}
        \usepackage{tikz}
        \def\yo{y}

---


The fundamental object of study of the theory of combinatorial species is the category $\bf P$ of finite sets and bijections, and its presheaf category $[{\bf P}^\text{op}, {\bf Set}]$. (Note: since a groupoid is a self-dual category, there is not much difference between $[{\bf P}^\text{op}, {\bf Set}]$ and $[{\bf P}, {\bf Set}]$, but we will usually speak about the second category.)

### The groupoid of natural numbers

<div id="defi-1"></div>
**Definition** (The category $\bf P$). The category $\bf P$, also called the *groupoid of natural numbers*, has

1. Objects the finite sets $A,B,\dots$;
2. Hom sets $\hom(A,B)$ the set of bijective functions $\sigma : A \to B$ if $\text{card}(A) = \text{card}(B)$, and the empty set otherwise.

A skeleton of $\bf P$ consists of the category having objects the natural numbers $[n]=\{1,\dots, n\}$ (with the convention that $[0]$ is empty), and hom-sets $\hom(n,n)$ the symmetric groups $S_n$ for each $n\ge 0$.

<div id="label-1"></div>
**Remark** (On the structure of $\bf P$). Every groupoid splits as a disjoint union of connected groupoids (each of which is equivalent to a group); the (skeleton of the) category $\bf P$ splits as a disjoint union of the symmetric groups $S_n$, with $n\ge 0$.

So the *canonical decomposition* of $\bf P$ is the equivalence of categories

$$ {\bf P} \cong \coprod_{n=0}^\infty S_n. $$

An immediate corollary of this decomposition is that a functor $X : {\bf P} \to {\bf Set}$ is uniquely determined by a "symmetric sequence":
<!-- of sets $(X_n \mid n\ge 0)$ each of which has a left action of the symmetric group on $n$ elements. -->

<div id="label-2"></div>
**Corollary.** A functor $X : {\bf P} \to {\bf Set}$ is completely determined by the following data:

1. A sequence of sets $(X_n \mid n\ge 0)$;
2. A sequence of functions $(a^X_n : S_n \times X_n \to X_n)$, each of which is a left action of $S_n$ on the set $X_n$.

*Proof.* It is evident that the actions $a^X_n$ are precisely the action on morphisms of a functor $X_\bullet : {\bf P} \to {\bf Set}$ (vice versa, every hom-set ${\bf P}(n,m)$ is empty for $n\neq m$, so the datum of the actions is enough to "glue" a functor $X$).

<div id="defi-2"></div>
**Definition** (Category of species). A functor $X_\bullet : {\bf P} \to {\bf Set}$ is called a *combinatorial species*. The *category* $\bf Spc$ of combinatorial species has objects the functors $X_\bullet : {\bf P} \to {\bf Set}$, and morphisms the natural transformations $\alpha : X_\bullet \Rightarrow Y_\bullet$.

So, a combinatorial species is entirely described by a sequence of sets $(X_n\mid n\ge 0)$, each of which has an action of the symmetric group on $n$ letters.

*Remark.* (A critical remark on how to think about combinatorial species). Given the corollary above, it is not a mistake to interpret a combinatorial species as a "categorified formal power series": the sequence of the $X_n$'s above is the sequence of coefficients of a formal power series $a_0 + a_1t+a_2t^2+\dots$. In slightly more formal terms, to the species $X_\bullet$ one can associate the "exponential" formal power series

$$g_X(t)= \sum_{n=0}^\infty \frac{|X_n|}{n!} t^n $$

(do not pay particular attention to the denominator term $n!$; it is there to simplify some expressions and blur the distinction between formal power series and analytic function to which it converges) where $t$ is a formal parameter and $\|X_n\|$ is the cardinality of $X_n$.


We will soon substantiate this idea showing that most of the operations that make sense for formal power series, such as addition, multiplication and an analogue of functional composition, also make sense for combinatorial species.

The reader shall however be warned that, while a quite intuitive invariant of the combinatorial species $X_\bullet$, its generating series is also a quite coarse one. For example, the correspondence that sends $X_\bullet$ into $g_X$ is not injective: there is plenty of species for which $\forall n.\|X_n\| = \|Y_n\|$ (and thus $g_X=g_Y$) without them being isomorphic. (For example, the species $S$ of permutations and the species $L$ of linear orders: in that case, $\forall n.\|S_n\| = \|L_n\| = n!$, and $g_S=g_L=\sum_{n=0}^\infty t^n = \frac1{1-t}$.)

*Remark.* (A remark on the generality of this definition). Originally, Joyal defined a "finitary species" (*espèce finitaire*) as an endofunctor of $\bf P$; the red book also concentrates on species having finite values. These two definitions are equivalent, because a functor ${\bf P} \to {\bf Fin}$ factors along the inclusion ${\bf P} \hookrightarrow {\bf Fin}$; but the category of all $\bf Set$-valued functors ${\bf P} \to {\bf Set}$ has way nicer categorical properties.

The category $\bf P$ and $\bf Spc$ have two important universal properties:

<div id="theorem-1"></div>
**Theorem.** The category $\bf P$ is the free symmetric monoidal category on a singleton.

*Proof.* Proving this claim amounts to show that given a symmetric monoidal category $\cal A$ there is an equivalence of categories between

1. the category $\cal A$, and
2. The category of strong monoidal functors $F : {\bf P} \to {\cal A}$.

In simple terms, a strong monoidal functor $F$ as above is determined by its value on the point. This is evident in light of the definition of the "sum and shuffle" monoidal product: the generic object of $\bf P$ is $[n] = [1] \oplus \dots \oplus [1]$, so that a strong monoidal functor $F$ must send $[n]$ to $F[1]^{\otimes n}$.

Similarly, with the additional request of cocompleteness, one proves the following.

<div id="theorem-2"></div>
**Theorem.** The category $\bf Spc$ is the free cocomplete symmetric monoidal category on a singleton.

### A few examples of species

<div id="label-3"></div>
**Example** (The species of singletons). The species $U$ of singletons ($U$ stands for "*un seul élément*", a single element in French) sends a finite set $A$ into a one-point set $\{\bullet\}$ if $A$ is itself a one-point set, and in the empty set otherwise. The action of the symmetric group on each $U[n]$ is the only possible one.

<div id="label-4"></div>
**Example** (The species of subsets). The species of subsets sends a finite set $[n]$ into the set $\wp[n]$ of all possible subsets of $[n]$; so, $\wp[n]$ has exactly $2^n$ elements, and the action of the symmetric group is defined as post-composition, identifying $\wp[n]$ with the set ${\bf Set}(n,2)$; in simple words, $\sigma \in S_n$ acts on $\wp[n]$ sending the set $\{n_1,\dots, n_k\}$ to the set $\{\sigma n_1,\dots, \sigma n_k\}$.

{% tex classes: [antex, display] %}
\def\yes{\bullet}
\def\no{\circ}
\def\bloc#1#2#3{\draw (0,0) rectangle (3,1);\node at (.5,.5) {$#1$};\node at (1.5,.5) {$#2$};\node at (2.5,.5) {$#3$};}
\begin{tikzpicture}[scale=.5]
\draw (0,0) rectangle (3,1);
\node at (.5,.5) {$1$};
\node at (1.5,.5) {$2$};
\node at (2.5,.5) {$3$};
\begin{scope}[xshift=4cm]
\bloc{\yes}{\no}{\no}
\begin{scope}[yshift=-1.25cm] \bloc{\no}{\yes}{\yes} \end{scope}
\begin{scope}[xshift=3.25cm]
\bloc{\yes}{\no}{\yes}
\begin{scope}[yshift=-1.25cm] \bloc{\no}{\yes}{\no} \end{scope}
\begin{scope}[xshift=3.25cm]
\bloc{\no}{\no}{\no}
\begin{scope}[yshift=-1.25cm] \bloc{\yes}{\yes}{\yes} \end{scope}
\begin{scope}[xshift=3.25cm]
\bloc{\no}{\yes}{\yes}
\begin{scope}[yshift=-1.25cm] \bloc{\yes}{\no}{\no} \end{scope}
\end{scope}\end{scope}\end{scope}\end{scope}
\end{tikzpicture}
{% endtex %}

<div id="label-5"></div>
**Example** (The terminal species). The species $E$ of sets ($E$ stands for "*ensemble*", set in French) is the terminal object of the category $\bf Spc$; it is the constant functor on the singleton $\{\bullet\}$. The species $E$ has two important sub-species that we will meet again later: the species $E_e$ of *even sets*, and the species $E_o$ of *odd sets*. Note that thinking of a species $F$ as a rule assigning to a finite set "the set of all structures of type $F$ on $[n]$", the terminal species can be thought as the species of sets: for each finite set $[n]$, $E[n]$ is the set of all possible set structures on $[n]$: there is just one such structure.

<div id="label-6"></div>
**Example** (The species of permutations). The species $S$ of permutations sends each finite set $[n]$ into the (carrier of the) symmetric group on $n$ letters, $S_n$. The symmetric group acts on itself by conjugation: if $\tau \in S_n$, $\sigma : S_n \to S_n$ is the map sending $\tau\mapsto \sigma\tau\sigma^{-1}$.

{% tex classes: [antex, display] %}
\begin{tikzpicture}
\node (1) at (0,0) {$\left(\begin{smallmatrix} 1&2&3\\1&2&3 \end{smallmatrix}\right)$};
\node (2) at (1.25,-.1325) {$\underset{\sigma}{\left(\begin{smallmatrix} 1&2&3\\1&3&2 \end{smallmatrix}\right)}$};
\node (3) at (2.5,0) {$\left(\begin{smallmatrix} 1&2&3\\2&1&3 \end{smallmatrix}\right)$};
\node (4) at (0,.75) {$\left(\begin{smallmatrix} 1&2&3\\3&1&2 \end{smallmatrix}\right)$};
\node (5) at (1.25,.75) {$\left(\begin{smallmatrix} 1&2&3\\3&2&1 \end{smallmatrix}\right)$};
\node (6) at (2.5,.75) {$\left(\begin{smallmatrix} 1&2&3\\2&3&1 \end{smallmatrix}\right)$};
\node[gray!40,draw,densely dotted,fit=(1) (2) (3) (4) (5) (6)] (box) {$S_3$};
\draw[|->] ($(box.east)+(.15,0)$) -- +(1.325cm,0) node[above, pos=.5] {$\sigma \cdot\_$};
\begin{scope}[xshift=5.5cm]
\node (1) at (0,0) {$\left(\begin{smallmatrix} 1&2&3\\1&3&2 \end{smallmatrix}\right)$};
\node (2) at (1.25,0) {$\left(\begin{smallmatrix} 1&2&3\\1&2&3 \end{smallmatrix}\right)$};
\node (3) at (2.5,0) {$\left(\begin{smallmatrix} 1&2&3\\3&1&2 \end{smallmatrix}\right)$};
\node (4) at (0,.75) {$\left(\begin{smallmatrix} 1&2&3\\2&1&3 \end{smallmatrix}\right)$};
\node (5) at (1.25,.75) {$\left(\begin{smallmatrix} 1&2&3\\2&3&1 \end{smallmatrix}\right)$};
\node (6) at (2.5,.75) {$\left(\begin{smallmatrix} 1&2&3\\3&2&1 \end{smallmatrix}\right)$};
% \node[draw,densely dotted,fit=(1) (2) (3) (4) (5) (6)] (box) {};
\end{scope}
\end{tikzpicture}
{% endtex %}

<div id="label-7"></div>
**Example** (The species of linear orders). The species $L$ of linear orders sends each finite set $[n]$ to the set of all possible linear orderings of $[n]$; the set $L[n]$ has exactly $n!$ elements, because each linear ordering $\{x_1 \le \dots \le x_n\}$ of an $n$-element set can be thought as a permutation of $(12\dots n)$; so, each $L[n]$ possesses a certain bijection into $S[n]$ (the image of $[n]$ under the species of permutations), which however is not natural (two objects of $\bf Spc$ regarded as sequences of left $S_n$-sets must be isomorphic *together with their action* in order to be isomorphic as species).

{% tex classes: [antex, display] %}
\def\ordBloc#1#2#3{\draw (0,0) rectangle (3,1);\node (1) at (.5,.5) {$#1$};\node (2) at (1.5,.5) {$#2$};\node (3) at (2.5,.5) {$#3$};
\node at ($(1)!.5!(2)$) {\tiny $<$};
\node at ($(2)!.5!(3)$) {\tiny $<$};
}
\begin{tikzpicture}[scale=.5]
  \draw (0,0) rectangle (3,1);
  \node at (.5,.5) {$1$};
  \node at (1.5,.5) {$2$};
  \node at (2.5,.5) {$3$};
  \begin{scope}[xshift=4cm]
  \ordBloc{1}{2}{3}
  \begin{scope}[yshift=-1.25cm] \ordBloc{1}{3}{2} \end{scope}
  \begin{scope}[yshift=-2.5cm] \ordBloc{2}{1}{3} \end{scope}
  \begin{scope}[xshift=3.25cm]
  \ordBloc{2}{3}{1}
  \begin{scope}[yshift=-1.25cm] \ordBloc{3}{1}{2} \end{scope}
  \begin{scope}[yshift=-2.5cm] \ordBloc{3}{2}{1} \end{scope}
  \end{scope}\end{scope}
\end{tikzpicture}
{% endtex %}

<div id="label-8"></div>
**Example** (The species of oriented cycles). The species $\cal C$ of *oriented cycles* sends a finite set $[n]$ in the set of possible inequivalent ways to sit $n$ people at a round table, or more formally, in the set of cylic orderings of $\{x_1,\dots,x_n\}$, where the ordering $x_1,\dots,x_n$ is indistinguishable from $x_2,x_3\dots,x_n, x_1$, from $x_3, x_4\dots,x_n, x_1, x_2$, and frome very other cyclic permutation of its members. It can be shown by induction (or using simple arguments from group actions and orbits) that $\|{\cal C}[n]\| = (n-1)!$.


{% tex classes: [antex, display] %}
\begin{tikzpicture}
\draw (0,0) circle (1cm);
\draw[->] (70:1.15cm) arc (70:35:1.15cm);
\foreach[count=\j] \i in {4,3,2,1,0}{
  \node[draw, fill=white, circle, inner sep=1pt] at (\i*360/5+90+72:1cm) {\footnotesize $x_{\j}$};
  }
\begin{scope}[xshift=3cm]
\draw (0,0) circle (1cm);
\draw[->] (70:1.15cm) arc (70:35:1.15cm);
\foreach[count=\j] \i in {4,3,2,1,0}{
  \node[draw, fill=white, circle, inner sep=1pt] at (\i*360/5+90:1cm) {\footnotesize $x_{\j}$};
  }
\end{scope}
\begin{scope}[xshift=7cm]
\draw (0,0) circle (1cm);
% \draw[->] (70:1.15cm) arc (70:35:1.15cm);
\foreach[count=\j] \i in {0,1,2,3,4}{
  \node[draw, fill=white, circle, inner sep=1pt] at (\i*360/5+90:1cm) {\footnotesize $x_{\j}$};
  }
\end{scope}
\end{tikzpicture}
{% endtex %}

One can also cook up more abstract examples of combinatorial species:

<div id="label-9"></div>
**Example** (The species *centered* in $n\in\mathbb N$).
Let $n\ge 1$ be a natural number. The species $c_n : {\bf P} \to {\bf Set}$, "concentrated" or "centered" in $n$ is defined as the functor sending $[n] \in \bf P$ to a singleton set $\bullet$, and every other set to the empty set. Clearly, $c_1 = U$ above, and $c_n$ can legitimately be called the species of *$n$-element sets*. More generally we can talk about the species $c_n^E$, concentrated in $n$, and such that $c_n^E([n]) = E$, and empty otherwise.

<div id="label-10"></div>
**Example** (The *representable* species as a particular case). Each representable functor $y[n] : {\bf P} \to \bf Set$ is a combinatorial species acting as follows: $y[n][k] := {\bf P}(n,k)$ is empty if $n\ne k$, so the species is centered in $n$, and $y[n][n] = S_n$ is the (underlying set of the) symmetric group on $n$ elements. The action on morphisms is the same as in the species of permutations, and in fact the species of permutation arises as the infinite sum

$$ S = y[1] + y[2] + y[3] + \dots $$

<div id="label-11"></div>
**Example** (The sym-representable species $n\mapsto S_n/H_n$).
Generalising from the preceding example we can fix $n\ge 1$ and a subgroup $H \le S_n$; we can restrict the left regular representation of $S_n$ on iteslf to $H$. This defines a species $f_H$ sending $[n]$ to the space of orbits of $H \curvearrowright S_n$ and every other $[k]\neq [n]$ to the emptyset.

These species will be the building blocks for our next lecture on analytic functors: we will show that every species can be thought of a categorification of the coefficients of a formal power series, because it defines a functor

$$\tilde F : {\bf Set} \to {\bf Set} : X\mapsto \sum_{n\ge 1} \frac{f(n) \times X^n}{n!} $$

where the quotient by $n!$ ihas to be interpreted as the quotient of the numerator by an action of the symmetric group.
### Contact of order $n$ between species

As it is well-known, in the ring of formal power series $K\llbracket t\rrbracket$ ($K$ any commutative unital ring), one can define a binary relation $\sim_n$ of *contact of order n* between elements $f,g$: two series have contact of order $n$ if they are congruent modulo $t^n$ (more formally: $f\mathrel{\sim_n}g$ if the difference $f-g$ is in the kernel of the canonical map $K\llbracket t\rrbracket \to K[t]/(t^n)$ from the inverse limit).

<div id="defi-3"></div>
**Definition.** For every $n\ge 0$, we denote $\iota_n : {\bf P}_{\le n} \hookrightarrow {\bf P}$ the inclusion of the full subcategory of $\bf P$ on the objects $\{[0],[1],\dots, [n]\}$.

Precomposition with $\iota_n$ determines a *truncation* functor

$$ \iota^*_n := \tau_n : {\bf Spc} = [{\bf P}, {\bf Set}]\to [{\bf P}_{\le n}, {\bf Set}] $$

and left and right Kan extensions along $\iota_n$ put $\tau_n$ in the middle of a triple of adjoint functors

$$ l_n \dashv \tau_n \dashv r_n $$

Formally, $l_n$ (resp., $r_n$) is the left (resp., right) Kan extension of a functor $H \in [{\bf P}\_{\le n}, {\bf Set}]$ along the functor
$\iota_{\le n}$; as an exercise, prove that these functors can be described explicitly as

$$ l_nF : m \mapsto \begin{cases} Fm & m \le n \\ \varnothing & m > n \end{cases} \qquad \qquad r_nF : m \mapsto \begin{cases} Fm & m \le n \\ * & m > n \end{cases} $$

We will say that a species $F$ has a contact of order $n$ with a species $G$ if $\tau_n F = \tau_n G$. We denote this relation as $F \mathrel{\sim_n} G$.

It is clear that when $F$ has contact of order $n$ with $G$, their associated series stand in the same relation.

<div id="defi-4"></div>
**Definition.** A *sequence* of species is an ordered family of species $(F_0,F_1,\dots)$. The sequence $(F_0,F_1,\dots)$ is said to *converge* to the species $F_\infty$ if the following "Cauchy" condition is satisfied:

> for every $N\ge 0$ there exists an index $\bar n$ such that for every $n\ge \bar n$, $F_n \mathrel{\sim_N} F_\infty$.

In simple terms, $(F_0,F_1,\dots)$ converges to $F_\infty$ if for every $N\ge 0$, all but a finite number of terms of the sequence have contact of order $N$ with $F_\infty$. If this is the case, we write $F_n \overset{n\to\infty}\rightharpoondown F_\infty$.

*Exercise.* Is there a way to interpret this notion as a categorical construction? If $F_n \overset{n\to\infty}\rightharpoondown F_\infty$, does $F_\infty$ have a universal property?


#### Reading list

...
