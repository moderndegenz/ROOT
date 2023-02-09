<html>
  <head>
    <script src="https://unpkg.com/@mrdoob/three.js@0.119.0/build/three.fiber.min.js"></script>


  </head>
  <body>
    <div id="container"></div>
    <script>
      // Create a Three.js Fiber renderer and add it to the page
      const renderer = new THREE.FiberRenderer();
      renderer.setSize( window.innerWidth, window.innerHeight );
      document.getElementById("container").appendChild( renderer.domElement );

      // Create a Three.js Fiber scene and camera
      const scene = new THREE.Scene();
      const camera = new THREE.PerspectiveCamera( 75, window.innerWidth / window.innerHeight, 0.1, 1000 );

      // Load a GLTF file and add it to the scene
      const loader = new THREE.GLTFLoader();
      loader.load( "model.gltf", function ( gltf ) {
        scene.add( gltf.scene );
      }, undefined, function ( error ) {
        console.error( error );
      } );

      // Render the scene
      renderer.render( scene, camera );
    </script>
  </body>
</html>
