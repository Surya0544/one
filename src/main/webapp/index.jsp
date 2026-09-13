<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8" />
  <meta name="viewport" content="width=device-width, initial-scale=1.0" />

  <title>Rohee ❤️</title>

  <style>
    * {
      margin: 0;
      padding: 0;
      box-sizing: border-box;
    }

    body {
      font-family: Arial, sans-serif;
      background: #111;
      color: white;
    }

    header {
      text-align: center;
      padding: 40px 20px;
    }

    header h1 {
      font-size: 42px;
      margin-bottom: 10px;
    }

    header p {
      color: #bbb;
      font-size: 18px;
    }

    .gallery {
      max-width: 1200px;
      margin: auto;
      padding: 20px;
      display: grid;
      grid-template-columns: repeat(auto-fit, minmax(250px, 1fr));
      gap: 20px;
    }

    .photo {
      overflow: hidden;
      border-radius: 18px;
      background: #222;
      box-shadow: 0 8px 25px rgba(0,0,0,0.5);
      transition: transform 0.3s ease;
    }

    .photo:hover {
      transform: scale(1.03);
    }

    .photo img {
      width: 100%;
      height: 350px;
      object-fit: cover;
      display: block;
    }

    footer {
      text-align: center;
      padding: 40px;
      color: #888;
    }
  </style>
</head>

<body>

  <header>
    <h1>Rohee ❤️</h1>
    <p>Beautiful memories</p>
  </header>

  <main class="gallery">

    <div class="photo">
      <img src="images/rohee1.jpg" alt="Rohee">
    </div>

    <div class="photo">
      <img src="images/rohee2.jpg" alt="Rohee">
    </div>

    <div class="photo">
      <img src="images/rohee3.jpg" alt="Rohee">
    </div>

    <div class="photo">
      <img src="images/rohee4.jpg" alt="Rohee">
    </div>

    <div class="photo">
      <img src="images/rohee5.jpg" alt="Rohee">
    </div>

    <div class="photo">
      <img src="images/rohee6.jpg" alt="Rohee">
    </div>

  </main>

  <footer>
    Made with ❤️ for Rohee
  </footer>

</body>
</html>
