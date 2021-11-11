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

Precise definitions of the series;

Computations of a few simple $Z$'s; for $E$ an $\cal C$.

A case in study: $\cal S$ is $E\triangleleft \cal C$, and the formula for the cycle index series yields the  identity 

$$ \prod_{k\ge 1} \frac1{1-x^k} = \exp \um_{k\ge 1} \frac1k \frac{x^k}{1-x^k} $$