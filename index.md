---
# Feel free to add content and custom Front Matter to this file.
# To modify the layout, see https://jekyllrb.com/docs/themes/#overriding-theme-defaults

layout: page
---

{% for post in site.posts %}
  <article>
    <header>
      <h1>{{ post.title }}</h1>
      <time datetime="{{ post.date | date_to_xmlschema }}">{{ post.date | date_to_string }}</time>
    </header>
    {{ post.content | split: "</p>" | first }}
    <footer>
      <a href="{{ post.url }}">Read more... ({{ post.content | number_of_words }} words)</a>
    </footer>
  </article>
{% endfor %}
