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
        \usepackage{amsmath,amsfonts}
        \usepackage{xcolor}
        \usepackage{tikz}
---
You’ll find this post in your `_posts` directory. Go ahead and edit it and re-build the site to see your changes. You can rebuild the site in many different ways, but the most common way is to run `jekyll serve`, which launches a web server and auto-regenerates your site when a file is updated.

To add new posts, simply add a file in the `_posts` directory that follows the convention `YYYY-MM-DD-name-of-post.ext` and includes the necessary front matter. Take a look at the source for this post to get an idea about how it works.

Jekyll also offers powerful support for code snippets: $ab=c$

$$abcde$$


$$\begin{aligned}
  P &\mapsto P - A \\
  P &\mapsto P \norm\i^{-1} \\
  P &\mapsto R_\theta P \\
  P &\mapsto P \norm\f \\
  P &\mapsto P + B
\end{aligned}$$

{% tex classes: [antex, display] %}
\begin{codi}
  \obj (S) { A & B \\ C & D \\ };
  \mor A -> B -> D;
  \mor * -> C -> *;
\end{codi}
{% endtex %}

$$ f : X \to Y $$

{% tex classes: [antex, display] %}
\def\graphThree{
\xymatrix{
G_3:&A\ar[dl]^{x} \ar[rr]^w &&D\ar@(ur,dr)^{u} \\
B \ar[rr]_y && C \ar[ul]_z
}}
\def\eltsThree{
\footnotesize
\xymatrix@!=.475cm{
A \ar@/^.75pc/@{.}[drrr]\ar@{.}[dr]\ar[d]& \ar@{.}[dr]B\ar[d] & C \ar@{.}[dll]\ar[d]&& D \ar[dr]\ar[dl]\\
z \ar[d]& x \ar[d]& y \ar[d]&w\ar[d]&& u\ar[dr]\ar[dl] \\
zy\ar[d] & xz \ar[d]& yx\ar[d] & wz \ar[d]& uw\ar[d] && uu \ar[dr]\ar[dl]\\
zyz & xzy & yxz & wzy & uwz & uuw && uuu
}}
\begin{tikzpicture}
\node (g1) {$\graphThree$};
\node[right=2cm of g1] {$\eltsThree$};
\end{tikzpicture}
{% endtex %}


{% tex classes: [antex, display] %}
\begin{tikzpicture}
\node[draw] (inE) at (0,6.5) {$\xymatrix@C=4mm@R=4mm{
	 &Z& \\
	 X\ar[ur]\ar[rr]_f&&X'
 }$};
\node[draw] (inB) {$\xymatrix@C=4mm@R=4mm{
	 &pZ& \\
	 pX\ar[ur]\ar[rr]_f&&C
 }$};
\node[right=2mm of inE] {$\mathcal E$};
\node[right=2mm of inB] {$\mathcal B$};
\end{tikzpicture}
{% endtex %}

aaa