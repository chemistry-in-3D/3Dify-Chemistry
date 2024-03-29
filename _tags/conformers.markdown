---
layout: page  
title: Conformers (13)
permalink: /Conformers/  
nav_order: 3 
---
<link rel="stylesheet" href="{{ '/assets/css/gallery.css' | relative_url }}">
# Conformers

This is a collection of models explaining and showing conformers.

<div class="gallery">
{% assign sorted_models = site.models | sort: 'model_id' %}
{% for model in sorted_models %} 
  {% if model.tags contains "Conformers" %}
    <div class="tile">
      <a href="{{ model.url | relative_url | append: '?tag=Conformers' }}">
        <img src="{{ '/models/thumbnails/' | append: model.image | relative_url }}" alt="{{ model.title }}" />
        <p>{{ model.title }}</p>
      </a>
    </div>
  {% endif %}
{% endfor %}
</div>
