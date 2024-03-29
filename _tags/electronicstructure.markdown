---
layout: page  
title: Electronic Structure
permalink: /ElectronicStructure/  
nav_order: 4 
---
<link rel="stylesheet" href="{{ '/assets/css/gallery.css' | relative_url }}">
# Electronic Structure

Electronic Structure governs reactivity and proeprties of molecules. 

<div class="gallery">
{% assign sorted_models = site.models | sort: 'model_id' %}
{% for model in sorted_models %} 
  {% if model.tags contains "ElectronicStructure" %}
    <div class="tile">
      <a href="{{ model.url | relative_url | append: '?tag=ElectronicStructure' }}">
        <img src="{{ '/models/thumbnails/' | append: model.image | relative_url }}" alt="{{ model.title }}" />
        <p>{{ model.title }}</p>
      </a>
    </div>
  {% endif %}
{% endfor %}
</div>
