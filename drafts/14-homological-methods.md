---
layout: post
title: "Operads: homological methods"
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

The *right linear part* of the substitution product is defined as follows.

- Consider the trifunctor $\varpi:{\bf Spc}\times{\bf Spc}\times{\bf Spc}\to {\bf Spc}$ sending $(X,Y,Z)$ to $X\circ (Y+Z)$; as observed in [ref](), it is left cocontinuous but not right cocontinuous. 

Yet, for any two fixed $X,Y$ one can consider the coreflection of $[{\bf Spc},{\bf Spc}]$ onto the category $[{\bf Spc},{\bf Spc}]_+$ of endofunctors of species that preserve coproducts, and the image $X\circ (Y;-)$ of $\varpi$ under this coreflection; then, there is a universal monic natural transformation with components

{% tex classes: [antex, display] %}
\setlength{\fboxrule}{1sp}
\setlength{\fboxsep}{0sp}
\fbox{\xymatrix{
X\circ (Y;Z) \ar@{^{(}->}[r] & X\circ (Y+Z)
}}
{% endtex %} 

In particular, define the bifunctor 

{% tex classes: [antex, display] %}
\setlength{\fboxrule}{1sp}
\setlength{\fboxsep}{0sp}
\fbox{\xymatrix{
- \circ_{(1)} - : {\bf Spc}\times{\bf Spc} \ar[r] & {\bf Spc} 
}}
{% endtex %} 

as $F \circ_{(1)} G := F \circ (y(1);G)$. In words: $F \circ_{(1)} G$ is the coproduct-preserving part of the bifunctor $(F,G)\mapsto F\circ(1+G)$, the substitution of "Maybe $G$" in $F$.