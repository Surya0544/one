<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=yes, viewport-fit=cover">
    <title>SkyPass · Premium Flight Booking</title>
    <!-- Google Font & Font Awesome -->
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Inter:opsz,wght@14..32,300;14..32,400;14..32,500;14..32,600;14..32,700;14..32,800&display=swap" rel="stylesheet">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0-beta3/css/all.min.css">
    <style>
        /* ---------- GLOBAL RESET & APPLE-INSPIRED BASE ---------- */
        * {
            margin: 0;
            padding: 0;
            box-sizing: border-box;
            font-family: 'Inter', -apple-system, BlinkMacSystemFont, 'Segoe UI', Roboto, Helvetica, Arial, sans-serif;
        }

        html {
            scroll-behavior: smooth;
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
            background: rgba(255, 255, 255, 0.8);
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

        /* ---------- CARDS – PREMIUM GLASS ---------- */
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

        /* ---------- HERO SECTION (PAGE 1) ---------- */
        .hero {
            background: linear-gradient(135deg, #0b1e3a 0%, #1e3c72 100%);
            border-radius: 28px;
            padding: 2.5rem 2rem;
            margin-bottom: 1.5rem;
            position: relative;
            overflow: hidden;
            color: white;
            display: flex;
            align-items: center;
            justify-content: space-between;
            flex-wrap: wrap;
            gap: 1.5rem;
            box-shadow: 0 20px 40px -12px rgba(0, 30, 80, 0.4);
        }

        .hero::after {
            content: '';
            position: absolute;
            top: -50%;
            right: -10%;
            width: 400px;
            height: 400px;
            background: radial-gradient(circle, rgba(0, 113, 227, 0.3) 0%, transparent 70%);
            border-radius: 50%;
            pointer-events: none;
        }

        .hero-content {
            flex: 1 1 300px;
            position: relative;
            z-index: 1;
        }

        .hero-content h1 {
            font-size: clamp(1.6rem, 4vw, 2.4rem);
            font-weight: 700;
            letter-spacing: -0.03em;
            margin-bottom: 0.5rem;
            line-height: 1.2;
        }

        .hero-content p {
            font-size: 1rem;
            opacity: 0.85;
            margin-bottom: 1.2rem;
            max-width: 500px;
        }

        .hero-badge {
            display: inline-flex;
            align-items: center;
            gap: 0.4rem;
            background: rgba(255, 255, 255, 0.15);
            padding: 0.4rem 1rem;
            border-radius: 40px;
            font-size: 0.8rem;
            font-weight: 500;
            margin-bottom: 1rem;
            backdrop-filter: blur(10px);
        }

        .hero-image {
            flex: 0 0 220px;
            display: flex;
            align-items: center;
            justify-content: center;
            position: relative;
            z-index: 1;
        }

        .hero-image img {
            width: 100%;
            max-width: 220px;
            height: auto;
            filter: drop-shadow(0 20px 30px rgba(0, 0, 0, 0.3));
            animation: float 4s ease-in-out infinite;
        }

        @keyframes float {
            0%, 100% { transform: translateY(0px); }
            50% { transform: translateY(-10px); }
        }

        /* ---------- SEARCH FORM (PAGE 1) ---------- */
        .search-section {
            background: rgba(255, 255, 255, 0.95);
            backdrop-filter: blur(20px);
            -webkit-backdrop-filter: blur(20px);
            border-radius: 28px;
            box-shadow:
                0 4px 20px rgba(0, 0, 0, 0.04),
                0 20px 40px -12px rgba(0, 0, 0, 0.12);
            padding: 1.8rem 2rem 2rem;
            border: 1px solid rgba(255, 255, 255, 0.5);
            margin-bottom: 1.5rem;
        }

        .trip-tabs {
            display: flex;
            gap: 0.3rem;
            background: #f2f2f7;
            padding: 0.3rem;
            border-radius: 60px;
            margin-bottom: 1.8rem;
            width: fit-content;
            border: 1px solid rgba(0, 0, 0, 0.03);
        }

        .tab {
            padding: 0.6rem 1.8rem;
            border-radius: 40px;
            font-weight: 500;
            font-size: 0.9rem;
            color: #6e6e73;
            cursor: pointer;
            transition: all 0.2s ease;
            white-space: nowrap;
            -webkit-tap-highlight-color: transparent;
            user-select: none;
        }

        .tab.active {
            background: #ffffff;
            color: #1d1d1f;
            font-weight: 600;
            box-shadow: 0 2px 8px rgba(0, 0, 0, 0.04);
        }

        .tab:not(.active):hover {
            background: rgba(255, 255, 255, 0.5);
            color: #1d1d1f;
        }

        .booking-form {
            display: flex;
            flex-direction: column;
            gap: 1.4rem;
        }

        .search-row {
            display: flex;
            flex-wrap: wrap;
            gap: 0.8rem;
            align-items: flex-end;
        }

        .input-group {
            flex: 1 1 180px;
            display: flex;
            flex-direction: column;
            gap: 0.4rem;
            position: relative;
        }

        .input-group label {
            font-size: 0.7rem;
            font-weight: 600;
            text-transform: uppercase;
            letter-spacing: 0.5px;
            color: #6e6e73;
            margin-left: 0.3rem;
        }

        .input-wrapper {
            display: flex;
            align-items: center;
            background: #f9f9fb;
            border: 1.5px solid #e5e5ea;
            border-radius: 16px;
            padding: 0.1rem 0.8rem 0.1rem 1rem;
            transition: all 0.2s ease;
            -webkit-tap-highlight-color: transparent;
        }

        .input-wrapper:focus-within {
            border-color: #0071e3;
            box-shadow: 0 0 0 4px rgba(0, 113, 227, 0.12);
            background: #ffffff;
        }

        .input-wrapper i {
            color: #8e8e93;
            font-size: 1.05rem;
            width: 1.5rem;
            text-align: center;
            transition: color 0.2s;
        }

        .input-wrapper:focus-within i {
            color: #0071e3;
        }

        .input-wrapper input {
            border: none;
            background: transparent;
            padding: 0.95rem 0.5rem;
            font-size: 1rem;
            font-weight: 500;
            color: #1d1d1f;
            width: 100%;
            outline: none;
            -webkit-appearance: none;
        }

        .input-wrapper input::placeholder {
            color: #aeaeb2;
            font-weight: 400;
        }

        .swap-icon {
            display: flex;
            align-items: center;
            justify-content: center;
            background: #f2f2f7;
            border-radius: 50%;
            width: 46px;
            height: 46px;
            color: #0071e3;
            font-size: 1.1rem;
            margin-bottom: 0.2rem;
            cursor: pointer;
            border: 1.5px solid #e5e5ea;
            transition: all 0.2s ease;
            flex-shrink: 0;
            -webkit-tap-highlight-color: transparent;
        }

        .swap-icon:hover {
            background: #e5e5ea;
            transform: rotate(90deg);
        }

        .details-row {
            display: flex;
            flex-wrap: wrap;
            gap: 0.8rem;
            align-items: flex-end;
        }

        .date-group {
            flex: 1 1 150px;
        }

        .passenger-group {
            flex: 0 0 190px;
        }

        .passenger-selector {
            display: flex;
            align-items: center;
            justify-content: space-between;
            background: #f9f9fb;
            border: 1.5px solid #e5e5ea;
            border-radius: 16px;
            padding: 0.3rem 1rem 0.3rem 1.1rem;
            transition: all 0.2s ease;
            cursor: pointer;
            -webkit-tap-highlight-color: transparent;
            user-select: none;
        }

        .passenger-selector:hover {
            border-color: #c7c7cc;
            background: #ffffff;
        }

        .passenger-selector i {
            color: #8e8e93;
            font-size: 1.05rem;
            margin-right: 0.5rem;
        }

        .passenger-selector span {
            font-weight: 500;
            color: #1d1d1f;
            font-size: 0.95rem;
            flex: 1;
        }

        .passenger-selector .chevron {
            color: #8e8e93;
            font-size: 0.85rem;
            margin-right: 0;
        }

        .perks-row {
            display: flex;
            flex-wrap: wrap;
            gap: 0.6rem 1.5rem;
            align-items: center;
            background: #f9f9fb;
            padding: 0.8rem 1.4rem;
            border-radius: 20px;
            border: 1px solid #e5e5ea;
        }

        .perk-item {
            display: flex;
            align-items: center;
            gap: 0.5rem;
            font-size: 0.85rem;
            font-weight: 500;
            color: #1d1d1f;
        }

        .perk-item i {
            color: #0071e3;
            font-size: 0.95rem;
            width: 1.2rem;
            text-align: center;
        }

        .action-row {
            display: flex;
            flex-wrap: wrap;
            align-items: center;
            justify-content: space-between;
            gap: 1.2rem;
            margin-top: 0.2rem;
        }

        .price-summary {
            display: flex;
            flex-direction: column;
        }

        .price-label {
            font-size: 0.75rem;
            font-weight: 600;
            color: #6e6e73;
            letter-spacing: 0.3px;
        }

        .price-value {
            font-size: 2.1rem;
            font-weight: 700;
            color: #1d1d1f;
            letter-spacing: -0.03em;
            line-height: 1.2;
        }

        .price-value small {
            font-size: 0.85rem;
            font-weight: 400;
            color: #8e8e93;
            margin-left: 0.2rem;
        }

        .book-btn {
            background: #0071e3;
            border: none;
            border-radius: 60px;
            padding: 1rem 2.8rem;
            font-size: 1.05rem;
            font-weight: 600;
            color: white;
            display: flex;
            align-items: center;
            gap: 0.7rem;
            cursor: pointer;
            box-shadow: 0 8px 20px rgba(0, 113, 227, 0.25);
            transition: all 0.2s ease;
            letter-spacing: 0.1px;
            -webkit-tap-highlight-color: transparent;
            user-select: none;
            border: 1px solid rgba(255, 255, 255, 0.1);
        }

        .book-btn:hover {
            background: #0077ed;
            box-shadow: 0 10px 26px rgba(0, 113, 227, 0.35);
            transform: scale(1.01);
        }

        .book-btn:active {
            transform: scale(0.98);
        }

        .trust-note {
            display: flex;
            align-items: center;
            justify-content: center;
            gap: 1.8rem;
            flex-wrap: wrap;
            font-size: 0.75rem;
            color: #8e8e93;
            margin-top: 1.2rem;
            padding-top: 1.2rem;
            border-top: 1px solid #f2f2f7;
        }

        .trust-item {
            display: flex;
            align-items: center;
            gap: 0.4rem;
        }

        .trust-item i {
            color: #0071e3;
            font-size: 0.85rem;
        }

        /* ---------- SECTIONS – COMMON ---------- */
        .section-title {
            font-size: 1.4rem;
            font-weight: 700;
            letter-spacing: -0.02em;
            margin-bottom: 0.4rem;
            color: #1d1d1f;
        }

        .section-subtitle {
            font-size: 0.9rem;
            color: #6e6e73;
            margin-bottom: 1.5rem;
        }

        /* ---------- AIRLINE PARTNERS GRID (PAGE 1) ---------- */
        .airlines-grid {
            display: grid;
            grid-template-columns: repeat(auto-fit, minmax(130px, 1fr));
            gap: 1rem;
        }

        .airline-card {
            background: #f9f9fb;
            border: 1px solid #e5e5ea;
            border-radius: 18px;
            padding: 1.2rem 0.8rem;
            display: flex;
            flex-direction: column;
            align-items: center;
            justify-content: center;
            gap: 0.8rem;
            transition: all 0.2s ease;
            cursor: pointer;
            -webkit-tap-highlight-color: transparent;
        }

        .airline-card:hover {
            background: #ffffff;
            border-color: #0071e3;
            transform: translateY(-3px);
            box-shadow: 0 8px 20px rgba(0, 113, 227, 0.15);
        }

        .airline-card img {
            width: 60px;
            height: 60px;
            object-fit: contain;
            border-radius: 12px;
            background: white;
            padding: 6px;
            box-shadow: 0 2px 8px rgba(0, 0, 0, 0.06);
        }

        .airline-card span {
            font-size: 0.8rem;
            font-weight: 600;
            color: #1d1d1f;
            text-align: center;
        }

        /* ---------- FLIGHT RESULTS (PAGE 2) ---------- */
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

        .flight-card {
            background: rgba(255, 255, 255, 0.95);
            backdrop-filter: blur(20px);
            -webkit-backdrop-filter: blur(20px);
            border-radius: 24px;
            box-shadow:
                0 4px 20px rgba(0, 0, 0, 0.04),
                0 12px 28px -8px rgba(0, 0, 0, 0.1);
            padding: 1.5rem;
            border: 1px solid rgba(255, 255, 255, 0.5);
            margin-bottom: 1rem;
            transition: all 0.2s ease;
            display: flex;
            flex-wrap: wrap;
            gap: 1.2rem;
            align-items: center;
        }

        .flight-card:hover {
            transform: translateY(-3px);
            box-shadow:
                0 8px 30px rgba(0, 0, 0, 0.06),
                0 20px 40px -12px rgba(0, 0, 0, 0.15);
        }

        .flight-airline {
            flex: 0 0 140px;
            display: flex;
            align-items: center;
            gap: 0.8rem;
        }

        .flight-airline img {
            width: 48px;
            height: 48px;
            object-fit: contain;
            border-radius: 10px;
            background: white;
            padding: 4px;
            box-shadow: 0 2px 6px rgba(0, 0, 0, 0.06);
        }

        .flight-airline-info h4 {
            font-size: 0.9rem;
            font-weight: 600;
            color: #1d1d1f;
        }

        .flight-airline-info span {
            font-size: 0.75rem;
            color: #8e8e93;
        }

        .flight-route {
            flex: 1 1 300px;
            display: flex;
            align-items: center;
            gap: 0.8rem;
        }

        .flight-point {
            text-align: center;
            min-width: 80px;
        }

        .flight-point .time {
            font-size: 1.2rem;
            font-weight: 700;
            color: #1d1d1f;
            letter-spacing: -0.02em;
        }

        .flight-point .city {
            font-size: 0.75rem;
            color: #8e8e93;
            font-weight: 500;
        }

        .flight-path {
            flex: 1;
            display: flex;
            flex-direction: column;
            align-items: center;
            gap: 0.3rem;
            min-width: 100px;
        }

        .flight-path .duration {
            font-size: 0.75rem;
            color: #8e8e93;
            font-weight: 500;
        }

        .flight-path .line {
            width: 100%;
            height: 2px;
            background: linear-gradient(90deg, #0071e3, #0071e3);
            border-radius: 2px;
            position: relative;
        }

        .flight-path .line::before,
        .flight-path .line::after {
            content: '';
            position: absolute;
            top: 50%;
            transform: translateY(-50%);
            width: 6px;
            height: 6px;
            background: #0071e3;
            border-radius: 50%;
        }

        .flight-path .line::before {
            left: -2px;
        }

        .flight-path .line::after {
            right: -2px;
        }

        .flight-path .stops {
            font-size: 0.7rem;
            color: #8e8e93;
            font-weight: 500;
        }

        .flight-price {
            flex: 0 0 140px;
            text-align: right;
            display: flex;
            flex-direction: column;
            align-items: flex-end;
            gap: 0.3rem;
        }

        .flight-price .amount {
            font-size: 1.5rem;
            font-weight: 700;
            color: #1d1d1f;
            letter-spacing: -0.03em;
        }

        .flight-price .amount small {
            font-size: 0.8rem;
            font-weight: 400;
            color: #8e8e93;
        }

        .flight-price .per-person {
            font-size: 0.7rem;
            color: #8e8e93;
        }

        .select-btn {
            background: #0071e3;
            border: none;
            border-radius: 40px;
            padding: 0.6rem 1.6rem;
            font-size: 0.85rem;
            font-weight: 600;
            color: white;
            cursor: pointer;
            transition: all 0.2s ease;
            -webkit-tap-highlight-color: transparent;
            width: 100%;
            margin-top: 0.3rem;
        }

        .select-btn:hover {
            background: #0077ed;
            box-shadow: 0 6px 16px rgba(0, 113, 227, 0.3);
        }

        .select-btn:active {
            transform: scale(0.98);
        }

        .flight-badge {
            display: inline-flex;
            align-items: center;
            gap: 0.3rem;
            background: #e8f0fe;
            color: #0071e3;
            padding: 0.2rem 0.6rem;
            border-radius: 20px;
            font-size: 0.65rem;
            font-weight: 600;
        }

        /* ---------- REVIEWS SECTION (PAGE 3) ---------- */
        .reviews-grid {
            display: grid;
            grid-template-columns: repeat(auto-fit, minmax(300px, 1fr));
            gap: 1.2rem;
        }

        .review-card {
            background: rgba(255, 255, 255, 0.95);
            backdrop-filter: blur(20px);
            -webkit-backdrop-filter: blur(20px);
            border-radius: 24px;
            box-shadow:
                0 4px 20px rgba(0, 0, 0, 0.04),
                0 12px 28px -8px rgba(0, 0, 0, 0.1);
            padding: 1.5rem;
            border: 1px solid rgba(255, 255, 255, 0.5);
            transition: all 0.2s ease;
            display: flex;
            flex-direction: column;
            gap: 0.8rem;
        }

        .review-card:hover {
            transform: translateY(-3px);
            box-shadow:
                0 8px 30px rgba(0, 0, 0, 0.06),
                0 20px 40px -12px rgba(0, 0, 0, 0.15);
        }

        .review-header {
            display: flex;
            align-items: center;
            gap: 0.8rem;
        }

        .review-avatar {
            width: 48px;
            height: 48px;
            border-radius: 50%;
            object-fit: cover;
            border: 2px solid #e5e5ea;
        }

        .review-meta h4 {
            font-size: 0.9rem;
            font-weight: 600;
            color: #1d1d1f;
        }

        .review-meta span {
            font-size: 0.75rem;
            color: #8e8e93;
        }

        .review-stars {
            display: flex;
            gap: 0.15rem;
            color: #ffb800;
            font-size: 0.85rem;
        }

        .review-text {
            font-size: 0.9rem;
            color: #3a3a3c;
            line-height: 1.6;
            font-style: italic;
        }

        .review-route {
            display: flex;
            align-items: center;
            gap: 0.5rem;
            font-size: 0.75rem;
            color: #8e8e93;
            font-weight: 500;
            padding-top: 0.5rem;
            border-top: 1px solid #f2f2f7;
        }

        .review-route i {
            color: #0071e3;
            font-size: 0.7rem;
        }

        /* ---------- STATS ROW (PAGE 3) ---------- */
        .stats-row {
            display: grid;
            grid-template-columns: repeat(auto-fit, minmax(150px, 1fr));
            gap: 1rem;
            margin-bottom: 1.5rem;
        }

        .stat-card {
            background: rgba(255, 255, 255, 0.95);
            backdrop-filter: blur(20px);
            border-radius: 20px;
            padding: 1.2rem;
            text-align: center;
            border: 1px solid rgba(255, 255, 255, 0.5);
            box-shadow: 0 4px 20px rgba(0, 0, 0, 0.04);
        }

        .stat-card i {
            font-size: 1.5rem;
            color: #0071e3;
            margin-bottom: 0.5rem;
        }

        .stat-card h3 {
            font-size: 1.6rem;
            font-weight: 700;
            letter-spacing: -0.03em;
            color: #1d1d1f;
        }

        .stat-card p {
            font-size: 0.8rem;
            color: #8e8e93;
            font-weight: 500;
        }

        /* ---------- PAGE SWITCHER ---------- */
        .page {
            display: none;
            animation: fadeIn 0.3s ease;
        }

        .page.active {
            display: block;
        }

        @keyframes fadeIn {
            from { opacity: 0; transform: translateY(8px); }
            to { opacity: 1; transform: translateY(0); }
        }

        /* ---------- RESPONSIVE ---------- */
        @media (max-width: 820px) {
            .top-nav {
                padding: 0.5rem 1rem;
            }
            .page-container {
                padding: 1rem 1rem 0;
            }
            .card, .search-section {
                padding: 1.5rem;
                border-radius: 24px;
            }
            .hero {
                padding: 2rem 1.5rem;
                border-radius: 24px;
            }
            .hero-image {
                flex: 0 0 160px;
            }
            .search-row {
                flex-direction: column;
                align-items: stretch;
                gap: 0.6rem;
            }
            .swap-icon {
                align-self: center;
                transform: rotate(90deg);
                margin: -0.3rem 0 -0.1rem;
                width: 44px;
                height: 44px;
            }
            .details-row {
                flex-direction: column;
                align-items: stretch;
                gap: 0.6rem;
            }
            .passenger-group {
                flex: 1 1 auto;
            }
            .action-row {
                flex-direction: column;
                align-items: stretch;
                gap: 1rem;
            }
            .book-btn {
                justify-content: center;
                padding: 1rem 2rem;
            }
            .flight-card {
                flex-direction: column;
                align-items: stretch;
                gap: 1rem;
            }
            .flight-airline {
                flex: 1 1 auto;
            }
            .flight-price {
                flex: 1 1 auto;
                text-align: left;
                align-items: flex-start;
            }
            .flight-route {
                flex: 1 1 auto;
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
            .card, .search-section {
                padding: 1.2rem;
                border-radius: 20px;
            }
            .hero {
                padding: 1.5rem 1.2rem;
                border-radius: 20px;
            }
            .hero-image {
                display: none;
            }
            .trip-tabs {
                width: 100%;
                justify-content: center;
                padding: 0.25rem;
            }
            .tab {
                padding: 0.55rem 1rem;
                font-size: 0.8rem;
                flex: 1;
                text-align: center;
            }
            .price-value {
                font-size: 1.8rem;
            }
            .book-btn {
                font-size: 1rem;
                padding: 0.9rem 1.8rem;
            }
            .perks-row {
                flex-direction: column;
                align-items: flex-start;
                gap: 0.4rem;
                padding: 0.8rem 1rem;
            }
            .trust-note {
                gap: 0.8rem;
                font-size: 0.7rem;
            }
            .airlines-grid {
                grid-template-columns: repeat(2, 1fr);
            }
            .reviews-grid {
                grid-template-columns: 1fr;
            }
            .flight-route {
                flex-direction: column;
                gap: 0.5rem;
            }
            .flight-path {
                width: 100%;
            }
            .flight-path .line {
                width: 100%;
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
            .card, .search-section {
                padding: 1rem;
                border-radius: 18px;
            }
            .price-value {
                font-size: 1.6rem;
            }
            .book-btn {
                font-size: 0.95rem;
                padding: 0.8rem 1.5rem;
            }
            .airlines-grid {
                grid-template-columns: repeat(2, 1fr);
                gap: 0.6rem;
            }
            .airline-card img {
                width: 48px;
                height: 48px;
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
        .input-wrapper input:focus-visible,
        .passenger-selector:focus-visible,
        .book-btn:focus-visible,
        .tab:focus-visible,
        .select-btn:focus-visible {
            outline: 2px solid #0071e3;
            outline-offset: 2px;
       
