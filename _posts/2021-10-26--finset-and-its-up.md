---
layout: post
title: FinSet and Its Universal Property
latex: katex
katex:
  macros:
antex:
    preamble:
        \usepackage{tikz,tikz-cd}
        \usetikzlibrary{calc,positioning}
        \usepackage[all]{xy}
        \usepackage{commutative-diagrams}
        \usepackage{amsmath,amsfonts}
        \usepackage{xcolor}
        \usepackage{tikz}
---

The category $\bf Fin$ has objects the finite sets and morphisms all functions; a skeleton of $\bf Fin$ is the category whose objects are sets $[n]=\{1,\dots,n\}$ for $n\ge 0$ (with the convention that $[0]=\varnothing$), and morphisms are functions $f : [n] \to [m]$.

...