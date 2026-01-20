---
layout: post
title: "Operads: first contact"
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

An operad is a monoid for the substitution product discussed in [lecture 3](./3-monoidal-structures-on-P.html#defi-5). As such, "the theory of operads" is the study of the category $\mathbf{Opd}={\bf Mon}({\bf Spc},\circ)$; but things are never as simple as they seem...

First, let's flesh out what the definition prescribes. An *operad* consists of a functor $T : {\bf B} \to \bf Set$, equipped with 

- multiplication, a natural transformation of type $\mu : T \circ T\Rightarrow T$, subject to the associativity axiom (the two compositions are mediated by the associator):

  {% tex classes: [antex, display] %}
  \setlength{\fboxrule}{1sp}
  \setlength{\fboxsep}{0sp}
  \fbox{\xymatrix{
    (T\circ T)\circ T\ar[r]^-{\mu\circ T}\ar[d]_-\wr & T\circ T \ar[dd]^-\mu \\
    T\circ (T\circ T) \ar[d]_-{T\circ\mu}& \\
    T\circ T \ar[r]_-\mu & T
  }}
  {% endtex %} 
  
- unit, a natural transformation of type $\eta : J \Rightarrow T$ which satisfies the left and right unit axioms (mediated by the unitors):
  
  {% tex classes: [antex, display] %}
  \setlength{\fboxrule}{1sp}
  \setlength{\fboxsep}{0sp}
  \fbox{\xymatrix{
    J\ar[dr]_-\sim \circ T\ar[r]^-{\eta\circ T} & \ar[d]_-\mu T\circ T & T\circ J\ar[l]_-{T\circ \eta} \ar[dl]^-\sim\\ 
    &T&
  }}
  {% endtex %}

It is worth to note explicitly the shape of $\mu,\eta$; those who already know it will recognize the form of an operad as defined in, say, algebraic topology textbooks.

- $\eta$, as a natural transformation of type $y1 \Rightarrow T$, corresponds by Yoneda to an element $u\in T1$.
- $\mu$ is a natural transformation in the set

  $$ \begin{aligned}
  {\bf Spc}\Big(\int^m Tm\times T^{*m}(-) , T\Big) &\cong \int_m {\bf Spc}\big(Tm\times T^{*m}(-) , T\big)\\ 
  &\cong \int_{mr} {\bf Set}\big(Tm\times T^{*m}r , Tr\big)\\
  &\cong \int_{mr, \vec n} {\bf Set}\Big(Tm\times Tn_1\times\dots\times Tn_m \times {\bf B}(\textstyle\sum n_i,r) , Tr\Big)\\
  &\cong \int_{mr, \vec n} {\bf Set}\Big({\bf B}(\textstyle\sum n_i,r), {\bf Set}(Tm\times Tn_1\times\dots\times Tn_m   , Tr)\Big)\\
  &\cong {\bf Set}(Tm\times Tn_1\times\dots\times Tn_m  , T(\textstyle\sum n_i))
  \end{aligned} $$

  where the last equality is Yoneda, and thus $\mu$ has components 

  {% tex classes: [antex, display] %}
  \setlength{\fboxrule}{1sp}
  \setlength{\fboxsep}{0sp}
  \fbox{\xymatrix{
    \mu : Tm\times Tn_1\times\dots\times Tn_m \ar[r] & T(n_1+\dots + n_m)
  }}
  {% endtex %}

**Remark.** Naturality for $\eta$ is straightforward; note that naturality for $\mu$ amounts to the commutativity of the diagram 

{% tex classes: [antex, display] %}
\setlength{\fboxrule}{1sp}
\setlength{\fboxsep}{0sp}
\fbox{\xymatrix{
  Tm\times Tn_1\times\dots\times Tn_m \ar[r]^-\mu \ar[d]_{T\alpha\times T\beta_1\times\dots\times T\beta_n}& T(n_1+\dots + n_m) \ar[d]^{T\bar\beta}\\
  Tm\times Tn_1\times\dots\times Tn_m \ar[r]_-\mu & T(n_1+\dots + n_m) 
}}
{% endtex %}

given permutations $\alpha, \beta_1,\dots, \beta_m$, where $\bar\beta=\beta_1 \mathbin{ш} \beta_2 \mathbin{ш} \dots \mathbin{ш} \beta_m$ is the shuffle (шафл) of the permutations $\beta_1,\dots, \beta_m$.

Associativity of $\mu$ is better appreciated through a picture:

{% tex classes: [antex, display] %}
\begin{tikzpicture}
\draw (0,0) pic {vertex={2pt}};
\draw (.15,0) pic {vertex={2pt}};
\draw (.39,0) pic {vertex={2pt}};
\draw (0,-16pt) pic {box={6pt,g_1}};
\begin{scope}[xshift=1.25cm]
\draw (0,0) pic {vertex={2pt}};
\draw (.15,0) pic {vertex={2pt}};
\draw (.39,0) pic {vertex={2pt}};
\draw (0,-16pt) pic {box={6pt,g_n}};
\end{scope}
\draw (6pt,-.85) -- ++(0,-8pt);
\draw (41.5pt,-.85) -- ++(0,-8pt);
\filldraw[fill=white] (0,-1.25) rectangle ++(48pt,8pt) node[pos=.5, font=\tiny] {$f$};
\begin{scope}[xshift=3cm,yshift=2cm]
\draw (0.0357,-8.5pt) pic {vertex={2pt}};
\draw (.105,-8.5pt) pic {vertex={2pt}};
\draw (.386,-8.5pt) pic {vertex={2pt}};
\draw (0,-20pt) pic {box={6pt,g_1}};
\begin{scope}[xshift=1.25cm]
\draw (0.0357,-8.5pt) pic {vertex={2pt}};
\draw (.105,-8.5pt) pic {vertex={2pt}};
\draw (.386,-8.5pt) pic {vertex={2pt}};
\draw (0,-20pt) pic {box={6pt,g_n}};
\end{scope}
\begin{scope}[yshift=-4pt]
\draw (6pt,-.85) -- ++(0,-8pt);
\draw (41.5pt,-.85) -- ++(0,-8pt);
\filldraw[fill=white] (0,-1.25) rectangle ++(48pt,8pt) node[pos=.5, font=\tiny] {$f$};
\end{scope}
\end{scope}
\begin{scope}[xshift=3cm,yshift=-2.5cm]
\draw (0.0357,-6pt) pic {vertex={2pt}};
\draw (.105,-6pt) pic {vertex={2pt}};
\draw (.386,-6pt) pic {vertex={2pt}};
\draw (0,-20pt) pic {box={6pt,g_1}};
\begin{scope}[xshift=1.25cm]
\draw (0.0357,-6pt) pic {vertex={2pt}};
\draw (.105,-6pt) pic {vertex={2pt}};
\draw (.386,-6pt) pic {vertex={2pt}};
\draw (0,-20pt) pic {box={6pt,g_n}};
\end{scope}
\draw (6pt,-.85) -- ++(0,-8pt);
\draw (41.5pt,-.85) -- ++(0,-8pt);
\filldraw[fill=white] (0,-1.25) rectangle ++(48pt,8pt) node[pos=.5, font=\tiny] {$f$};
\end{scope}
\begin{scope}[xshift=6cm]
\draw (0.0357,-8.5pt) pic {vertex={2pt}};
\draw (.105,-8.5pt) pic {vertex={2pt}};
\draw (.386,-8.5pt) pic {vertex={2pt}};
\draw (0,-20pt) pic {box={6pt,g_1}};
\begin{scope}[xshift=1.25cm]
\draw (0.0357,-8.5pt) pic {vertex={2pt}};
\draw (.105,-8.5pt) pic {vertex={2pt}};
\draw (.386,-8.5pt) pic {vertex={2pt}};
\draw (0,-20pt) pic {box={6pt,g_n}};
\end{scope}
\draw (6pt,-.85) -- ++(0,-8pt);
\draw (41.5pt,-.85) -- ++(0,-8pt);
\filldraw[fill=white] (0,-1.25) rectangle ++(48pt,8pt) node[pos=.5, font=\tiny] {$f$};
\end{scope}
\begin{scope}[xshift=3.75cm,yshift=-1cm]
\node (p1) at ( 0:1cm) {$\bullet$};
\node (p2) at ( 90:1cm) {$\bullet$};
\node (p3) at (180:1cm) {$\bullet$};
\node (p4) at (-90:1cm) {$\bullet$};
\draw[->] (p2) -- (p1) node[pos=.5, above,font=\tiny] {$\mu$};
\draw[->] (p3) -- (p2) node[pos=.5, above left=-2mm,font=\tiny] {$\frac{\mu,\dots,\mu}{1}$};
\draw[->] (p3) -- (p4) node[pos=.5, below left=-2mm,font=\tiny] {$\frac 1\mu$};
\draw[->] (p4) -- (p1) node[pos=.5, below,font=\tiny] {$\mu$};
\end{scope}
\end{tikzpicture}
{% endtex %}

Some of the structure of $\mathbf{Opd}$ can be deduced from the fact that we are just looking at a particular instance of the category of monoids in a monoidal category:

**Remark.** There is an adjunction

{% tex classes: [antex, display] %}
\setlength{\fboxrule}{1sp}
\setlength{\fboxsep}{0sp}
\fbox{\xymatrix{
  \Opd \ar@<-.3em>[r]_-U & \ar@<-.3em>[l]_-F ({\bf Spc},\circ)
}}
{% endtex %}

whence we can derive (among other things) that

- the category of operads is complete, and limits are created by the forgetful functor $U$;
- colimits are complicated, but still they are reducible to certain reflexive coequalizers of free algebras, via the "Linton trick".

One can define the *free operad* on a combinatorial species, i.e. a left adjoint to the forgetful functor $U$ above; the situation, however, is in stark contrast with the case of *Cauchy* monoids, because

- The Day convolution product is separately cocontinuous in both variables (compare this with the fact that the substitution product commutes with colimits in its left, but not in its right, component: $-\circ G$ is cocontinuous (and thus a left adjoint, given that $\bf Spc$ is a locally finitely presentable category), $F\circ-$ isn't -and thus a right adjoint to it can't exist).
- In the case of Day convolution, the free-forgetful adjunction is easy to characterize conceptually: the free Day-monoid on a species is $\sum_{n\ge 0} F^{*n}$, which reduces to the species $L\circ F$; two corollaries of this fact are important: first, the action of the forgetful functor $U : {\bf Mon}({\bf Spc},\otimes) \to {\bf Spc}$ coincides with the Day-hom $\{\}$

A not-so-helpful observation is that the free operad on $F$ has to be obtained as the initial algebra for the functor ${\bf Spc} \to {\bf Spc} : P\mapsto y1 + F\circ P$. Adamek's theorem then ensures that such an initial algebra is the colimit of the chain

$$ y1 \to y1 + F \circ y1 = y1 + F \to y1 + F \circ (y1 + F) \to \dots $$

The problem is, we cannot develop such an expression simplifying, since the substitution product is only left cocontinuous.

**Proposition.** Every operad $T : {\bf B} \to {\bf Set}$ defines a monad $\flat T : {\bf Set} \to {\bf Set}$ as follows:

- the underlying endofunctor $\flat T$ is 
  
  $$ (\flat T)X := \int^n X^n \times Tn $$

  evidently, $\flat T$ is the analytic functor associated to $T$, so the construction of this proposition can be summarized as: *the analytic functor associated to an operad* (qua species) *is a monad*, and thus an *analytic* monad.
- the unit (component) $\eta : X \to (\flat T)X$ is defined through the unit of $T$,

  {% tex classes: [antex, display] %}
  \setlength{\fboxrule}{1sp}
  \setlength{\fboxsep}{0sp}
  \fbox{\xymatrix{
    X \cong X\times 1\ar[r]^-{\langle \text{id},\eta\rangle}&
    X^1 \times T1 \ar[r]^-{\text{in}_1} &
    \int^n X^n \times Tn
  }}
  {% endtex %}

- the multiplication (component) $\mu : (\flat T)((\flat T)X) \to (\flat T)X$ is defined from the composition

  $$ \begin{aligned}
  \int^{m} (M_T(X))^m \times Tm 
  &\cong \int^{m} \Bigl[ \int^{n} X^n \times Tn \Bigr]^m \times Tm \\
  &\cong \int^{m} \left(\int^{\vec n} X^{n_1+\cdots+n_m} \times T{n_1} \times \cdots \times T{n_m} \right) \times Tm  \\
  &\cong \int^{m,\vec n} X^{n_1+\cdots+n_m} \times T{n_1} \times \cdots \times T{n_m} \times  Tm \\
  &\to \int^k X^k\times Tk 
  \end{aligned} $$
  
  where the last arrow is obtained, in turn, composing 

  {% tex classes: [antex, display] %}
  \setlength{\fboxrule}{1sp}
  \setlength{\fboxsep}{0sp}
  \fbox{\xymatrix{
    X^{\sum n_i} \times Tm \times T{n_1} \times \cdots \times T{n_m}  \ar[d]_-{\langle\mu,\text{id}\rangle} & \\
    X^{\sum n_i} \times T\left(\sum n_i\right)  \ar[r]^-{\text{in}_{k=\sum n_i}} &
    \int^k X^k \times Tk
  }}
  {% endtex %}
