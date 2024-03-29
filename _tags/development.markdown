---
layout: page  
title: Development
permalink: /Development/  
nav_order: 100 
---
<link rel="stylesheet" href="{{ '/assets/css/gallery.css' | relative_url }}">
# Development

This is a collection of coding examples and tests.

<div class="gallery">
{% assign sorted_models = site.models | sort: 'model_id' %}
{% for model in sorted_models %} 
  {% if model.tags contains "Development" %}
    <div class="tile">
      <a href="{{ model.url | relative_url | append: '?tag=Development' }}">
        <img src="{{ '/models/thumbnails/' | append: "dev.png" | relative_url }}" alt="{{ model.title }}" />
        <p>{{ model.title }}</p>
      </a>
    </div>
  {% endif %}
{% endfor %}
</div>
