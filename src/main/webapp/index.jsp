<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>LUMINA | modern e‑commerce</title>
  <!-- Google Font & simple icons via Font Awesome -->
  <link rel="preconnect" href="https://fonts.googleapis.com">
  <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
  <link href="https://fonts.googleapis.com/css2?family=Inter:opsz,wght@14..32,300;14..32,400;14..32,500;14..32,600;14..32,700&display=swap" rel="stylesheet">
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0-beta3/css/all.min.css">
  <style>
    * {
      margin: 0;
      padding: 0;
      box-sizing: border-box;
    }

    body {
      font-family: 'Inter', sans-serif;
      background: #f9fafc;
      color: #1e1e2f;
      line-height: 1.5;
      display: flex;
      flex-direction: column;
      min-height: 100vh;
    }

    /* main container */
    .app-wrapper {
      max-width: 1440px;
      margin: 0 auto;
      padding: 2rem 2rem 1rem;
      flex: 1;
      width: 100%;
    }

    /* header */
    .header {
      display: flex;
      justify-content: space-between;
      align-items: center;
      margin-bottom: 2.5rem;
      flex-wrap: wrap;
      gap: 1.5rem;
    }

    .logo {
      font-size: 1.8rem;
      font-weight: 700;
      letter-spacing: -0.02em;
      background: linear-gradient(135deg, #1e1e2f 0%, #3b3b5c 100%);
      -webkit-background-clip: text;
      -webkit-text-fill-color: transparent;
      background-clip: text;
      display: flex;
      align-items: center;
      gap: 0.4rem;
    }

    .logo i {
      background: linear-gradient(145deg, #ff7b2c, #ff5e1a);
      -webkit-background-clip: text;
      -webkit-text-fill-color: transparent;
      font-size: 2rem;
    }

    .nav-links {
      display: flex;
      gap: 2.5rem;
      font-weight: 500;
      color: #4a4a6a;
      font-size: 1rem;
    }

    .nav-links a {
      text-decoration: none;
      color: inherit;
      transition: color 0.2s;
    }

    .nav-links a:hover {
      color: #ff5e1a;
    }

    .header-actions {
      display: flex;
      gap: 1.8rem;
      align-items: center;
      color: #2b2b40;
      font-size: 1.3rem;
    }

    .header-actions i {
      cursor: pointer;
      transition: color 0.2s, transform 0.15s;
    }

    .header-actions i:hover {
      color: #ff5e1a;
      transform: translateY(-2px);
    }

    .cart-badge {
      position: relative;
    }

    .cart-badge::after {
      content: '3';
      position: absolute;
      top: -8px;
      right: -10px;
      background: #ff5e1a;
      color: white;
      font-size: 0.65rem;
      font-weight: 700;
      width: 18px;
      height: 18px;
      border-radius: 50%;
      display: flex;
      align-items: center;
      justify-content: center;
      border: 2px solid white;
    }

    /* main product grid */
    .product-main {
      display: grid;
      grid-template-columns: 1fr 1fr;
      gap: 3rem;
      background: #ffffff;
      border-radius: 2.5rem;
      box-shadow: 0 20px 40px -10px rgba(0, 0, 0, 0.08), 0 8px 20px -6px rgba(0, 0, 0, 0.02);
      padding: 2.5rem;
      margin-bottom: 3rem;
    }

    /* ---------- LEFT: GALLERY ---------- */
    .gallery {
      display: flex;
      flex-direction: column;
      gap: 1.5rem;
    }

    .main-image {
      background: #f2f5fc;
      border-radius: 2rem;
      overflow: hidden;
      aspect-ratio: 1 / 1;
      display: flex;
      align-items: center;
      justify-content: center;
      transition: background 0.3s;
      box-shadow: inset 0 0 0 1px rgba(0,0,0,0.02);
    }

    .main-image img {
      width: 100%;
      height: 100%;
      object-fit: cover;
      display: block;
      transition: transform 0.4s ease;
    }

    .main-image:hover img {
      transform: scale(1.02);
    }

    .thumbnails {
      display: flex;
      gap: 1rem;
      justify-content: center;
    }

    .thumb {
      width: 80px;
      height: 80px;
      border-radius: 1.2rem;
      background: #f2f5fc;
      cursor: pointer;
      border: 2px solid transparent;
      transition: border 0.15s, transform 0.15s;
      overflow: hidden;
      display: flex;
      align-items: center;
      justify-content: center;
      box-shadow: 0 4px 8px rgba(0,0,0,0.02);
    }

    .thumb img {
      width: 100%;
      height: 100%;
      object-fit: cover;
    }

    .thumb.active {
      border-color: #ff5e1a;
      transform: scale(1.02);
      box-shadow: 0 8px 14px -6px rgba(255, 94, 26, 0.25);
    }

    .thumb:hover {
      transform: translateY(-2px);
    }

    /* ---------- RIGHT: PRODUCT INFO ---------- */
    .product-info {
      display: flex;
      flex-direction: column;
      gap: 1.2rem;
    }

    .badge {
      display: inline-block;
      background: #ffece2;
      color: #b23e0a;
      font-size: 0.8rem;
      font-weight: 600;
      letter-spacing: 0.02em;
      padding: 0.35rem 1rem;
      border-radius: 30px;
      width: fit-content;
      text-transform: uppercase;
    }

    .product-title {
      font-size: 2.4rem;
      font-weight: 700;
      line-height: 1.2;
      letter-spacing: -0.02em;
      color: #12121c;
    }

    .rating {
      display: flex;
      align-items: center;
      gap: 0.75rem;
      color: #f5b342;
      font-size: 1rem;
      margin: 0.2rem 0 0.2rem;
    }

    .rating span {
      color: #6b6b85;
      font-weight: 400;
      margin-left: 0.4rem;
      font-size: 0.95rem;
    }

    .price-section {
      display: flex;
      align-items: center;
      gap: 1.2rem;
      margin: 0.5rem 0 0.2rem;
    }

    .current-price {
      font-size: 2rem;
      font-weight: 700;
      color: #1e1e2f;
      letter-spacing: -0.02em;
    }

    .old-price {
      font-size: 1.2rem;
      color: #9a9ab0;
      text-decoration: line-through;
      font-weight: 400;
    }

    .discount {
      background: #e6f7ed;
      color: #0e7b4b;
      padding: 0.3rem 0.9rem;
      border-radius: 30px;
      font-size: 0.85rem;
      font-weight: 600;
    }

    .description {
      color: #5a5a78;
      font-size: 1rem;
      line-height: 1.6;
      margin: 0.5rem 0 0.5rem;
    }

    .divider {
      height: 1px;
      background: #e9e9f0;
      margin: 0.6rem 0 1rem;
    }

    /* color selector */
    .selector-label {
      font-size: 0.95rem;
      font-weight: 600;
      text-transform: uppercase;
      letter-spacing: 0.03em;
      color: #3d3d60;
      margin-bottom: 0.7rem;
    }

    .color-options {
      display: flex;
      gap: 1rem;
      margin-bottom: 1rem;
    }

    .color-dot {
      width: 42px;
      height: 42px;
      border-radius: 50%;
      cursor: pointer;
      border: 2px solid transparent;
      transition: all 0.15s;
      box-shadow: 0 4px 10px rgba(0,0,0,0.04);
    }

    .color-dot.active {
      border-color: #ff5e1a;
      transform: scale(1.08);
      box-shadow: 0 8px 16px -4px rgba(255, 94, 26, 0.3);
    }

    .color-dot:hover {
      transform: scale(1.05);
    }

    /* size selector */
    .size-options {
      display: flex;
      gap: 0.8rem;
      flex-wrap: wrap;
      margin-bottom: 1.6rem;
    }

    .size-btn {
      background: white;
      border: 1.5px solid #e2e2ec;
      color: #2b2b40;
      font-weight: 500;
      font-size: 0.95rem;
      width: 60px;
      height: 48px;
      border-radius: 14px;
      display: flex;
      align-items: center;
      justify-content: center;
      cursor: pointer;
      transition: all 0.15s;
      box-shadow: 0 2px 4px rgba(0,0,0,0.02);
    }

    .size-btn:hover {
      border-color: #b0b0cc;
      background: #f8f8fe;
    }

    .size-btn.active {
      border-color: #ff5e1a;
      background: #fff7f2;
      color: #b23e0a;
      font-weight: 600;
      box-shadow: 0 6px 12px -6px rgba(255, 94, 26, 0.3);
    }

    /* quantity + CTA */
    .action-row {
      display: flex;
      gap: 1.2rem;
      align-items: center;
      margin: 0.8rem 0 1rem;
      flex-wrap: wrap;
    }

    .quantity-selector {
      display: flex;
      align-items: center;
      border: 1.5px solid #e2e2ec;
      border-radius: 60px;
      padding: 0.25rem;
      background: white;
      box-shadow: 0 2px 6px rgba(0,0,0,0.02);
    }

    .quantity-selector button {
      background: transparent;
      border: none;
      width: 44px;
      height: 44px;
      font-size: 1.3rem;
      font-weight: 500;
      color: #3d3d60;
      cursor: pointer;
      border-radius: 50%;
      transition: background 0.15s, color 0.15s;
      display: flex;
      align-items: center;
      justify-content: center;
    }

    .quantity-selector button:hover {
      background: #f1f1f8;
      color: #ff5e1a;
    }

    .quantity-selector span {
      font-weight: 600;
      width: 36px;
      text-align: center;
      font-size: 1.1rem;
    }

    .add-to-cart {
      background: #1e1e2f;
      border: none;
      color: white;
      font-weight: 600;
      font-size: 1.05rem;
      padding: 1rem 2.5rem;
      border-radius: 60px;
      display: flex;
      align-items: center;
      gap: 0.8rem;
      cursor: pointer;
      transition: background 0.2s, transform 0.15s, box-shadow 0.2s;
      box-shadow: 0 12px 20px -10px rgba(30, 30, 47, 0.3);
      flex: 1;
      justify-content: center;
      letter-spacing: 0.01em;
    }

    .add-to-cart i {
      font-size: 1.1rem;
    }

    .add-to-cart:hover {
      background: #2d2d45;
      transform: translateY(-2px);
      box-shadow: 0 20px 28px -12px rgba(30, 30, 47, 0.4);
    }

    .add-to-cart:active {
      transform: translateY(0);
    }

    .wishlist-btn {
      background: #ffffff;
      border: 1.5px solid #e2e2ec;
      width: 58px;
      height: 58px;
      border-radius: 50%;
      display: flex;
      align-items: center;
      justify-content: center;
      font-size: 1.5rem;
      color: #3d3d60;
      cursor: pointer;
      transition: all 0.15s;
      box-shadow: 0 6px 12px -6px rgba(0,0,0,0.05);
    }

    .wishlist-btn:hover {
      border-color: #ff5e1a;
      color: #ff5e1a;
      background: #fff7f2;
      transform: scale(1.03);
    }

    /* delivery info */
    .delivery-info {
      display: flex;
      gap: 1.5rem;
      margin-top: 1rem;
      font-size: 0.9rem;
      color: #5a5a78;
      flex-wrap: wrap;
    }

    .delivery-info i {
      color: #ff5e1a;
      margin-right: 0.5rem;
      width: 18px;
    }

    /* ----- extra recommendations (UI friendly) ----- */
    .recommendations {
      margin-top: 1rem;
      margin-bottom: 1.5rem;
    }

    .rec-title {
      font-size: 1.25rem;
      font-weight: 600;
      letter-spacing: -0.01em;
      margin-bottom: 1.5rem;
      display: flex;
      align-items: center;
      gap: 0.5rem;
      color: #1e1e2f;
    }

    .rec-title i {
      color: #ff5e1a;
    }

    .rec-grid {
      display: grid;
      grid-template-columns: repeat(auto-fit, minmax(170px, 1fr));
      gap: 1.8rem;
    }

    .rec-card {
      background: white;
      border-radius: 1.8rem;
      padding: 1.2rem 1rem 1.2rem;
      display: flex;
      flex-direction: column;
      align-items: center;
      text-align: center;
      box-shadow: 0 10px 20px -8px rgba(0, 0, 0, 0.04), 0 2px 6px rgba(0,0,0,0.02);
      transition: transform 0.2s, box-shadow 0.2s;
      cursor: pointer;
      border: 1px solid #f0f0f8;
    }

    .rec-card:hover {
      transform: translateY(-6px);
      box-shadow: 0 24px 32px -16px rgba(0, 0, 0, 0.1);
    }

    .rec-img {
      width: 110px;
      height: 110px;
      border-radius: 1.5rem;
      background: #f2f5fc;
      display: flex;
      align-items: center;
      justify-content: center;
      font-size: 3rem;
      color: #9a9ab0;
      margin-bottom: 1rem;
      overflow: hidden;
    }

    .rec-img img {
      width: 100%;
      height: 100%;
      object-fit: cover;
    }

    .rec-card h4 {
      font-weight: 600;
      font-size: 1rem;
      margin-bottom: 0.3rem;
      color: #1e1e2f;
    }

    .rec-price {
      font-weight: 700;
      color: #1e1e2f;
      margin-top: 0.2rem;
    }

    /* footer */
    .footer {
      text-align: center;
      padding: 2rem 0 1rem;
      color: #9a9ab0;
      font-size: 0.9rem;
      border-top: 1px solid #ececf4;
      margin-top: 1rem;
    }

    /* responsive */
    @media (max-width: 850px) {
      .product-main {
        grid-template-columns: 1fr;
        padding: 1.8rem;
        gap: 2rem;
      }

      .product-title {
        font-size: 2rem;
      }

      .app-wrapper {
        padding: 1.5rem 1.2rem;
      }

      .nav-links {
        display: none;
      }

      .header {
        gap: 1rem;
      }
    }

    @media (max-width: 480px) {
      .product-main {
        padding: 1.2rem;
        border-radius: 1.8rem;
      }

      .action-row {
        flex-direction: column;
        align-items: stretch;
      }

      .wishlist-btn {
        width: 100%;
        border-radius: 60px;
        height: 56px;
      }

      .thumbnails {
        gap: 0.6rem;
      }

      .thumb {
        width: 65px;
        height: 65px;
      }
    }
  </style>
</head>
<body>
  <div class="app-wrapper">
    <!-- Header -->
    <header class="header">
      <div class="logo">
        <i class="fas fa-circle"></i> LUMINA
      </div>
      <nav class="nav-links">
        <a href="#">New</a>
        <a href="#">Men</a>
        <a href="#">Women</a>
        <a href="#">Accessories</a>
        <a href="#">Sale</a>
      </nav>
      <div class="header-actions">
        <i class="fas fa-search"></i>
        <i class="far fa-heart"></i>
        <i class="fas fa-shopping-bag cart-badge"></i>
      </div>
    </header>

    <!-- Main product section -->
    <section class="product-main">
      <!-- LEFT: Gallery -->
      <div class="gallery">
        <div class="main-image">
          <img id="mainImage" src="https://images.unsplash.com/photo-1542291026-7eec264c27ff?w=800&q=80&auto=format&fit=crop" alt="Product image">
        </div>
        <div class="thumbnails">
          <div class="thumb active" data-img="https://images.unsplash.com/photo-1542291026-7eec264c27ff?w=800&q=80&auto=format&fit=crop">
            <img src="https://images.unsplash.com/photo-1542291026-7eec264c27ff?w=200&q=80&auto=format&fit=crop" alt="thumb1">
          </div>
          <div class="thumb" data-img="https://images.unsplash.com/photo-1600185365483-26d7a4cc7519?w=800&q=80&auto=format&fit=crop">
            <img src="https://images.unsplash.com/photo-1600185365483-26d7a4cc7519?w=200&q=80&auto=format&fit=crop" alt="thumb2">
          </div>
          <div class="thumb" data-img="https://images.unsplash.com/photo-1608231387042-66d1773070a5?w=800&q=80&auto=format&fit=crop">
            <img src="https://images.unsplash.com/photo-1608231387042-66d1773070a5?w=200&q=80&auto=format&fit=crop" alt="thumb3">
          </div>
          <div class="thumb" data-img="https://images.unsplash.com/photo-1595950653106-6c9ebd614d3a?w=800&q=80&auto=format&fit=crop">
            <img src="https://images.unsplash.com/photo-1595950653106-6c9ebd614d3a?w=200&q=80&auto=format&fit=crop" alt="thumb4">
          </div>
        </div>
      </div>

      <!-- RIGHT: Product info -->
      <div class="product-info">
        <span class="badge">Best seller</span>
        <h1 class="product-title">AeroStride<br>Max 270</h1>
        <div class="rating">
          <i class="fas fa-star"></i>
          <i class="fas fa-star"></i>
          <i class="fas fa-star"></i>
          <i class="fas fa-star"></i>
          <i class="fas fa-star-half-alt"></i>
          <span>4.8 (2.3k reviews)</span>
        </div>
        <div class="price-section">
          <span class="current-price">$149</span>
          <span class="old-price">$219</span>
          <span class="discount">-32%</span>
        </div>
        <p class="description">
          Experience next‑gen comfort. Breathable knit upper, responsive cushioning, and a sleek silhouette designed for all‑day wear.
        </p>
        <div class="divider"></div>

        <!-- Color selection -->
        <div class="selector-label">Color</div>
        <div class="color-options" id="colorOptions">
          <div class="color-dot active" style="background: #1e1e2f;" data-color="black"></div>
          <div class="color-dot" style="background: #d9d9e6;" data-color="white"></div>
          <div class="color-dot" style="background: #b23e0a;" data-color="orange"></div>
          <div class="color-dot" style="background: #2e5b3c;" data-color="green"></div>
        </div>

        <!-- Size selection -->
        <div class="selector-label">Size</div>
        <div class="size-options" id="sizeOptions">
          <div class="size-btn">7</div>
          <div class="size-btn">8</div>
          <div class="size-btn active">9</div>
          <div class="size-btn">10</div>
          <div class="size-btn">11</div>
          <div class="size-btn">12</div>
        </div>

        <!-- Quantity + CTA -->
        <div class="action-row">
          <div class="quantity-selector">
            <button id="decreaseQty"><i class="fas fa-minus"></i></button>
            <span id="qtyValue">1</span>
            <button id="increaseQty"><i class="fas fa-plus"></i></button>
          </div>
          <button class="add-to-cart" id="addToCartBtn">
            <i class="fas fa-shopping-bag"></i> Add to cart
          </button>
          <button class="wishlist-btn" id="wishlistBtn">
            <i class="far fa-heart"></i>
          </button>
        </div>

        <!-- Delivery / perks -->
        <div class="delivery-info">
          <div><i class="fas fa-truck"></i> Free shipping</div>
          <div><i class="fas fa-undo-alt"></i> 30‑day returns</div>
          <div><i class="fas fa-shield-alt"></i> 2‑year warranty</div>
        </div>
      </div>
    </section>

    <!-- Recommendations (UI friendly) -->
    <section class="recommendations">
      <div class="rec-title">
        <i class="fas fa-fire"></i> You may also like
      </div>
      <div class="rec-grid">
        <div class="rec-card">
          <div class="rec-img">
            <img src="https://images.unsplash.com/photo-1600185365926-3a2ce3cdb9eb?w=300&q=80&auto=format&fit=crop" alt="sneaker">
          </div>
          <h4>UrbanFlex</h4>
          <div class="rec-price">$129</div>
        </div>
        <div class="rec-card">
          <div class="rec-img">
            <img src="https://images.unsplash.com/photo-1608231387042-66d1773070a5?w=300&q=80&auto=format&fit=crop" alt="sneaker">
          </div>
          <h4>CloudRunner</h4>
          <div class="rec-price">$159</div>
        </div>
        <div class="rec-card">
          <div class="rec-img">
            <img src="https://images.unsplash.com/photo-1595950653106-6c9ebd614d3a?w=300&q=80&auto=format&fit=crop" alt="sneaker">
          </div>
          <h4>StreetPulse</h4>
          <div class="rec-price">$139</div>
        </div>
        <div class="rec-card">
          <div class="rec-img">
            <img src="https://images.unsplash.com/photo-1542291026-7eec264c27ff?w=300&q=80&auto=format&fit=crop" alt="sneaker">
          </div>
          <h4>AeroLite</h4>
          <div class="rec-price">$119</div>
        </div>
      </div>
    </section>

    <footer class="footer">
      <p>© 2025 LUMINA — designed for effortless shopping.</p>
    </footer>
  </div>

  <script>
    (function(){
      // ----- GALLERY THUMBNAIL SWITCH -----
      const mainImg = document.getElementById('mainImage');
      const thumbs = document.querySelectorAll('.thumb');

      thumbs.forEach(thumb => {
        thumb.addEventListener('click', function() {
          // update active class
          thumbs.forEach(t => t.classList.remove('active'));
          this.classList.add('active');
          // update main image
          const newSrc = this.dataset.img;
          if (newSrc) mainImg.src = newSrc;
        });
      });

      // ----- COLOR SELECTION -----
      const colorDots = document.querySelectorAll('.color-dot');
      colorDots.forEach(dot => {
        dot.addEventListener('click', function() {
          colorDots.forEach(d => d.classList.remove('active'));
          this.classList.add('active');
        });
      });

      // ----- SIZE SELECTION -----
      const sizeBtns = document.querySelectorAll('.size-btn');
      sizeBtns.forEach(btn => {
        btn.addEventListener('click', function() {
          sizeBtns.forEach(b => b.classList.remove('active'));
          this.classList.add('active');
        });
      });

      // ----- QUANTITY -----
      let qty = 1;
      const qtySpan = document.getElementById('qtyValue');
      const decreaseBtn = document.getElementById('decreaseQty');
      const increaseBtn = document.getElementById('increaseQty');

      decreaseBtn.addEventListener('click', function() {
        if (qty > 1) {
          qty--;
          qtySpan.textContent = qty;
        }
      });

      increaseBtn.addEventListener('click', function() {
        qty++;
        qtySpan.textContent = qty;
      });

      // ----- ADD TO CART (UI feedback) -----
      const addBtn = document.getElementById('addToCartBtn');
      addBtn.addEventListener('click', function() {
        const originalText = addBtn.innerHTML;
        addBtn.innerHTML = '<i class="fas fa-check"></i> Added!';
        addBtn.style.background = '#0e7b4b';
        setTimeout(() => {
          addBtn.innerHTML = originalText;
          addBtn.style.background = '#1e1e2f';
        }, 1500);
        // optional: you could also update cart badge
      });

      // ----- WISHLIST toggle (UI feedback) -----
      const wishBtn = document.getElementById('wishlistBtn');
      const wishIcon = wishBtn.querySelector('i');
      let wishlisted = false;
      wishBtn.addEventListener('click', function() {
        wishlisted = !wishlisted;
        if (wishlisted) {
          wishIcon.classList.remove('far');
          wishIcon.classList.add('fas');
          wishIcon.style.color = '#ff5e1a';
        } else {
          wishIcon.classList.remove('fas');
          wishIcon.classList.add('far');
          wishIcon.style.color = '#3d3d60';
        }
      });

      // (optional) set initial qty display
      qtySpan.textContent = qty;
    })();
  </script>
</body>
</html>
