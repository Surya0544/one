<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Bella Cucina · Restaurant App</title>
    <!-- Google Fonts & Font Awesome for icons -->
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Inter:opsz,wght@14..32,400;14..32,500;14..32,600;14..32,700&family=Playfair+Display:ital,wght@0,500;0,600;1,500&display=swap" rel="stylesheet">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0-beta3/css/all.min.css">
    <style>
        * {
            margin: 0;
            padding: 0;
            box-sizing: border-box;
        }

        body {
            background: #fbf9f4;
            font-family: 'Inter', sans-serif;
            color: #2e2e2e;
            line-height: 1.5;
            padding: 2rem 1.5rem;
        }

        .app-wrapper {
            max-width: 1280px;
            margin: 0 auto;
            background: white;
            border-radius: 48px;
            box-shadow: 0 25px 50px -12px rgba(0, 0, 0, 0.15);
            overflow: hidden;
            border: 1px solid #f0eae1;
        }

        /* header / nav */
        .top-bar {
            display: flex;
            justify-content: space-between;
            align-items: center;
            padding: 1.5rem 2.5rem;
            background: white;
            border-bottom: 1px solid #ede8df;
        }

        .logo {
            display: flex;
            align-items: center;
            gap: 10px;
        }

        .logo i {
            font-size: 2rem;
            color: #c1743c;
        }

        .logo h1 {
            font-family: 'Playfair Display', serif;
            font-size: 1.9rem;
            font-weight: 600;
            letter-spacing: -0.5px;
            color: #1e1e1e;
        }

        .logo span {
            color: #c1743c;
            font-style: italic;
            font-weight: 500;
        }

        .nav-links {
            display: flex;
            gap: 2.5rem;
            align-items: center;
        }

        .nav-links a {
            text-decoration: none;
            color: #3f3a34;
            font-weight: 500;
            font-size: 1rem;
            transition: color 0.2s;
        }

        .nav-links a:hover,
        .nav-links a.active {
            color: #c1743c;
        }

        .btn-outline {
            border: 1.5px solid #c1743c;
            background: transparent;
            padding: 0.6rem 1.4rem;
            border-radius: 40px;
            font-weight: 600;
            color: #c1743c;
            transition: 0.2s ease;
            cursor: pointer;
            font-size: 0.95rem;
        }

        .btn-outline:hover {
            background: #c1743c;
            color: white;
        }

        /* hero section */
        .hero {
            display: flex;
            flex-wrap: wrap;
            align-items: center;
            gap: 2rem;
            padding: 3rem 3rem 2.5rem 3rem;
            background: #fefcf9;
            border-bottom: 1px solid #ede8df;
        }

        .hero-text {
            flex: 1 1 300px;
        }

        .hero-text .badge {
            display: inline-block;
            background: #f3e7dd;
            color: #a5551c;
            font-size: 0.85rem;
            font-weight: 600;
            padding: 0.35rem 1.2rem;
            border-radius: 30px;
            margin-bottom: 1.2rem;
            letter-spacing: 0.3px;
        }

        .hero-text h2 {
            font-family: 'Playfair Display', serif;
            font-size: 3.2rem;
            line-height: 1.2;
            font-weight: 600;
            color: #1a1a1a;
            margin-bottom: 1rem;
        }

        .hero-text h2 i {
            color: #c1743c;
            font-style: normal;
        }

        .hero-text p {
            font-size: 1.1rem;
            color: #5b554e;
            max-width: 500px;
            margin-bottom: 2rem;
        }

        .hero-actions {
            display: flex;
            gap: 1rem;
            flex-wrap: wrap;
        }

        .btn-primary {
            background: #c1743c;
            color: white;
            border: none;
            padding: 0.9rem 2rem;
            border-radius: 40px;
            font-weight: 600;
            font-size: 1rem;
            display: inline-flex;
            align-items: center;
            gap: 8px;
            cursor: pointer;
            transition: 0.2s;
            box-shadow: 0 8px 18px -6px rgba(193, 116, 60, 0.4);
        }

        .btn-primary:hover {
            background: #a85f2e;
            transform: translateY(-2px);
        }

        .btn-secondary {
            background: white;
            border: 1.5px solid #ddd6ce;
            color: #3f3a34;
            padding: 0.9rem 2rem;
            border-radius: 40px;
            font-weight: 600;
            font-size: 1rem;
            display: inline-flex;
            align-items: center;
            gap: 8px;
            cursor: pointer;
            transition: 0.2s;
        }

        .btn-secondary:hover {
            background: #f5f0ea;
            border-color: #c1743c;
        }

        .hero-image {
            flex: 0 1 340px;
            display: flex;
            justify-content: center;
        }

        .hero-image img {
            width: 100%;
            max-width: 340px;
            border-radius: 40px;
            box-shadow: 0 20px 30px -10px rgba(0, 0, 0, 0.15);
            object-fit: cover;
            aspect-ratio: 1/1;
        }

        /* features row */
        .features {
            display: flex;
            flex-wrap: wrap;
            justify-content: space-between;
            gap: 1.5rem;
            padding: 2.5rem 3rem;
            background: white;
            border-bottom: 1px solid #ede8df;
        }

        .feature-item {
            display: flex;
            align-items: center;
            gap: 1rem;
        }

        .feature-icon {
            width: 52px;
            height: 52px;
            background: #f9efe7;
            border-radius: 18px;
            display: flex;
            align-items: center;
            justify-content: center;
            color: #c1743c;
            font-size: 1.6rem;
        }

        .feature-text h4 {
            font-weight: 700;
            font-size: 1.1rem;
            margin-bottom: 2px;
        }

        .feature-text p {
            color: #7a736b;
            font-size: 0.9rem;
        }

        /* menu section */
        .section-title {
            display: flex;
            justify-content: space-between;
            align-items: flex-end;
            padding: 2.5rem 3rem 1rem 3rem;
        }

        .section-title h3 {
            font-family: 'Playfair Display', serif;
            font-size: 2.2rem;
            font-weight: 600;
            color: #1e1e1e;
        }

        .section-title a {
            color: #c1743c;
            font-weight: 600;
            text-decoration: none;
            border-bottom: 1.5px solid transparent;
            transition: 0.2s;
        }

        .section-title a:hover {
            border-bottom-color: #c1743c;
        }

        .menu-grid {
            display: grid;
            grid-template-columns: repeat(auto-fit, minmax(220px, 1fr));
            gap: 1.8rem;
            padding: 1rem 3rem 3rem 3rem;
        }

        .menu-card {
            background: #ffffff;
            border-radius: 28px;
            border: 1px solid #efe9e2;
            overflow: hidden;
            transition: all 0.25s ease;
            box-shadow: 0 4px 10px rgba(0, 0, 0, 0.02);
        }

        .menu-card:hover {
            transform: translateY(-6px);
            box-shadow: 0 20px 30px -12px rgba(0, 0, 0, 0.12);
            border-color: #e0d5ca;
        }

        .menu-img {
            height: 160px;
            background-size: cover;
            background-position: center;
            position: relative;
        }

        .menu-img .price-tag {
            position: absolute;
            bottom: 12px;
            right: 12px;
            background: white;
            padding: 0.35rem 1rem;
            border-radius: 30px;
            font-weight: 700;
            color: #1e1e1e;
            font-size: 0.95rem;
            box-shadow: 0 4px 8px rgba(0,0,0,0.08);
        }

        .menu-info {
            padding: 1.3rem 1.2rem 1.5rem;
        }

        .menu-info h4 {
            font-weight: 700;
            font-size: 1.2rem;
            margin-bottom: 0.4rem;
        }

        .menu-info p {
            color: #7a736b;
            font-size: 0.9rem;
            margin-bottom: 1rem;
            display: -webkit-box;
            -webkit-line-clamp: 2;
            -webkit-box-orient: vertical;
            overflow: hidden;
        }

        .menu-footer {
            display: flex;
            justify-content: space-between;
            align-items: center;
        }

        .rating i {
            color: #f5b342;
            font-size: 0.85rem;
            margin-right: 2px;
        }

        .rating span {
            font-size: 0.85rem;
            color: #5b554e;
            margin-left: 5px;
        }

        .add-btn {
            background: #f9efe7;
            border: none;
            width: 38px;
            height: 38px;
            border-radius: 12px;
            color: #c1743c;
            font-size: 1.1rem;
            display: flex;
            align-items: center;
            justify-content: center;
            cursor: pointer;
            transition: 0.2s;
        }

        .add-btn:hover {
            background: #c1743c;
            color: white;
        }

        /* reservation / CTA */
        .reservation-card {
            margin: 0 3rem 3rem 3rem;
            background: linear-gradient(135deg, #2b2b2b 0%, #1f1f1f 100%);
            border-radius: 36px;
            padding: 2.8rem 3rem;
            display: flex;
            flex-wrap: wrap;
            align-items: center;
            justify-content: space-between;
            color: white;
            gap: 2rem;
        }

        .reservation-text h3 {
            font-family: 'Playfair Display', serif;
            font-size: 2rem;
            font-weight: 500;
            margin-bottom: 0.6rem;
        }

        .reservation-text p {
            color: #b9b1a8;
            font-size: 1rem;
            max-width: 400px;
        }

        .reservation-form {
            display: flex;
            flex-wrap: wrap;
            gap: 0.8rem;
            align-items: center;
        }

        .reservation-form input {
            padding: 0.9rem 1.5rem;
            border-radius: 40px;
            border: none;
            background: rgba(255, 255, 255, 0.1);
            color: white;
            font-family: 'Inter', sans-serif;
            font-size: 0.95rem;
            outline: 1px solid rgba(255, 255, 255, 0.2);
            min-width: 200px;
        }

        .reservation-form input::placeholder {
            color: #b9b1a8;
        }

        .reservation-form button {
            background: #c1743c;
            color: white;
            border: none;
            padding: 0.9rem 2rem;
            border-radius: 40px;
            font-weight: 600;
            font-size: 0.95rem;
            cursor: pointer;
            transition: 0.2s;
            white-space: nowrap;
        }

        .reservation-form button:hover {
            background: #d18a54;
        }

        /* footer */
        .footer {
            display: flex;
            flex-wrap: wrap;
            justify-content: space-between;
            align-items: center;
            padding: 1.8rem 3rem;
            border-top: 1px solid #ede8df;
            background: #fefcf9;
            color: #5b554e;
            font-size: 0.9rem;
        }

        .social i {
            font-size: 1.3rem;
            margin-left: 1.2rem;
            color: #9b9288;
            transition: 0.2s;
            cursor: pointer;
        }

        .social i:hover {
            color: #c1743c;
        }

        /* responsive */
        @media (max-width: 800px) {
            body { padding: 1rem; }
            .top-bar { flex-direction: column; gap: 1rem; padding: 1.5rem; }
            .nav-links { gap: 1.5rem; flex-wrap: wrap; justify-content: center; }
            .hero { padding: 2rem 1.5rem; }
            .hero-text h2 { font-size: 2.4rem; }
            .features { padding: 2rem 1.5rem; justify-content: center; }
            .section-title { padding: 2rem 1.5rem 0.5rem; }
            .menu-grid { padding: 1rem 1.5rem 2rem; }
            .reservation-card { margin: 0 1.5rem 2rem; padding: 2rem 1.8rem; }
            .footer { padding: 1.5rem; flex-direction: column; gap: 1rem; text-align: center; }
            .social i { margin: 0 0.6rem; }
        }

        @media (max-width: 480px) {
            .logo h1 { font-size: 1.5rem; }
            .hero-text h2 { font-size: 2rem; }
            .btn-primary, .btn-secondary { padding: 0.8rem 1.4rem; font-size: 0.9rem; }
            .reservation-form input { min-width: 100%; }
        }
    </style>
</head>
<body>
    <div class="app-wrapper">
        <!-- Top navigation -->
        <header class="top-bar">
            <div class="logo">
                <i class="fas fa-utensils"></i>
                <h1>Bella <span>Cucina</span></h1>
            </div>
            <div class="nav-links">
                <a href="#" class="active">Home</a>
                <a href="#">Menu</a>
                <a href="#">Reservations</a>
                <a href="#">About</a>
                <button class="btn-outline"><i class="fas fa-user" style="margin-right: 6px;"></i>Sign in</button>
            </div>
        </header>

        <!-- Hero section -->
        <section class="hero">
            <div class="hero-text">
                <div class="badge"><i class="fas fa-star" style="margin-right: 6px; color: #c1743c;"></i> Authentic Italian</div>
                <h2>Where every meal feels like <i>home</i></h2>
                <p>Handcrafted pasta, wood-fired pizza, and fresh ingredients — delivered to your door or ready for pickup.</p>
                <div class="hero-actions">
                    <button class="btn-primary"><i class="fas fa-bag-shopping"></i> Order now</button>
                    <button class="btn-secondary"><i class="fas fa-calendar-check"></i> Book a table</button>
                </div>
            </div>
            <div class="hero-image">
                <!-- Beautiful food image from Unsplash (stable, restaurant dish) -->
                <img src="https://images.unsplash.com/photo-1546069901-ba9599a7e63c?w=600&auto=format&fit=crop&q=80" alt="delicious pasta dish">
            </div>
        </section>

        <!-- Feature highlights -->
        <div class="features">
            <div class="feature-item">
                <div class="feature-icon"><i class="fas fa-truck-fast"></i></div>
                <div class="feature-text">
                    <h4>Fast delivery</h4>
                    <p>Within 30 min</p>
                </div>
            </div>
            <div class="feature-item">
                <div class="feature-icon"><i class="fas fa-seedling"></i></div>
                <div class="feature-text">
                    <h4>Fresh ingredients</h4>
                    <p>Organic & local</p>
                </div>
            </div>
            <div class="feature-item">
                <div class="feature-icon"><i class="fas fa-mobile-screen"></i></div>
                <div class="feature-text">
                    <h4>Easy app</h4>
                    <p>Order in seconds</p>
                </div>
            </div>
            <div class="feature-item">
                <div class="feature-icon"><i class="fas fa-credit-card"></i></div>
                <div class="feature-text">
                    <h4>Secure payment</h4>
                    <p>Multiple options</p>
                </div>
            </div>
        </div>

        <!-- Menu highlights -->
        <div class="section-title">
            <h3>Chef's favorites</h3>
            <a href="#">See full menu <i class="fas fa-arrow-right" style="font-size: 0.8rem;"></i></a>
        </div>

        <div class="menu-grid">
            <!-- Card 1 -->
            <div class="menu-card">
                <div class="menu-img" style="background-image: url('https://images.unsplash.com/photo-1551183053-bf91a1d81141?w=600&auto=format&fit=crop&q=80');">
                    <span class="price-tag">$14.90</span>
                </div>
                <div class="menu-info">
                    <h4>Truffle Tagliatelle</h4>
                    <p>Egg pasta, black truffle, parmesan cream.</p>
                    <div class="menu-footer">
                        <div class="rating">
                            <i class="fas fa-star"></i><i class="fas fa-star"></i><i class="fas fa-star"></i><i class="fas fa-star"></i><i class="fas fa-star-half-alt"></i>
                            <span>4.8</span>
                        </div>
                        <button class="add-btn"><i class="fas fa-plus"></i></button>
                    </div>
                </div>
            </div>
            <!-- Card 2 -->
            <div class="menu-card">
                <div class="menu-img" style="background-image: url('https://images.unsplash.com/photo-1574071318508-1cdbab80d002?w=600&auto=format&fit=crop&q=80');">
                    <span class="price-tag">$16.50</span>
                </div>
                <div class="menu-info">
                    <h4>Margherita Pizza</h4>
                    <p>San Marzano tomato, fior di latte, basil.</p>
                    <div class="menu-footer">
                        <div class="rating">
                            <i class="fas fa-star"></i><i class="fas fa-star"></i><i class="fas fa-star"></i><i class="fas fa-star"></i><i class="fas fa-star"></i>
                            <span>4.9</span>
                        </div>
                        <button class="add-btn"><i class="fas fa-plus"></i></button>
                    </div>
                </div>
            </div>
            <!-- Card 3 -->
            <div class="menu-card">
                <div class="menu-img" style="background-image: url('https://images.unsplash.com/photo-1565299624946-b28f40a0ae38?w=600&auto=format&fit=crop&q=80');">
                    <span class="price-tag">$11.20</span>
                </div>
                <div class="menu-info">
                    <h4>Garlic Focaccia</h4>
                    <p>Rosemary, sea salt, extra virgin olive oil.</p>
                    <div class="menu-footer">
                        <div class="rating">
                            <i class="fas fa-star"></i><i class="fas fa-star"></i><i class="fas fa-star"></i><i class="fas fa-star"></i><i class="far fa-star"></i>
                            <span>4.5</span>
                        </div>
                        <button class="add-btn"><i class="fas fa-plus"></i></button>
                    </div>
                </div>
            </div>
            <!-- Card 4 -->
            <div class="menu-card">
                <div class="menu-img" style="background-image: url('https://images.unsplash.com/photo-1551024506-0bccd828d307?w=600&auto=format&fit=crop&q=80');">
                    <span class="price-tag">$8.90</span>
                </div>
                <div class="menu-info">
                    <h4>Tiramisu</h4>
                    <p>Mascarpone, espresso, cocoa, ladyfingers.</p>
                    <div class="menu-footer">
                        <div class="rating">
                            <i class="fas fa-star"></i><i class="fas fa-star"></i><i class="fas fa-star"></i><i class="fas fa-star"></i><i class="fas fa-star"></i>
                            <span>4.9</span>
                        </div>
                        <button class="add-btn"><i class="fas fa-plus"></i></button>
                    </div>
                </div>
            </div>
        </div>

        <!-- Reservation banner -->
        <div class="reservation-card">
            <div class="reservation-text">
                <h3>Reserve your table</h3>
                <p>Skip the wait — book in advance for lunch or dinner.</p>
            </div>
            <div class="reservation-form">
                <input type="text" placeholder="Your name">
                <input type="date" placeholder="Date">
                <button>Book now</button>
            </div>
        </div>

        <!-- Footer -->
        <footer class="footer">
            <div>© 2025 Bella Cucina · All rights reserved.</div>
            <div class="social">
                <i class="fab fa-instagram"></i>
                <i class="fab fa-facebook-f"></i>
                <i class="fab fa-x-twitter"></i>
                <i class="fab fa-tiktok"></i>
            </div>
        </footer>
    </div>
</body>
</html>
