---
# Feel free to add content and custom Front Matter to this file.
# To modify the layout, see https://jekyllrb.com/docs/themes/#overriding-theme-defaults

layout: home
---


# Welcome to 3Dify Chemistry!

## Interactive 3D Models for Organic Chemistry Education

Welcome to 3Dify Chemistry, where we offer a dynamic collection of interactive 3D models designed for enhancing organic chemistry education. Our aim is to provide educators and developers with ready-to-use, easy-to-integrate code for embedding these models into various educational platforms, be it your personal website or a Learning Management System (LMS) like Moodle.

Immerse yourself in our interactive molecular structures and bring a new dimension of engagement to your teaching and learning experience.

<div style="text-align: center; color: #5739ce;">
    <strong>Available Models:</strong>
    <div id="model-counter" style="font-size: 24px; font-weight: bold;">
        0000 models
    </div>
</div>

<script>
    // JavaScript code as above
</script>


[Start Exploring Our Collection](/All/)

<script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
<script src="https://3Dmol.org/build/3Dmol-min.js"></script>
<div style="text-align: center;">
<div id="M5" style="margin: auto; width: 400px; height: 400px;"></div>
</div>
<script>

  $(document).ready(function() {
    var viewer = $3Dmol.createViewer("M5", {defaultcolors: $3Dmol.elementColors.Jmol});
    var xyz = `5 \n
    * (null), Energy   -276.0000000  \n
    C    -0.337425  -0.848669   0.000000 -0.000000 -0.000001 -0.092796 \n
    H     0.031329  -1.891697   0.000000 -0.000002 0.000005 -0.016393 \n
    H     0.031348  -0.327166   0.903287 0.239015 0.338091 0.569209 \n
    H     0.031348  -0.327166  -0.903287 -0.239013 -0.338088  0.569203 \n
    H    -1.443716  -0.848657   0.000000 0.000001 -0.000000 -0.016294 \n
    `; 

    viewer.addModel(xyz, "xyz");
    viewer.vibrate(10, 0.35, true);
    viewer.setStyle({}, {stick: {radius: 0.15}, sphere: {scale: 0.25}});
    viewer.zoomTo();
    viewer.zoom(1.4);
    viewer.setBackgroundColor('#f9f9f9');
    viewer.rotate(80, {x: 1, y: 0, z: 0});
    viewer.setViewStyle({style: 'outline', color: 'black', width: 0.02});
    viewer.animate({loop: 'backandforth', interval: 100, reps: 0});
    viewer.render();

$("#M5").css("position", "relative");
  });

</script>

<script>
    document.addEventListener('DOMContentLoaded', function() {
        let counter = document.getElementById('model-counter');
        let count = {{ site.models.size }};
        let current = 0;
        let stepTime = Math.abs(Math.floor(1000 / count));

        let timer = setInterval(function() {
            current++;
            counter.innerHTML = current.toString().padStart(4, '0');
            if (current === count) {
                clearInterval(timer);
            }
        }, stepTime);
    });
</script>

