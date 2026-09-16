<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Bella Cucina · Restaurant App</title>
    <!-- Google Fonts & Font Awesome -->
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Inter:opsz,wght@14..32,400;14..32,500;14..32,600;14..32,700;14..32,800&family=Playfair+Display:ital,wght@0,500;0,600;0,700;1,500&display=swap" rel="stylesheet">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0-beta3/css/all.min.css">
    <style>
        * {
            margin: 0;
            padding: 0;
            box-sizing: border-box;
        }

        :root {
            --primary: #e07a3a;
            --primary-dark: #c45f1f;
            --primary-light: #fdf0e8;
            --secondary: #2b2b2b;
            --text-dark: #1e1e1e;
            --text-soft: #6b6259;
            --bg-warm: #fdfaf7;
            --card-bg: #ffffff;
            --border-light: #f0e9e2;
            --shadow-sm: 0 4px 12px rgba(0, 0, 0, 0.04);
            --shadow-md: 0 12px 28px -8px rgba(0, 0, 0, 0.1);
            --shadow-lg: 0 24px 48px -16px rgba(0, 0, 0, 0.18);
            --radius-sm: 16px;
            --radius-md: 24px;
            --radius-lg: 36px;
            --radius-xl: 48px;
        }

        body {
            background: #f3ede8;
            font-family: 'Inter', -apple-system, BlinkMacSystemFont, sans-serif;
            color: var(--text-dark);
            line-height: 1.6;
            padding: 1.8rem 1.5rem;
            -webkit-font-smoothing: antialiased;
        }

        /* App shell */
        .app-wrapper {
            max-width: 1300px;
            margin: 0 auto;
            background: var(--card-bg);
            border-radius: var(--radius-xl);
            box-shadow: var(--shadow-lg);
            overflow: hidden;
            border: 1px solid rgba(255, 255, 255, 0.6);
            transition: box-shadow 0.3s ease;
        }

        /* Header */
        .top-bar {
            display: flex;
            justify-content: space-between;
            align-items: center;
            padding: 1.2rem 2.8rem;
            background: rgba(255, 255, 255, 0.92);
            backdrop-filter: blur(12px);
            border-bottom: 1px solid var(--border-light);
            position: sticky;
            top: 0;
            z-index: 10;
        }

        .logo {
            display: flex;
            align-items: center;
            gap: 12px;
            cursor: default;
        }

        .logo i {
            font-size: 2rem;
            color: var(--primary);
            background: var(--primary-light);
            padding: 10px;
            border-radius: 14px;
            box-shadow: 0 6px 14px -8px rgba(224, 122, 58, 0.3);
        }

        .logo h1 {
            font-family: 'Playfair Display', serif;
            font-size: 1.8rem;
            font-weight: 600;
            letter-spacing: -0.3px;
            color: var(--text-dark);
        }

        .logo span {
            color: var(--primary);
            font-style: italic;
            font-weight: 500;
        }

        .nav-links {
            display: flex;
            gap: 2.2rem;
            align-items: center;
        }

        .nav-links a {
            text-decoration: none;
            color: var(--text-soft);
            font-weight: 500;
            font-size: 1rem;
            padding: 0.4rem 0;
            transition: color 0.2s, border-bottom 0.2s;
            border-bottom: 2px solid transparent;
            position: relative;
        }

        .nav-links a:hover,
        .nav-links a.active {
            color: var(--primary);
            border-bottom-color: var(--primary);
        }

        .btn-outline {
            border: 1.8px solid var(--primary);
            background: transparent;
            padding: 0.55rem 1.6rem;
            border-radius: 40px;
            font-weight: 600;
            color: var(--primary);
            font-size: 0.95rem;
            cursor: pointer;
            transition: all 0.2s ease;
            display: inline-flex;
            align-items: center;
            gap: 6px;
            white-space: nowrap;
        }

        .btn-outline:hover {
            background: var(--primary);
            color: white;
            transform: translateY(-1px);
            box-shadow: 0 8px 16px -8px rgba(224, 122, 58, 0.4);
        }

        /* Hero */
        .hero {
            display: flex;
            flex-wrap: wrap;
            align-items: center;
            gap: 3rem;
            padding: 3rem 3rem 2.8rem 3rem;
            background: linear-gradient(145deg, #fefcf9 0%, #fdf8f3 100%);
            border-bottom: 1px solid var(--border-light);
        }

        .hero-text {
            flex: 1 1 380px;
        }

        .hero-text .badge {
            display: inline-block;
            background: #fcece1;
            color: #b85d1c;
            font-size: 0.85rem;
            font-weight: 700;
            padding: 0.4rem 1.2rem;
            border-radius: 30px;
            margin-bottom: 1.4rem;
            letter-spacing: 0.3px;
            text-transform: uppercase;
            box-shadow: 0 2px 8px rgba(224, 122, 58, 0.08);
        }

        .hero-text h2 {
            font-family: 'Playfair Display', serif;
            font-size: 3.5rem;
            line-height: 1.15;
            font-weight: 600;
            color: #1a1a1a;
            margin-bottom: 1.2rem;
            letter-spacing: -0.5px;
        }

        .hero-text h2 i {
            color: var(--primary);
            font-style: italic;
            font-weight: 500;
            display: inline-block;
        }

        .hero-text p {
            font-size: 1.15rem;
            color: #5f5851;
            max-width: 480px;
            margin-bottom: 2rem;
            line-height: 1.7;
        }

        .hero-actions {
            display: flex;
            gap: 1rem;
            flex-wrap: wrap;
            align-items: center;
        }

        .btn-primary {
            background: var(--primary);
            color: white;
            border: none;
            padding: 1rem 2.4rem;
            border-radius: 50px;
            font-weight: 700;
            font-size: 1rem;
            display: inline-flex;
            align-items: center;
            gap: 10px;
            cursor: pointer;
            transition: all 0.25s ease;
            box-shadow: 0 12px 24px -10px rgba(224, 122, 58, 0.5);
            letter-spacing: 0.2px;
        }

        .btn-primary:hover {
            background: var(--primary-dark);
            transform: translateY(-3px);
            box-shadow: 0 20px 28px -12px rgba(224, 122, 58, 0.6);
        }

        .btn-secondary {
            background: white;
            border: 1.8px solid #ddd3c9;
            color: #3f3a34;
            padding: 1rem 2.4rem;
            border-radius: 50px;
            font-weight: 600;
            font-size: 1rem;
            display: inline-flex;
            align-items: center;
            gap: 10px;
            cursor: pointer;
            transition: all 0.25s ease;
            box-shadow: var(--shadow-sm);
        }

        .btn-secondary:hover {
            background: #faf7f4;
            border-color: var(--primary);
            transform: translateY(-3px);
            box-shadow: var(--shadow-md);
        }

        .hero-image {
            flex: 0 1 380px;
            display: flex;
            justify-content: center;
            align-items: center;
        }

        .hero-image img {
            width: 100%;
            max-width: 380px;
            border-radius: 50% 30% 50% 30% / 40% 50% 40% 50%;
            box-shadow: 0 30px 40px -20px rgba(0, 0, 0, 0.25);
            object-fit: cover;
            aspect-ratio: 1/1;
            border: 4px solid white;
            transition: transform 0.4s ease;
        }

        .hero-image img:hover {
            transform: scale(1.02) rotate(0.5deg);
        }

        /* Feature strip */
        .features {
            display: flex;
            flex-wrap: wrap;
            justify-content: space-between;
            gap: 1.8rem;
            padding: 2.5rem 3rem;
            background: white;
            border-bottom: 1px solid var(--border-light);
        }

        .feature-item {
            display: flex;
            align-items: center;
            gap: 1.2rem;
            padding: 0.4rem 0;
            transition: transform 0.2s;
        }

        .feature-item:hover {
            transform: translateX(4px);
        }

        .feature-icon {
            width: 56px;
            height: 56px;
            background: var(--primary-light);
            border-radius: 20px;
            display: flex;
            align-items: center;
            justify-content: center;
            color: var(--primary);
            font-size: 1.7rem;
            flex-shrink: 0;
            box-shadow: 0 6px 12px -6px rgba(224, 122, 58, 0.2);
        }

        .feature-text h4 {
            font-weight: 700;
            font-size: 1.05rem;
            margin-bottom: 2px;
            color: var(--text-dark);
        }

        .feature-text p {
            color: #8a8078;
            font-size: 0.9rem;
            font-weight: 500;
        }

        /* Section header */
        .section-title {
            display: flex;
            justify-content: space-between;
            align-items: flex-end;
            padding: 3rem 3rem 0.5rem 3rem;
        }

        .section-title h3 {
            font-family: 'Playfair Display', serif;
            font-size: 2.4rem;
            font-weight: 600;
            color: #1e1e1e;
            letter-spacing: -0.3px;
        }

        .section-title a {
            color: var(--primary);
            font-weight: 700;
            text-decoration: none;
            font-size: 0.98rem;
            display: flex;
            align-items: center;
            gap: 8px;
            padding: 0.4rem 0;
            border-bottom: 2px solid transparent;
            transition: border-bottom 0.2s;
        }

        .section-title a:hover {
            border-bottom-color: var(--primary);
        }

        /* Menu grid */
        .menu-grid {
            display: grid;
            grid-template-columns: repeat(auto-fit, minmax(250px, 1fr));
            gap: 2rem;
            padding: 1.5rem 3rem 3.5rem 3rem;
        }

        .menu-card {
            background: var(--card-bg);
            border-radius: var(--radius-md);
            border: 1px solid var(--border-light);
            overflow: hidden;
            transition: all 0.3s cubic-bezier(0.2, 0, 0, 1);
            box-shadow: var(--shadow-sm);
            display: flex;
            flex-direction: column;
        }

        .menu-card:hover {
            transform: translateY(-8px);
            box-shadow: var(--shadow-lg);
            border-color: #e5d9ce;
        }

        .menu-img {
            height: 180px;
            background-size: cover;
            background-position: center;
            position: relative;
            transition: transform 0.4s ease;
        }

        .menu-card:hover .menu-img {
            transform: scale(1.02);
        }

        .menu-img .price-tag {
            position: absolute;
            bottom: 14px;
            right: 14px;
            background: white;
            padding: 0.45rem 1.2rem;
            border-radius: 40px;
            font-weight: 800;
            color: #1e1e1e;
            font-size: 1rem;
            box-shadow: 0 6px 14px rgba(0, 0, 0, 0.12);
            letter-spacing: -0.2px;
        }

        .menu-info {
            padding: 1.4rem 1.4rem 1.6rem;
            display: flex;
            flex-direction: column;
            flex: 1;
        }

        .menu-info h4 {
            font-weight: 700;
            font-size: 1.25rem;
            margin-bottom: 0.45rem;
            color: var(--text-dark);
        }

        .menu-info p {
            color: #7a7169;
            font-size: 0.9rem;
            margin-bottom: 1.2rem;
            line-height: 1.5;
            flex: 1;
        }

        .menu-footer {
            display: flex;
            justify-content: space-between;
            align-items: center;
            margin-top: auto;
        }

        .rating i {
            color: #f5b342;
            font-size: 0.9rem;
            margin-right: 2px;
        }

        .rating span {
            font-size: 0.85rem;
            color: #5b554e;
            margin-left: 6px;
            font-weight: 600;
        }

        .add-btn {
            background: var(--primary-light);
            border: none;
            width: 42px;
            height: 42px;
            border-radius: 14px;
            color: var(--primary);
            font-size: 1.2rem;
            display: flex;
            align-items: center;
            justify-content: center;
            cursor: pointer;
            transition: all 0.25s ease;
            box-shadow: 0 4px 8px -2px rgba(224, 122, 58, 0.15);
        }

        .add-btn:hover {
            background: var(--primary);
            color: white;
            transform: scale(1.08);
            box-shadow: 0 8px 16px -6px rgba(224, 122, 58, 0.4);
        }

        /* Reservation card */
        .reservation-card {
            margin: 0 3rem 3rem 3rem;
            background: linear-gradient(135deg, #2b2b2b 0%, #1f1f1f 100%);
            border-radius: var(--radius-lg);
            padding: 3rem 3.5rem;
            display: flex;
            flex-wrap: wrap;
            align-items: center;
            justify-content: space-between;
            color: white;
            gap: 2.5rem;
            box-shadow: 0 20px 30px -12px rgba(0, 0, 0, 0.3);
            border: 1px solid rgba(255, 255, 255, 0.06);
        }

        .reservation-text h3 {
            font-family: 'Playfair Display', serif;
            font-size: 2.2rem;
            font-weight: 600;
            margin-bottom: 0.7rem;
            letter-spacing: -0.3px;
            line-height: 1.2;
        }

        .reservation-text p {
            color: #c2b9b0;
            font-size: 1.05rem;
            max-width: 380px;
            line-height: 1.6;
        }

        .reservation-form {
            display: flex;
            flex-wrap: wrap;
            gap: 0.9rem;
            align-items: center;
        }

        .reservation-form input {
            padding: 1rem 1.8rem;
            border-radius: 50px;
            border: 1.5px solid rgba(255, 255, 255, 0.15);
            background: rgba(255, 255, 255, 0.08);
            color: white;
            font-family: 'Inter', sans-serif;
            font-size: 0.95rem;
            outline: none;
            transition: border 0.2s, background 0.2s;
            min-width: 200px;
            backdrop-filter: blur(4px);
        }

        .reservation-form input::placeholder {
            color: #b0a69c;
            font-weight: 400;
        }

        .reservation-form input:focus {
            border-color: var(--primary);
            background: rgba(255, 255, 255, 0.12);
        }

        .reservation-form button {
            background: var(--primary);
            color: white;
            border: none;
            padding: 1rem 2.4rem;
            border-radius: 50px;
            font-weight: 700;
            font-size: 0.95rem;
            cursor: pointer;
            transition: all 0.25s ease;
            white-space: nowrap;
            box-shadow: 0 8px 18px -8px rgba(224, 122, 58, 0.5);
            letter-spacing: 0.2px;
        }

        .reservation-form button:hover {
            background: #e88a4e;
            transform: translateY(-2px);
            box-shadow: 0 12px 22px -8px rgba(224, 122, 58, 0.7);
        }

        /* Footer */
        .footer {
            display: flex;
            flex-wrap: wrap;
            justify-content: space-between;
            align-items: center;
            padding: 2rem 3rem;
            border-top: 1px solid var(--border-light);
            background: #fefcf9;
            color: #6b6259;
            font-size: 0.92rem;
            font-weight: 500;
        }

        .social {
            display: flex;
            gap: 0.8rem;
        }

        .social i {
            font-size: 1.2rem;
            color: #9b9288;
            transition: all 0.2s ease;
            cursor: pointer;
            background: white;
            padding: 10px;
            border-radius: 12px;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.02);
            width: 42px;
            height: 42px;
            display: flex;
            align-items: center;
            justify-content: center;
        }

        .social i:hover {
            color: var(--primary);
            transform: translateY(-3px);
            box-shadow: 0 10px 16px -6px rgba(224, 122, 58, 0.25);
        }

        /* Focus & accessibility */
        button:focus-visible,
        input:focus-visible,
        a:focus-visible {
            outline: 3px solid rgba(224, 122, 58, 0.4);
            outline-offset: 3px;
        }

        /* Responsive */
        @media (max-width: 900px) {
            .hero-text h2 { font-size: 2.8rem; }
            .reservation-card { padding: 2.5rem 2rem; }
        }

        @media (max-width: 800px) {
            body { padding: 1rem; }
            .top-bar { flex-direction: column; gap: 1rem; padding: 1.5rem; }
            .nav-links { gap: 1.5rem; flex-wrap: wrap; justify-content: center; }
            .hero { padding: 2.5rem 1.8rem; gap: 2rem; }
            .hero-text h2 { font-size: 2.4rem; }
            .features { padding: 2rem 1.8rem; justify-content: center; }
            .feature-item { flex: 1 1 180px; }
            .section-title { padding: 2.5rem 1.8rem 0.5rem; }
            .menu-grid { padding: 1.5rem 1.8rem 2.5rem; gap: 1.5rem; }
            .reservation-card { margin: 0 1.8rem 2.5rem; padding: 2.2rem 2rem; }
            .footer { padding: 1.8rem; flex-direction: column; gap: 1.2rem; text-align: center; }
        }

        @media (max-width: 500px) {
            .logo h1 { font-size: 1.4rem; }
            .hero-text h2 { font-size: 2rem; }
            .hero-image img { max-width: 260px; }
            .btn-primary, .btn-secondary { padding: 0.9rem 1.6rem; font-size: 0.9rem; width: 100%; justify-content: center; }
            .hero-actions { width: 100%; }
            .reservation-form { width: 100%; }
            .reservation-form input { min-width: 100%; }
            .section-title { flex-direction: column; align-items: flex-start; gap: 0.8rem; }
            .section-title h3 { font-size: 2rem; }
        }
    </style>
</head>
<body>
    <div class="app-wrapper">
        <!-- Header -->
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
                <button class="btn-outline"><i class="fas fa-user"></i> Sign in</button>
            </div>
        </header>

        <!-- Hero -->
        <section class="hero">
            <div class="hero-text">
                <div class="badge"><i class="fas fa-star" style="margin-right: 6px; color: #e07a3a;"></i> Authentic Italian</div>
                <h2>Where every meal feels like <i>home</i></h2>
                <p>Handcrafted pasta, wood-fired pizza, and fresh seasonal ingredients — delivered to your door or ready for pickup.</p>
                <div class="hero-actions">
                    <button class="btn-primary"><i class="fas fa-bag-shopping"></i> Order now</button>
                    <button class="btn-secondary"><i class="fas fa-calendar-check"></i> Book a table</button>
                </div>
            </div>
            <div class="hero-image">
                <img src="https://images.unsplash.com/photo-1546069901-ba9599a7e63c?w=800&auto=format&fit=crop&q=80" alt="Delicious pasta dish">
            </div>
        </section>

        <!-- Features -->
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

        <!-- Menu -->
        <div class="section-title">
            <h3>Chef's favorites</h3>
            <a href="#">See full menu <i class="fas fa-arrow-right"></i></a>
        </div>

        <div class="menu-grid">
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
                        <button class="add-btn" aria-label="Add to order"><i class="fas fa-plus"></i></button>
                    </div>
                </div>
            </div>
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
                        <button class="add-btn" aria-label="Add to order"><i class="fas fa-plus"></i></button>
                    </div>
                </div>
            </div>
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
                        <button class="add-btn" aria-label="Add to order"><i class="fas fa-plus"></i></button>
                    </div>
                </div>
            </div>
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
                        <button class="add-btn" aria-label="Add to order"><i class="fas fa-plus"></i></button>
                    </div>
                </div>
            </div>
        </div>

        <!-- Reservation -->
        <div class="reservation-card">
            <div class="reservation-text">
                <h3>Reserve your table</h3>
                <p>Skip the wait — book in advance for lunch or dinner.</p>
            </div>
            <div class="reservation-form">
                <input type="text" placeholder="Your name" aria-label="Your name">
                <input type="date" placeholder="Date" aria-label="Reservation date">
                <button>Book now</button>
            </div>
        </div>

        <!-- Footer -->
        <footer class="footer">
            <div>© 2025 Bella Cucina · All rights reserved.</div>
            <div class="social">
                <i class="fab fa-instagram" role="button" aria-label="Instagram"></i>
                <i class="fab fa-facebook-f" role="button" aria-label="Facebook"></i>
                <i class="fab fa-x-twitter" role="button" aria-label="X"></i>
                <i class="fab fa-tiktok" role="button" aria-label="TikTok"></i>
            </div>
        </footer>
    </div>
</body>
</html>
