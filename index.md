---
# Feel free to add content and custom Front Matter to this file.
# To modify the layout, see https://jekyllrb.com/docs/themes/#overriding-theme-defaults

layout: page
title: A course on combinatorial species
---

<h1>{{ page.title }}</h1>

Combinatorial species provide a categorical foundation for enumerative combinatorics. Nowadays they find application in combinatorics, algebra and logic (where they provide an axiomatisation for the notion of *algebraic theory* à la Lawvere), algebraic topology (where they provide a foundation for the theory of operads), computer science (containers, etc.) and many other areas of pure Mathematics.

Combinatorial species are a true mathematical gem; they elegantly tie together a disparate variety of objects naturally arising in everyday mathematical practice.

Combinatorial species were invented by A. Joyal.

- Joyal, André. _Une théorie combinatoire des séries formelles._ Advances in mathematics 42.1 (1981): 1-82.
- Joyal, André. _Foncteurs analytiques et especes de structures._ Combinatoire énumérative. Springer, Berlin, Heidelberg, 1986. 126-159.

After that, entire books have been written on the topic: among these, we will often refer to two

1. The red book: Bergeron, François, et al. _Combinatorial species and tree-like structures_. No. 67. Cambridge University Press, 1998.
2. The big book: Aguiar, Marcelo, and Swapneel Arvind Mahajan. _Monoidal functors, species and Hopf algebras_. Vol. 29. Providence, RI: American Mathematical Society, 2010.

(Yes, I will refer them as "red" and "big" in the following).

This website is the logbook of a reading seminar running at [taltech](https://compose.ioc.ee). Its focus is not on rigor or completeness. Its style is idiosyncratic. Its purpose is to collect pointers to the -quite vast- literature on species (while tickling my nitpickery). I started drafting this roadmap during the Fall semester of 2021; since then, taltech became an even bigger hub for young category theorists, so time it ripe to popularize the beautiful, beautiful theory of species and operads!

Feel free to [reach out](mailto:fosco.loregian@gmail.com) with questions or point out references that I might have missed. 

{% for lecture in site.lectures %}
  <article>
    <header>
      <h3>{{ lecture.title }}</h3>
    </header>
    <p>{{ lecture.excerpt | strip_html | truncatewords: 60 }}</p>
    <footer>
      <a href="{{ lecture.url | relative_url }}">Read more...</a>
    </footer>
  </article>
{% endfor %}
