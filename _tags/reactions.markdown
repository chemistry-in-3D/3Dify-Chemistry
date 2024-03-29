---
layout: page  
title: Reactions
permalink: /Reactions/  
nav_order: 3 
---

<link rel="stylesheet" href="{{ '/assets/css/gallery.css' | relative_url }}">
# Reactions

This gallery features a collection of chemical reactions.

<div class="gallery">
{% assign sorted_models = site.models | sort: 'model_id' %}
{% for model in sorted_models %} 
  {% if model.tags contains "Reactions" %}
    <div class="tile">
      <a href="{{ model.url | relative_url | append: '?tag=Reactions' }}">
        <img src="{{ '/models/thumbnails/' | append: model.image | relative_url }}" alt="{{ model.title }}" />
        <p>{{ model.title }}</p>
      </a>
    </div>
  {% endif %}
{% endfor %}
</div>
