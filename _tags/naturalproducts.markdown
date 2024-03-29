---
layout: page  
title: Natural Products
permalink: /NaturalProducts/  
nav_order: 20
---
<link rel="stylesheet" href="{{ '/assets/css/gallery.css' | relative_url }}">
# Natural Products

Natural products are an important class of chemical compounds.

<div class="gallery">
{% assign sorted_models = site.models | sort: 'model_id' %}
{% for model in sorted_models %} 
  {% if model.tags contains "NaturalProducts" %}
    <div class="tile">
      <a href="{{ model.url | relative_url | append: '?tag=NaturalProducts' }}">
        <img src="{{ '/models/thumbnails/' | append: model.image | relative_url }}" alt="{{ model.title }}" />
        <p>{{ model.title }}</p>
      </a>
    </div>
  {% endif %}
{% endfor %}
</div>
