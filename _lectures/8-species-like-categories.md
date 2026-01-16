---
layout: post
title: "Generalization: species-like structures"
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

There is a vast array of generalizations of the concept of species, that we now survey. Most of the theory developed so far applies to these general contexts as well, with due care about details (for example, it is not very easy to define the substitution product for colored species).

If $S$ is a set regarded as a discrete category, and $\cal V$ a *Bénabou cosmos* (i.e. a complete, cocomplete, symmonclosed category), we give the following definition encompassing various (but not all) examples of this section.

**Definition.** The category $(S,{\cal V})\text{-}\mathbf{Spc}$ of *$(S,{\cal V})$-species* is defined as the functor category $\mathbf{Cat}({\bf B}[S],{\cal V})$ where ${\bf B}[S]$ is the free symmoncat on the set $S$.

Evidently, the "category of species" studied so far is the category $(1,{\bf Set})\text{-}\mathsf{Spc}$ if $1$ is a singleton set.

**Remark.** One could have defined a category $({\cal A},{\cal V})\text{-}\mathsf{Spc}$ as the functor category $\mathbf{Cat}({\bf B}[{\cal A}],{\cal V})$ (the free symmoncat construction makes sense for every category, not just the discrete ones). This is however a different kind of gadget, which would deserve the name of *free (cocomplete) 2-rig on $\cal A$*; species, in this perspective, occupy a special role as they are free *on a set*, much like a polynomial ring is free on a set of generators (for its multiplication) regarded as variables.

This definition is very pliable: the formal properties of $(S,{\cal V})\text{-}\mathbf{Spc}$ are not much dependent on $\cal V$, which can be chosen to be the category $\bf Top$ of topological spaces, or vector spaces, or simplicial sets,... but also the category $(T,{\cal W})\text{-}\mathbf{Spc}$ for a different pair $(T,\cal W)$ (what happens in that case)?

Leaving the base of enrichment $\cal V$ equal to $\bf Set$ and raising the cardinality of $S$ one obtains the so-called *multicolored* species (the terminology dates back to homotopy theory, where the set $S$ is regarded as a set of "colours" for an "operad" -we will get there). Observe that since ${\bf B}[-]$ is a club in the sense of [Kelly](), among many other properties that this doctrine has there is the fact that 

$$ {\bf B}[S] \cong {\bf B}[1]\wr S \cong \prod_{s\in S}{\bf B}[1] $$

can be written as a "wreath product" of ${\bf B}[1]$ with $S$, i.e. as the *power* ${\bf B}[1]^S = {\bf B}^S$.