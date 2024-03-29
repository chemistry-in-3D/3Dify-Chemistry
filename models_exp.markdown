---
layout: page
title: Models
permalink: /Model_overview/
nav_order: 1
---

# 3D Molecular Models Code Collection

Welcome to our collection of 3D molecular models, a resource specifically designed for educators, researchers, and developers. Here, you'll find a variety of molecular models implemented using 3Dmol.js, HTML5, and other libraries like Dygraph, along with examples from JSmol. These models are ready for integration into educational websites, Learning Management Systems (LMS) like Moodle, and other digital learning environments.

## About the Collection

Our collection is more than just a gallery of molecular structures; it's a repository of interactive, educational tools. Each model is accompanied by the source code for easy implementation in your own projects.

At present, there are {{ site.models.size }} models available. The following graph illustrates the growth of model numbers over time:

<script src="https://cdn.plot.ly/plotly-latest.min.js"></script><div id="modelGraph" style="width: 100%; padding-bottom: 50%; position: relative;"></div>

### Features

- **Ready-to-Use Code**: Each model comes with fully-functional HTML/JavaScript code, ready to be embedded in your platform.
- **Interactive and Engaging**: Leveraging 3Dmol.js and HTML5, the models offer an interactive experience, making learning more engaging.
- **Educational Focus**: Designed with education in mind, these models can be used as teaching aids in various scientific subjects.

### Supported Technologies

- **3Dmol.js and JSmol**: Explore models in different formats, compatible with popular molecular visualization tools.
- **Dygraph and Plotly Integration**: Some models include interactive graphs for a comprehensive educational experience.
- **HTML5 and JavaScript**: Easy integration into modern web platforms and LMS systems.

## How to Use the Models

1. **Explore the Collection**: Browse through our models to find the one that fits your educational needs.
2. **Copy the Code**: Each model page includes a section with the source code. Simply copy and paste this into your project.
3. **Customize**: You can customize the code as needed to fit the context of your lesson or platform.
4. **Embed in Your Platform**: Integrate the models into websites, online courses, or any digital learning tool.

## Contribute to the Collection

Are you a developer or educator with models to share? We encourage you to contribute to our growing collection. Your models can help enhance science education globally.

- **Submit Models**: Share your interactive molecular models and related code.
- **Suggest Improvements**: Provide feedback or suggest new features to expand the collection's capabilities.

[Learn more about contributing](/Contribute/)

## Start Exploring

Dive into our collection and discover the potential of interactive molecular models in education.

[Explore Models](/All/)

---

*Note: We regularly update our collection with new models and features. Stay tuned for the latest additions.*

<script>
let modelDates = [
  {% for model in site.models %}
    "{{ model.initial_date }}",
  {% endfor %}
];


let convertedDates = modelDates.map(function(date) {
  let parts = date.split('.');
  return `${parts[2]}-${parts[1]}-${parts[0]}`;
});
convertedDates.sort();


let cumulativeCounts = {"2024-01-01": 0};
let total = 0;
convertedDates.forEach(function(date) {
  if (!cumulativeCounts.hasOwnProperty(date)) {
    total++;
    cumulativeCounts[date] = total;
  } else {
    cumulativeCounts[date]++;
    total = cumulativeCounts[date];
  }
});


let today = new Date();
let tomorrow = new Date(today);
tomorrow.setDate(tomorrow.getDate() + 1);
let dateFormat = tomorrow.toISOString().split('T')[0];
cumulativeCounts[dateFormat] = total;


let plotData = {
  x: Object.keys(cumulativeCounts),
  y: Object.values(cumulativeCounts),
  type: 'scatter',
  mode: 'lines',
  fill: 'tozeroy',
  line: { shape: 'hv', color: '#5739ce' }
};


let layout = {
  xaxis: {
    type: 'date',
    range: ["2024-01-05", dateFormat],
	showgrid: false,
	fixedrange: true,
  },
  yaxis: {
    title: 'Total Number of Models',
    rangemode: 'tozero',
	fixedrange: true,
  },
  hovermode: false,
  displayModeBar: false,
  margin: {  
    l: 50,   
    r: 50, 
    t: 15,  
    b: 35   
  }

};

let config = {
  displayModeBar: false,  
  displaylogo: false,   
  modeBarButtonsToRemove: ['toImage'],
  modeBarButtonsToAdd: [],             
  responsive: true
};

Plotly.newPlot('modelGraph', [plotData], layout, config);
</script>