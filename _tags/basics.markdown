---
layout: page  
title: Basics (18)
permalink: /Basics/  
nav_order: 4
---
<link rel="stylesheet" href="{{ '/assets/css/gallery.css' | relative_url }}">
# Basic Concepts

A gallery for basic concepts in organic chemistry.

<div class="gallery">
{% assign sorted_models = site.models | sort: 'model_id' %}
{% for model in sorted_models %} 
  {% if model.tags contains "Basics" %}
    <div class="tile">
      <a href="{{ model.url | relative_url | append: '?tag=Basics' }}">
        <img src="{{ '/models/thumbnails/' | append: model.image | relative_url }}" alt="{{ model.title }}" />
        <p>{{ model.title }}</p>
      </a>
    </div>
  {% endif %}
{% endfor %}
</div>
