---
layout: post
title:  "Welcome to Jekyll!"
latex: katex
katex:
  macros:
    '\norm': '\left\vert{#1}\right\vert'
    '\i': '\mathbf{i}'
    '\f': '\mathbf{f}'
    '\mat': '\begin{pmatrix}#1& #2\\ #3& #4\end{pmatrix}'
antex:
    preamble:
        \usepackage{tikz,tikz-cd}
        \usetikzlibrary{calc,positioning}
        \usepackage[all]{xy}
        \usepackage{commutative-diagrams}
        \usepackage{amsmath,amsfonts,amssymb}
        \usepackage{xcolor}
        \usepackage{tikz}
---
You’ll find this post in your `_posts` directory. Go ahead and edit it and re-build the site to see your changes. You can rebuild the site in many different ways, but the most common way is to run `jekyll serve`, which launches a web server and auto-regenerates your site when a file is updated.

To add new posts, simply add a file in the `_posts` directory that follows the convention `YYYY-MM-DD-name-of-post.ext` and includes the necessary front matter. Take a look at the source for this post to get an idea about how it works.

Jekyll also offers powerful support for code snippets: $ab=c$

$$abcde$$


