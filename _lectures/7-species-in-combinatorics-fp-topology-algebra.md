---
layout: post
title: An application of species to functional programming
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

> One of the many ways of formally describing a programming language is via *denotational semantics*, in which a term $T$ of type $\tau$ is represented by a mathematical object $\llbracket T \rrbracket \in \llbracket\tau\rrbracket$ (its *denotation*), where $\llbracket\tau\rrbracket$ is a *domain*, a certain kind of structured set. Terms of type $\sigma\to\tau$ are then interpreted as suitable functions $\llbracket\sigma\rrbracket\to\llbracket\tau\rrbracket$ between domains.[^1]

(Thanks to [dpl0a]() for having written this introduction replacing my lazy fat fingers.)



[^1]: As it's common in set theoretical foundations of mathematics, functions enjoy an *extensionality principle* (i.e. are considered equal when they agree on all arguments). Therefore unlike its *operational* counterpart, denotational semantics is more concerned with the *statics* of a program, rather than its *dynamics*.