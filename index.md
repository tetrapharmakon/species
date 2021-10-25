---
# Feel free to add content and custom Front Matter to this file.
# To modify the layout, see https://jekyllrb.com/docs/themes/#overriding-theme-defaults

layout: page
title: A course on combinatorial species
---

<h1>{{ page.title }}</h1>

Combinatorial species provide a categorical foundation for enumerative combinatorics. Nowadays they find application in combinatorics, algebra (where they provide an axiomatisation for the notion of *algebraic theory* à la Lawvere), algebraic topology (where they provide a foundation for the theory of operads), computer science (containers, etc.) and many other areas of pure Mathematics.

Combinatorial species are a true mathematical gem; they elegantly tie together a disparate variety of objects naturally arising in everyday mathematical practice.

Combinatorial species were invented by A. Joyal. After that, entire books have been written on the topic: among these, we will often refer to two

1. The red book
2. The big book

This website is the logbook of a reading seminar that I would like to start at [taltech](https://compose.ioc.ee) during Fall 2021.

{% for post in site.posts %}
  <article>
    <header>
      <h3>{{ post.title }}</h3>
      <time datetime="{{ post.date | date_to_xmlschema }}">{{ post.date | date_to_string }}</time>
    </header>
    {{ post.content | split: "</p>" | first }}
    <footer>
      <a href="{{ post.url | relative_url }}">Read more... </a>
    </footer>
  <!-- </article> -->
{% endfor %}
