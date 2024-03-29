---
layout: page  
title: Vibrations
permalink: /Vibrations/  
nav_order: 3 
---
<link rel="stylesheet" href="{{ '/assets/css/gallery.css' | relative_url }}">
# Vibrations

This is a collection of vibrational modes.

<div class="gallery">
{% assign sorted_models = site.models | sort: 'model_id' %}
{% for model in sorted_models %} 
  {% if model.tags contains "Vibrations" %}
    <div class="tile">
      <a href="{{ model.url | relative_url | append: '?tag=Vibrations' }}">
        <img src="{{ '/models/thumbnails/' | append: model.image | relative_url }}" alt="{{ model.title }}" />
        <p>{{ model.title }}</p>
      </a>
    </div>
  {% endif %}
{% endfor %}
</div>
