---
layout: post
title: "Operads: first contact"
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

An operad is a monoid for the substitution product discussed in [lecture 3](./3-monoidal-structures-on-P.html#defi-5). As such, "the theory of operads" is the study of the category ${\bf Mon}({\bf Spc},\circ)$; but things are never as simple as they seem...

First, let's flesh out what the definition prescribes. An *operad* consists of a functor $T : {\bf B} \to \bf Set$, equipped with 

- multiplication
- unit

These data are subject to the axioms of 

- associativity
- left unitality
- right unitality


