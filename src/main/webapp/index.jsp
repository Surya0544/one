<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=yes, viewport-fit=cover">
    <title>CinePass · Movie Ticket Booking</title>
    <!-- Google Font & Font Awesome -->
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Inter:opsz,wght@14..32,300;14..32,400;14..32,500;14..32,600;14..32,700;14..32,800&display=swap" rel="stylesheet">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0-beta3/css/all.min.css">
    <style>
        /* ---------- GLOBAL RESET & BASE ---------- */
        * {
            margin: 0;
            padding: 0;
            box-sizing: border-box;
            font-family: 'Inter', -apple-system, BlinkMacSystemFont, 'Segoe UI', Roboto, Helvetica, Arial, sans-serif;
        }

        body {
            background: #f5f5f7;
            min-height: 100vh;
            color: #1d1d1f;
            line-height: 1.4;
            -webkit-font-smoothing: antialiased;
            -moz-osx-font-smoothing: grayscale;
            padding-bottom: 2rem;
        }

        /* ---------- TOP NAVIGATION ---------- */
        .top-nav {
            background: rgba(255, 255, 255, 0.85);
            backdrop-filter: saturate(180%) blur(20px);
            -webkit-backdrop-filter: saturate(180%) blur(20px);
            position: sticky;
            top: 0;
            z-index: 1000;
            border-bottom: 1px solid rgba(0, 0, 0, 0.05);
            padding: 0.6rem 2rem;
            display: flex;
            align-items: center;
            justify-content: space-between;
            flex-wrap: wrap;
            gap: 0.8rem;
        }

        .nav-logo {
            display: flex;
            align-items: center;
            gap: 0.6rem;
            font-size: 1.4rem;
            font-weight: 700;
            letter-spacing: -0.03em;
            color: #1d1d1f;
        }

        .nav-logo i {
            background: #0071e3;
            color: white;
            width: 36px;
            height: 36px;
            border-radius: 10px;
            display: flex;
            align-items: center;
            justify-content: center;
            font-size: 1.1rem;
            box-shadow: 0 4px 10px rgba(0, 113, 227, 0.25);
        }

        .nav-logo span {
            color: #0071e3;
            font-weight: 300;
        }

        .nav-links {
            display: flex;
            align-items: center;
            gap: 0.5rem;
            list-style: none;
        }

        .nav-links a {
            text-decoration: none;
            color: #1d1d1f;
            font-size: 0.9rem;
            font-weight: 500;
            padding: 0.5rem 1rem;
            border-radius: 20px;
            transition: background 0.15s;
            -webkit-tap-highlight-color: transparent;
        }

        .nav-links a:hover {
            background: #f2f2f7;
        }

        .nav-links a.active {
            background: #0071e3;
            color: white;
        }

        /* ---------- PAGE CONTAINER ---------- */
        .page-container {
            max-width: 1200px;
            margin: 0 auto;
            padding: 1.5rem 1.5rem 0;
        }

        /* ---------- CARDS ---------- */
        .card {
            background: rgba(255, 255, 255, 0.95);
            backdrop-filter: blur(20px);
            -webkit-backdrop-filter: blur(20px);
            border-radius: 28px;
            box-shadow:
                0 4px 20px rgba(0, 0, 0, 0.04),
                0 20px 40px -12px rgba(0, 0, 0, 0.12),
                inset 0 1px 0 rgba(255, 255, 255, 0.8);
            padding: 2rem;
            transition: all 0.2s ease;
            border: 1px solid rgba(255, 255, 255, 0.5);
            margin-bottom: 1.5rem;
        }

        .page-header {
            text-align: center;
            margin-bottom: 1.5rem;
        }

        .page-header h1 {
            font-size: clamp(1.5rem, 3vw, 2rem);
            font-weight: 700;
            letter-spacing: -0.03em;
            margin-bottom: 0.3rem;
        }

        .page-header p {
            font-size: 0.95rem;
            color: #6e6e73;
        }

        /* ---------- MOVIE GRID ---------- */
        .movie-grid {
            display: grid;
            grid-template-columns: repeat(auto-fit, minmax(180px, 1fr));
            gap: 1.2rem;
            margin-bottom: 2rem;
        }

        .movie-card {
            background: #ffffff;
            border-radius: 20px;
            overflow: hidden;
            box-shadow: 0 4px 12px rgba(0, 0, 0, 0.06);
            transition: all 0.2s ease;
            cursor: pointer;
            border: 2px solid transparent;
            position: relative;
        }

        .movie-card:hover {
            transform: translateY(-4px);
            box-shadow: 0 12px 24px rgba(0, 0, 0, 0.12);
        }

        .movie-card.selected {
            border-color: #0071e3;
            box-shadow: 0 0 0 4px rgba(0, 113, 227, 0.15), 0 12px 24px rgba(0, 0, 0, 0.12);
        }

        .movie-card.selected::after {
            content: '\f00c';
            font-family: 'Font Awesome 6 Free';
            font-weight: 900;
            position: absolute;
            top: 10px;
            right: 10px;
            background: #0071e3;
            color: white;
            width: 28px;
            height: 28px;
            border-radius: 50%;
            display: flex;
            align-items: center;
            justify-content: center;
            font-size: 0.75rem;
            box-shadow: 0 4px 10px rgba(0, 113, 227, 0.4);
        }

        .movie-poster {
            width: 100%;
            aspect-ratio: 2/3;
            object-fit: cover;
            display: block;
            background: #e5e5ea;
        }

        .movie-info {
            padding: 1rem;
        }

        .movie-info h3 {
            font-size: 0.95rem;
            font-weight: 700;
            color: #1d1d1f;
            margin-bottom: 0.3rem;
            letter-spacing: -0.01em;
        }

        .movie-info .meta {
            display: flex;
            align-items: center;
            gap: 0.5rem;
            font-size: 0.75rem;
            color: #8e8e93;
            margin-bottom: 0.4rem;
        }

        .movie-info .meta .rating {
            display: flex;
            align-items: center;
            gap: 0.2rem;
            color: #ffb800;
            font-weight: 600;
        }

        .movie-info .genres {
            display: flex;
            flex-wrap: wrap;
            gap: 0.3rem;
        }

        .genre-tag {
            background: #f2f2f7;
            color: #6e6e73;
            font-size: 0.65rem;
            font-weight: 500;
            padding: 0.2rem 0.6rem;
            border-radius: 20px;
        }

        /* ---------- SHOWTIME SECTION ---------- */
        .showtime-section {
            margin-bottom: 2rem;
        }

        .showtime-section h2 {
            font-size: 1.2rem;
            font-weight: 700;
            letter-spacing: -0.02em;
            margin-bottom: 1rem;
            display: flex;
            align-items: center;
            gap: 0.5rem;
        }

        .showtime-section h2 i {
            color: #0071e3;
            font-size: 1rem;
        }

        .date-selector {
            display: flex;
            gap: 0.6rem;
            margin-bottom: 1.2rem;
            overflow-x: auto;
            padding-bottom: 0.4rem;
            -webkit-overflow-scrolling: touch;
            scrollbar-width: none;
        }

        .date-selector::-webkit-scrollbar {
            display: none;
        }

        .date-chip {
            flex-shrink: 0;
            padding: 0.6rem 1.2rem;
            border-radius: 40px;
            background: #f9f9fb;
            border: 1.5px solid #e5e5ea;
            font-size: 0.85rem;
            font-weight: 600;
            color: #1d1d1f;
            cursor: pointer;
            transition: all 0.2s ease;
            text-align: center;
            -webkit-tap-highlight-color: transparent;
            min-width: 70px;
        }

        .date-chip:hover {
            border-color: #c7c7cc;
            background: #ffffff;
        }

        .date-chip.active {
            background: #0071e3;
            color: white;
            border-color: #0071e3;
            box-shadow: 0 4px 12px rgba(0, 113, 227, 0.3);
        }

        .date-chip .day {
            font-size: 0.7rem;
            font-weight: 500;
            opacity: 0.8;
        }

        .time-grid {
            display: grid;
            grid-template-columns: repeat(auto-fit, minmax(90px, 1fr));
            gap: 0.6rem;
        }

        .time-chip {
            padding: 0.7rem;
            border-radius: 14px;
            background: #f9f9fb;
            border: 1.5px solid #e5e5ea;
            font-size: 0.9rem;
            font-weight: 600;
            color: #1d1d1f;
            cursor: pointer;
            transition: all 0.2s ease;
            text-align: center;
            -webkit-tap-highlight-color: transparent;
        }

        .time-chip:hover {
            border-color: #c7c7cc;
            background: #ffffff;
        }

        .time-chip.active {
            background: #0071e3;
            color: white;
            border-color: #0071e3;
            box-shadow: 0 4px 12px rgba(0, 113, 227, 0.3);
        }

        /* ---------- SEAT MAP ---------- */
        .seat-section {
            margin-bottom: 1.5rem;
        }

        .seat-section h2 {
            font-size: 1.2rem;
            font-weight: 700;
            letter-spacing: -0.02em;
            margin-bottom: 0.5rem;
            display: flex;
            align-items: center;
            gap: 0.5rem;
        }

        .seat-section h2 i {
            color: #0071e3;
            font-size: 1rem;
        }

        .screen {
            background: linear-gradient(180deg, #d1d1d6, #f2f2f7);
            height: 10px;
            border-radius: 50% 50% 0 0 / 100% 100% 0 0;
            margin: 0 auto 2rem;
            width: 80%;
            box-shadow: 0 -4px 20px rgba(0, 0, 0, 0.08);
            position: relative;
        }

        .screen::after {
            content: 'SCREEN';
            position: absolute;
            top: -22px;
            left: 50%;
            transform: translateX(-50%);
            font-size: 0.65rem;
            font-weight: 700;
            color: #8e8e93;
            letter-spacing: 2px;
        }

        .seat-map {
            display: flex;
            flex-direction: column;
            align-items: center;
            gap: 0.4rem;
            margin-bottom: 1.5rem;
        }

        .seat-row {
            display: flex;
            gap: 0.4rem;
            align-items: center;
        }

        .row-label {
            width: 24px;
            text-align: center;
            font-size: 0.7rem;
            font-weight: 600;
            color: #8e8e93;
            flex-shrink: 0;
        }

        .seat {
            width: 32px;
            height: 32px;
            border-radius: 8px 8px 4px 4px;
            background: #e5e5ea;
            border: 1.5px solid #d1d1d6;
            cursor: pointer;
            transition: all 0.15s ease;
            display: flex;
            align-items: center;
            justify-content: center;
            font-size: 0.6rem;
            font-weight: 600;
            color: #8e8e93;
            -webkit-tap-highlight-color: transparent;
            position: relative;
        }

        .seat:hover:not(.occupied):not(.selected) {
            background: #d1d1d6;
            transform: scale(1.1);
        }

        .seat.selected {
            background: #0071e3;
            border-color: #0071e3;
            color: white;
            box-shadow: 0 4px 10px rgba(0, 113, 227, 0.4);
            transform: scale(1.05);
        }

        .seat.occupied {
            background: #aeaeb2;
            border-color: #aeaeb2;
            cursor: not-allowed;
            opacity: 0.6;
        }

        .seat.occupied::after {
            content: '';
            position: absolute;
            width: 60%;
            height: 2px;
            background: #636366;
            transform: rotate(45deg);
            border-radius: 2px;
        }

        .seat.aisle {
            width: 16px;
            height: 32px;
            background: transparent;
            border: none;
            cursor: default;
            pointer-events: none;
        }

        .seat-legend {
            display: flex;
            justify-content: center;
            gap: 1.5rem;
            flex-wrap: wrap;
            margin-bottom: 1.5rem;
        }

        .legend-item {
            display: flex;
            align-items: center;
            gap: 0.4rem;
            font-size: 0.8rem;
            color: #6e6e73;
            font-weight: 500;
        }

        .legend-box {
            width: 20px;
            height: 20px;
            border-radius: 5px;
            border: 1.5px solid #d1d1d6;
            background: #e5e5ea;
        }

        .legend-box.selected {
            background: #0071e3;
            border-color: #0071e3;
        }

        .legend-box.occupied {
            background: #aeaeb2;
            border-color: #aeaeb2;
        }

        /* ---------- BOOKING SUMMARY ---------- */
        .summary-card {
            background: linear-gradient(135deg, #0b1e3a 0%, #1e3c72 100%);
            border-radius: 24px;
            padding: 1.5rem;
            color: white;
            display: flex;
            flex-wrap: wrap;
            align-items: center;
            justify-content: space-between;
            gap: 1.2rem;
            box-shadow: 0 20px 40px -12px rgba(0, 30, 80, 0.4);
        }

        .summary-info {
            flex: 1 1 200px;
        }

        .summary-info h3 {
            font-size: 0.8rem;
            font-weight: 600;
            opacity: 0.7;
            text-transform: uppercase;
            letter-spacing: 0.5px;
            margin-bottom: 0.3rem;
        }

        .summary-info .movie-name {
            font-size: 1.1rem;
            font-weight: 700;
            letter-spacing: -0.02em;
            margin-bottom: 0.5rem;
        }

        .summary-info .details {
            display: flex;
            flex-wrap: wrap;
            gap: 1rem;
            font-size: 0.8rem;
            opacity: 0.85;
        }

        .summary-info .details span {
            display: flex;
            align-items: center;
            gap: 0.3rem;
        }

        .summary-info .details i {
            font-size: 0.75rem;
        }

        .summary-price {
            flex: 0 0 180px;
            text-align: right;
        }

        .summary-price .total-label {
            font-size: 0.75rem;
            opacity: 0.7;
            font-weight: 500;
        }

        .summary-price .total-amount {
            font-size: 2rem;
            font-weight: 700;
            letter-spacing: -0.03em;
            line-height: 1.2;
        }

        .summary-price .seats-selected {
            font-size: 0.75rem;
            opacity: 0.7;
        }

        .checkout-btn {
            background: #0071e3;
            border: none;
            border-radius: 60px;
            padding: 1rem 2.5rem;
            font-size: 1rem;
            font-weight: 600;
            color: white;
            display: flex;
            align-items: center;
            gap: 0.7rem;
            cursor: pointer;
            box-shadow: 0 8px 20px rgba(0, 113, 227, 0.4);
            transition: all 0.2s ease;
            -webkit-tap-highlight-color: transparent;
            width: 100%;
            justify-content: center;
            margin-top: 0.5rem;
        }

        .checkout-btn:hover {
            background: #0077ed;
            transform: scale(1.01);
            box-shadow: 0 10px 26px rgba(0, 113, 227, 0.5);
        }

        .checkout-btn:active {
            transform: scale(0.98);
        }

        .checkout-btn:disabled {
            background: #8e8e93;
            box-shadow: none;
            cursor: not-allowed;
            opacity: 0.6;
        }

        /* ---------- RESPONSIVE ---------- */
        @media (max-width: 820px) {
            .top-nav {
                padding: 0.5rem 1rem;
            }
            .page-container {
                padding: 1rem 1rem 0;
            }
            .card {
                padding: 1.5rem;
                border-radius: 24px;
            }
            .movie-grid {
                grid-template-columns: repeat(auto-fit, minmax(140px, 1fr));
                gap: 0.8rem;
            }
        }

        @media (max-width: 520px) {
            .top-nav {
                padding: 0.4rem 0.8rem;
            }
            .nav-logo {
                font-size: 1.2rem;
            }
            .nav-logo i {
                width: 32px;
                height: 32px;
                font-size: 0.95rem;
                border-radius: 8px;
            }
            .nav-links a {
                font-size: 0.8rem;
                padding: 0.4rem 0.7rem;
            }
            .page-container {
                padding: 0.8rem 0.8rem 0;
            }
            .card {
                padding: 1.2rem;
                border-radius: 20px;
            }
            .movie-grid {
                grid-template-columns: repeat(2, 1fr);
                gap: 0.7rem;
            }
            .movie-info {
                padding: 0.7rem;
            }
            .movie-info h3 {
                font-size: 0.85rem;
            }
            .seat {
                width: 26px;
                height: 26px;
                font-size: 0.5rem;
            }
            .row-label {
                width: 18px;
                font-size: 0.6rem;
            }
            .seat.aisle {
                width: 10px;
            }
            .summary-card {
                flex-direction: column;
                text-align: center;
                padding: 1.2rem;
            }
            .summary-price {
                flex: 1 1 auto;
                text-align: center;
            }
            .checkout-btn {
                width: 100%;
            }
            .seat-legend {
                gap: 0.8rem;
            }
        }

        @media (max-width: 380px) {
            .nav-logo span {
                display: none;
            }
            .nav-links a {
                font-size: 0.7rem;
                padding: 0.3rem 0.5rem;
            }
            .movie-grid {
                grid-template-columns: repeat(2, 1fr);
                gap: 0.5rem;
            }
            .seat {
                width: 22px;
                height: 22px;
                border-radius: 5px 5px 3px 3px;
                font-size: 0.45rem;
            }
            .row-label {
                width: 14px;
                font-size: 0.55rem;
            }
            .seat.aisle {
                width: 6px;
            }
            .seat-row {
                gap: 0.25rem;
            }
        }

        /* safe area */
        @supports (padding: max(0px)) {
            .top-nav {
                padding-left: max(1rem, env(safe-area-inset-left));
                padding-right: max(1rem, env(safe-area-inset-right));
            }
            .page-container {
                padding-left: max(1rem, env(safe-area-inset-left));
                padding-right: max(1rem, env(safe-area-inset-right));
            }
        }

        /* focus-visible */
        .movie-card:focus-visible,
        .date-chip:focus-visible,
        .time-chip:focus-visible,
        .seat:focus-visible,
        .checkout-btn:focus-visible {
            outline: 2px solid #0071e3;
            outline-offset: 2px;
        }

        /* animations */
        .movie-card, .date-chip, .time-chip, .seat {
            transition: all 0.2s cubic-bezier(0.25, 0.1, 0.25, 1);
        }

        .seat.selected {
            animation: pop 0.2s ease;
        }

        @keyframes pop {
            0% { transform: scale(1); }
            50% { transform: scale(1.15); }
            100% { transform: scale(1.05); }
        }
    </style>
</head>
<body>
    <!-- ---------- TOP NAVIGATION ---------- -->
    <nav class="top-nav">
        <div class="nav-logo">
            <i class="fas fa-film"></i>
            <div>Cine<span>Pass</span></div>
        </div>
        <ul class="nav-links">
            <li><a href="#" class="active">Movies</a></li>
            <li><a href="#">Cinemas</a></li>
            <li><a href="#">Offers</a></li>
            <li><a href="#">Account</a></li>
        </ul>
    </nav>

    <!-- ---------- MAIN CONTAINER ---------- -->
    <div class="page-container">
        <!-- PAGE HEADER -->
        <div class="page-header">
            <h1>Book Your Movie Tickets</h1>
            <p>Choose a movie, pick a showtime, and select your seats</p>
        </div>

        <!-- ---------- MOVIE SELECTION ---------- -->
        <div class="card">
            <div style="margin-bottom: 1.2rem;">
                <h2 style="font-size: 1.2rem; font-weight: 700; letter-spacing: -0.02em; display: flex; align-items: center; gap: 0.5rem;">
                    <i class="fas fa-clapperboard" style="color: #0071e3; font-size: 1rem;"></i> Now Showing
                </h2>
            </div>
            <div class="movie-grid" id="movieGrid">
                <!-- Movie 1 -->
                <div class="movie-card selected" data-movie="Dune: Part Two" data-price="14" tabindex="0">
                    <img class="movie-poster" src="https://image.tmdb.org/t/p/w500/1pdfLvkbY9ohJlCjQH2CZjjYVvJ.jpg" alt="Dune: Part Two poster">
                    <div class="movie-info">
                        <h3>Dune: Part Two</h3>
                        <div class="meta">
                            <span class="rating"><i class="fas fa-star"></i> 8.8</span>
                            <span>·</span>
                            <span>166 min</span>
                        </div>
                        <div class="genres">
                            <span class="genre-tag">Sci-Fi</span>
                            <span class="genre-tag">Adventure</span>
                        </div>
                    </div>
                </div>
                <!-- Movie 2 -->
                <div class="movie-card" data-movie="Oppenheimer" data-price="13" tabindex="0">
                    <img class="movie-poster" src="https://image.tmdb.org/t/p/w500/8Gxv8gSFCU0XGDykEGv7zR1n2ua.jpg" alt="Oppenheimer poster">
                    <div class="movie-info">
                        <h3>Oppenheimer</h3>
                        <div class="meta">
                            <span class="rating"><i class="fas fa-star"></i> 8.5</span>
                            <span>·</span>
                            <span>180 min</span>
                        </div>
                        <div class="genres">
                            <span class="genre-tag">Drama</span>
                            <span class="genre-tag">History</span>
                        </div>
                    </div>
                </div>
                <!-- Movie 3 -->
                <div class="movie-card" data-movie="Barbie" data-price="12" tabindex="0">
                    <img class="movie-poster" src="https://image.tmdb.org/t/p/w500/iuFNMS8U5cb6xfzi51Dbkovj7vM.jpg" alt="Barbie poster">
                    <div class="movie-info">
                        <h3>Barbie</h3>
                        <div class="meta">
                            <span class="rating"><i class="fas fa-star"></i> 7.0</span>
                            <span>·</span>
                            <span>114 min</span>
                        </div>
                        <div class="genres">
                            <span class="genre-tag">Comedy</span>
                            <span class="genre-tag">Fantasy</span>
                        </div>
                    </div>
                </div>
                <!-- Movie 4 -->
                <div class="movie-card" data-movie="The Batman" data-price="12" tabindex="0">
                    <img class="movie-poster" src="https://image.tmdb.org/t/p/w500/74xTEgt7R36Fpooo50r9T25onhq.jpg" alt="The Batman poster">
                    <div class="movie-info">
                        <h3>The Batman</h3>
                        <div class="meta">
                            <span class="rating"><i class="fas fa-star"></i> 7.8</span>
                            <span>·</span>
                            <span>176 min</span>
                        </div>
                        <div class="genres">
                            <span class="genre-tag">Action</span>
                            <span class="genre-tag">Crime</span>
                        </div>
                    </div>
                </div>
                <!-- Movie 5 -->
                <div class="movie-card" data-movie="Interstellar" data-price="11" tabindex="0">
                    <img class="movie-poster" src="https://image.tmdb.org/t/p/w500/gEU2QniE6E77NI6lCU6MxlNBvIx.jpg" alt="Interstellar poster">
                    <div class="movie-info">
                        <h3>Interstellar</h3>
                        <div class="meta">
                            <span class="rating"><i class="fas fa-star"></i> 8.7</span>
                            <span>·</span>
                            <span>169 min</span>
                        </div>
                        <div class="genres">
                            <span class="genre-tag">Sci-Fi</span>
                            <span class="genre-tag">Drama</span>
                        </div>
                    </div>
                </div>
            </div>
        </div>

        <!-- ---------- SHOWTIME SELECTION ---------- -->
        <div class="card">
            <div class="showtime-section">
                <h2><i class="fas fa-calendar-day"></i> Select Date & Time</h2>
                <div class="date-selector" id="dateSelector">
                    <div class="date-chip active" data-date="Mon, Jun 12">
                        <div>Mon</div>
                        <div class="day">Jun 12</div>
                    </div>
                    <div class="date-chip" data-date="Tue, Jun 13">
                        <div>Tue</div>
                        <div class="day">Jun 13</div>
                    </div>
                    <div class="date-chip" data-date="Wed, Jun 14">
                        <div>Wed</div>
                        <div class="day">Jun 14</div>
                    </div>
                    <div class="date-chip" data-date="Thu, Jun 15">
                        <div>Thu</div>
                        <div class="day">Jun 15</div>
                    </div>
                    <div class="date-chip" data-date="Fri, Jun 16">
                        <div>Fri</div>
                        <div class="day">Jun 16</div>
                    </div>
                </div>
                <div class="time-grid" id="timeGrid">
                    <div class="time-chip active" data-time="10:30 AM">10:30 AM</div>
                    <div class="time-chip" data-time="1:15 PM">1:15 PM</div>
                    <div class="time-chip" data-time="4:00 PM">4:00 PM</div>
                    <div class="time-chip" data-time="7:30 PM">7:30 PM</div>
                    <div class="time-chip" data-time="10:15 PM">10:15 PM</div>
                </div>
            </div>
        </div>

        <!-- ---------- SEAT SELECTION ---------- -->
        <div class="card">
            <div class="seat-section">
                <h2><i class="fas fa-chair"></i> Select Seats</h2>
                <div class="screen"></div>
                <div class="seat-map" id="seatMap">
                    <!-- Rows will be generated by JavaScript -->
                </div>
                <div class="seat-legend">
                    <div class="legend-item">
                        <div class="legend-box"></div>
                        <span>Available</span>
                    </div>
                    <div class="legend-item">
                        <div class="legend-box selected"></div>
                        <span>Selected</span>
                    </div>
                    <div class="legend-item">
                        <div class="legend-box occupied"></div>
                        <span>Occupied</span>
                    </div>
                </div>
            </div>
        </div>

        <!-- ---------- BOOKING SUMMARY ---------- -->
        <div class="summary-card">
            <div class="summary-info">
                <h3>Booking Summary</h3>
                <div class="movie-name" id="summaryMovie">Dune: Part Two</div>
                <div class="details">
                    <span><i class="fas fa-calendar"></i> <span id="summaryDate">Mon, Jun 12</span></span>
                    <span><i class="fas fa-clock"></i> <span id="summaryTime">10:30 AM</span></span>
                    <span><i class="fas fa-chair"></i> <span id="summarySeats">None selected</span></span>
                </div>
            </div>
            <div class="summary-price">
                <div class="total-label">Total</div>
                <div class="total-amount" id="summaryTotal">$0.00</div>
                <div class="seats-selected" id="summarySeatCount">0 seats</div>
            </div>
            <button class="checkout-btn" id="checkoutBtn" disabled>
                <i class="fas fa-ticket-alt"></i> Proceed to Checkout
            </button>
        </div>
    </div>

    <script>
        (function() {
            // ---------- STATE ----------
            let selectedMovie = 'Dune: Part Two';
            let selectedMoviePrice = 14;
            let selectedDate = 'Mon, Jun 12';
            let selectedTime = '10:30 AM';
            let selectedSeats = [];
            const rows = ['A', 'B', 'C', 'D', 'E', 'F', 'G', 'H'];
            const seatsPerRow = 12; // 2 + 4 + 2 + 4 layout with aisle
            const occupiedSeats = ['A3', 'A4', 'B7', 'C2', 'C9', 'D5', 'E1', 'E11', 'F6', 'G4', 'G8', 'H10'];

            // ---------- DOM REFS ----------
            const movieGrid = document.getElementById('movieGrid');
            const dateSelector = document.getElementById('dateSelector');
            const timeGrid = document.getElementById('timeGrid');
            const seatMap = document.getElementById('seatMap');
            const summaryMovie = document.getElementById('summaryMovie');
            const summaryDate = document.getElementById('summaryDate');
            const summaryTime = document.getElementById('summaryTime');
            const summarySeats = document.getElementById('summarySeats');
            const summaryTotal = document.getElementById('summaryTotal');
            const summarySeatCount = document.getElementById('summarySeatCount');
            const checkoutBtn = document.getElementById('checkoutBtn');

            // ---------- GENERATE SEAT MAP ----------
            function generateSeatMap() {
                seatMap.innerHTML = '';
                rows.forEach(row => {
                    const rowDiv = document.createElement('div');
                    rowDiv.className = 'seat-row';

                    // Row label
                    const label = document.createElement('div');
                    label.className = 'row-label';
                    label.textContent = row;
                    rowDiv.appendChild(label);

                    for (let i = 1; i <= seatsPerRow; i++) {
                        // Add aisle after seats 2 and 8 (layout: 2 + 4 + 2 + 4)
                        if (i === 3 || i === 9) {
                            const aisle = document.createElement('div');
                            aisle.className = 'seat aisle';
                            rowDiv.appendChild(
