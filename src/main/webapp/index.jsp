<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=yes, viewport-fit=cover">
    <title>SkyPass · Premium Flight Booking</title>
    <!-- Google Font & Font Awesome for clean icons -->
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

        body {
            background: #f5f5f7; /* Apple's signature light gray */
            min-height: 100vh;
            display: flex;
            align-items: center;
            justify-content: center;
            padding: 1rem;
            -webkit-font-smoothing: antialiased;
            -moz-osx-font-smoothing: grayscale;
            color: #1d1d1f;
            line-height: 1.4;
        }

        /* ---------- MAIN CARD – GLASS / PREMIUM ---------- */
        .booking-card {
            max-width: 1100px;
            width: 100%;
            background: rgba(255, 255, 255, 0.95);
            backdrop-filter: blur(20px);
            -webkit-backdrop-filter: blur(20px);
            border-radius: 32px;
            box-shadow: 
                0 4px 20px rgba(0, 0, 0, 0.04),
                0 20px 40px -12px rgba(0, 0, 0, 0.15),
                inset 0 1px 0 rgba(255, 255, 255, 0.8);
            padding: 2.2rem 2rem 2.4rem;
            transition: all 0.2s ease;
            border: 1px solid rgba(255, 255, 255, 0.5);
        }

        /* ---------- HEADER – CLEAN & MINIMAL ---------- */
        .app-header {
            display: flex;
            align-items: center;
            justify-content: space-between;
            margin-bottom: 1.8rem;
            flex-wrap: wrap;
            gap: 0.8rem;
        }

        .logo-area {
            display: flex;
            align-items: center;
            gap: 0.7rem;
        }

        .logo-icon {
            background: #0071e3; /* Apple blue */
            color: white;
            width: 44px;
            height: 44px;
            border-radius: 14px;
            display: flex;
            align-items: center;
            justify-content: center;
            font-size: 1.5rem;
            box-shadow: 0 6px 14px rgba(0, 113, 227, 0.25);
            transition: transform 0.15s;
        }

        .logo-icon:hover {
            transform: scale(1.02);
        }

        .logo-text {
            font-size: 1.7rem;
            font-weight: 700;
            letter-spacing: -0.03em;
            color: #1d1d1f;
        }

        .logo-text span {
            color: #0071e3;
            font-weight: 300;
        }

        .header-actions {
            display: flex;
            align-items: center;
            gap: 0.6rem;
        }

        .icon-btn {
            background: #f2f2f7;
            border: none;
            width: 42px;
            height: 42px;
            border-radius: 50%;
            display: flex;
            align-items: center;
            justify-content: center;
            color: #1d1d1f;
            font-size: 1.15rem;
            cursor: pointer;
            transition: all 0.15s ease;
            -webkit-tap-highlight-color: transparent;
            position: relative;
        }

        .icon-btn:hover {
            background: #e5e5ea;
            transform: scale(1.02);
        }

        .icon-btn:active {
            transform: scale(0.97);
        }

        .user-badge {
            background: #f2f2f7;
            border-radius: 40px;
            padding: 0.4rem 1.2rem 0.4rem 1rem;
            display: flex;
            align-items: center;
            gap: 0.5rem;
            color: #1d1d1f;
            font-weight: 500;
            font-size: 0.9rem;
            cursor: pointer;
            transition: background 0.15s;
            -webkit-tap-highlight-color: transparent;
        }

        .user-badge:hover {
            background: #e5e5ea;
        }

        .user-badge i {
            font-size: 1.2rem;
            color: #0071e3;
        }

        /* ---------- TRIP TYPE TABS – SEGMENTED CONTROL ---------- */
        .trip-tabs {
            display: flex;
            gap: 0.3rem;
            background: #f2f2f7;
            padding: 0.3rem;
            border-radius: 60px;
            margin-bottom: 2rem;
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

        /* ---------- MAIN FORM ---------- */
        .booking-form {
            display: flex;
            flex-direction: column;
            gap: 1.5rem;
        }

        /* ---------- SEARCH ROW – FROM / TO ---------- */
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
            padding: 0.95rem 0.5rem 0.95rem 0.5rem;
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

        /* swap icon – Apple style circular */
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

        .swap-icon:active {
            transform: rotate(90deg) scale(0.95);
        }

        /* ---------- DETAILS ROW – DATES & PASSENGERS ---------- */
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

        .passenger-selector:focus-within {
            border-color: #0071e3;
            box-shadow: 0 0 0 4px rgba(0, 113, 227, 0.12);
            background: #ffffff;
        }

        .passenger-selector i {
            color: #8e8e93;
            font-size: 1.05rem;
            margin-right: 0.5rem;
            transition: color 0.2s;
        }

        .passenger-selector:hover i {
            color: #0071e3;
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
            transition: transform 0.2s;
        }

        .passenger-selector:hover .chevron {
            transform: translateY(1px);
        }

        /* ---------- PERKS ROW – APPLE WALLET STYLE ---------- */
        .perks-row {
            display: flex;
            flex-wrap: wrap;
            gap: 0.6rem 1.5rem;
            align-items: center;
            background: #f9f9fb;
            padding: 0.8rem 1.4rem;
            border-radius: 20px;
            margin: 0.1rem 0 0.3rem;
            border: 1px solid #e5e5ea;
            transition: all 0.2s;
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

        /* ---------- ACTION ROW – PRICE & BUTTON ---------- */
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

        .book-btn i {
            font-size: 1.1rem;
            transition: transform 0.15s;
        }

        .book-btn:hover {
            background: #0077ed;
            box-shadow: 0 10px 26px rgba(0, 113, 227, 0.35);
            transform: scale(1.01);
        }

        .book-btn:active {
            transform: scale(0.98);
            box-shadow: 0 4px 12px rgba(0, 113, 227, 0.3);
        }

        /* ---------- TRUST NOTE – MINIMAL ---------- */
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
            transition: color 0.15s;
        }

        .trust-item:hover {
            color: #1d1d1f;
        }

        .trust-item i {
            color: #0071e3;
            font-size: 0.85rem;
        }

        /* ---------- RESPONSIVE – ALL PHONE MODELS ---------- */
        @media (max-width: 820px) {
            .booking-card {
                padding: 1.8rem 1.5rem 2rem;
                border-radius: 28px;
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
            .swap-icon:hover {
                transform: rotate(90deg) scale(1.02);
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
            .logo-text {
                font-size: 1.5rem;
            }
            .perks-row {
                border-radius: 18px;
                padding: 0.7rem 1.2rem;
                gap: 0.5rem 1.2rem;
            }
        }

        @media (max-width: 520px) {
            body {
                padding: 0.6rem;
            }
            .booking-card {
                padding: 1.5rem 1.1rem 1.6rem;
                border-radius: 24px;
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
            .header-actions .icon-btn {
                width: 38px;
                height: 38px;
                font-size: 1rem;
            }
            .user-badge {
                padding: 0.35rem 1rem 0.35rem 0.9rem;
                font-size: 0.8rem;
            }
            .user-badge i {
                font-size: 1.05rem;
            }
            .logo-icon {
                width: 40px;
                height: 40px;
                font-size: 1.3rem;
                border-radius: 12px;
            }
            .logo-text {
                font-size: 1.35rem;
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
            .input-wrapper input {
                padding: 0.85rem 0.4rem 0.85rem 0.4rem;
                font-size: 0.95rem;
            }
        }

        @media (max-width: 380px) {
            .booking-card {
                padding: 1.2rem 0.9rem 1.3rem;
            }
            .logo-text {
                font-size: 1.2rem;
            }
            .tab {
                font-size: 0.75rem;
                padding: 0.5rem 0.6rem;
            }
            .user-badge span {
                display: none;
            }
            .user-badge {
                padding: 0.4rem 0.8rem;
            }
            .user-badge i {
                margin-right: 0;
                font-size: 1.1rem;
            }
            .price-value {
                font-size: 1.6rem;
            }
            .book-btn {
                font-size: 0.95rem;
                padding: 0.8rem 1.5rem;
            }
            .perk-item {
                font-size: 0.78rem;
            }
        }

        /* safe area for iPhone notch / dynamic island */
        @supports (padding: max(0px)) {
            body {
                padding-left: max(1rem, env(safe-area-inset-left));
                padding-right: max(1rem, env(safe-area-inset-right));
                padding-top: max(1rem, env(safe-area-inset-top));
                padding-bottom: max(1rem, env(safe-area-inset-bottom));
            }
        }

        /* subtle tap highlight removal for mobile */
        .tab, .icon-btn, .user-badge, .swap-icon, .passenger-selector, .book-btn {
            -webkit-tap-highlight-color: transparent;
        }

        /* focus-visible for accessibility */
        .input-wrapper input:focus-visible,
        .passenger-selector:focus-visible,
        .book-btn:focus-visible,
        .tab:focus-visible,
        .icon-btn:focus-visible {
            outline: 2px solid #0071e3;
            outline-offset: 2px;
        }

        /* smooth transitions */
        .tab, .icon-btn, .user-badge, .swap-icon, .passenger-selector, .book-btn, .input-wrapper {
            transition: all 0.2s cubic-bezier(0.25, 0.1, 0.25, 1);
        }

        /* subtle depth on card */
        .booking-card {
            position: relative;
            overflow: hidden;
        }

        .booking-card::after {
            content: '';
            position: absolute;
            top: 0;
            left: 0;
            right: 0;
            height: 1px;
            background: linear-gradient(90deg, transparent, rgba(255, 255, 255, 0.8), transparent);
            pointer-events: none;
        }
    </style>
</head>
<body>
    <div class="booking-card">
        <!-- header -->
        <div class="app-header">
            <div class="logo-area">
                <div class="logo-icon">
                    <i class="fas fa-plane-departure"></i>
                </div>
                <div class="logo-text">Sky<span>Pass</span></div>
            </div>
            <div class="header-actions">
                <div class="icon-btn" title="Trips">
                    <i class="fas fa-suitcase"></i>
                </div>
                <div class="icon-btn" title="Notifications">
                    <i class="fas fa-bell"></i>
                </div>
                <div class="user-badge">
                    <i class="fas fa-user-circle"></i>
                    <span>Alex</span>
                </div>
            </div>
        </div>

        <!-- trip type tabs -->
        <div class="trip-tabs" role="tablist" aria-label="Trip type">
            <div class="tab active" role="tab" aria-selected="true" tabindex="0">Round trip</div>
            <div class="tab" role="tab" aria-selected="false" tabindex="0">One way</div>
            <div class="tab" role="tab" aria-selected="false" tabindex="0">Multi-city</div>
        </div>

        <!-- main form -->
        <div class="booking-form">
            <!-- from / to row -->
            <div class="search-row">
                <div class="input-group">
                    <label for="from">From</label>
                    <div class="input-wrapper">
                        <i class="fas fa-map-marker-alt"></i>
                        <input type="text" id="from" value="New York (JFK)" placeholder="City or airport" autocomplete="off">
                    </div>
                </div>

                <div class="swap-icon" role="button" aria-label="Swap origin and destination" tabindex="0">
                    <i class="fas fa-arrow-right"></i>
                </div>

                <div class="input-group">
                    <label for="to">To</label>
                    <div class="input-wrapper">
                        <i class="fas fa-location-dot"></i>
                        <input type="text" id="to" value="London (LHR)" placeholder="City or airport" autocomplete="off">
                    </div>
                </div>
            </div>

            <!-- dates & passengers -->
            <div class="details-row">
                <div class="input-group date-group">
                    <label for="departure">Departure</label>
                    <div class="input-wrapper">
                        <i class="fas fa-calendar-alt"></i>
                        <input type="text" id="departure" value="2025-06-12" placeholder="Select date" autocomplete="off">
                    </div>
                </div>
                <div class="input-group date-group">
                    <label for="return">Return</label>
                    <div class="input-wrapper">
                        <i class="fas fa-calendar-check"></i>
                        <input type="text" id="return" value="2025-06-19" placeholder="Select date" autocomplete="off">
                    </div>
                </div>
                <div class="input-group passenger-group">
                    <label>Passengers</label>
                    <div class="passenger-selector" role="button" aria-label="Select passengers" tabindex="0">
                        <i class="fas fa-user-friends"></i>
                        <span>2 adults, 1 child</span>
                        <i class="fas fa-chevron-down chevron"></i>
                    </div>
                </div>
            </div>

            <!-- perks / amenities row -->
            <div class="perks-row">
                <div class="perk-item">
                    <i class="fas fa-suitcase-rolling"></i>
                    <span>Carry-on included</span>
                </div>
                <div class="perk-item">
                    <i class="fas fa-wifi"></i>
                    <span>Wi-Fi on board</span>
                </div>
                <div class="perk-item">
                    <i class="fas fa-clock"></i>
                    <span>Flexible change</span>
                </div>
                <div class="perk-item">
                    <i class="fas fa-shield-alt"></i>
                    <span>No hidden fees</span>
                </div>
            </div>

            <!-- price + book button -->
            <div class="action-row">
                <div class="price-summary">
                    <span class="price-label">Total from</span>
                    <div class="price-value">$1,248 <small>USD</small></div>
                </div>
                <button class="book-btn" aria-label="Search flights">
                    <i class="fas fa-ticket-alt"></i> Search flights
                </button>
            </div>

            <!-- trust note -->
            <div class="trust-note">
                <div class="trust-item">
                    <i class="fas fa-check-circle"></i>
                    <span>Free cancellation 24h</span>
                </div>
                <div class="trust-item">
                    <i class="fas fa-lock"></i>
                    <span>Secure payment</span>
                </div>
                <div class="trust-item">
                    <i class="fas fa-headset"></i>
                    <span>24/7 support</span>
                </div>
            </div>
        </div>
    </div>

    <!-- optional: micro-interaction script for tab switching demo (pure UX) -->
    <script>
        (function() {
            // Tab switching for demo – purely visual, no backend
            const tabs = document.querySelectorAll('.tab');
            tabs.forEach(tab => {
                tab.addEventListener('click', function() {
                    tabs.forEach(t => {
                        t.classList.remove('active');
                        t.setAttribute('aria-selected', 'false');
                    });
                    this.classList.add('active');
                    this.setAttribute('aria-selected', 'true');
                });
                // keyboard support
                tab.addEventListener('keydown', function(e) {
                    if (e.key === 'Enter' || e.key === ' ') {
                        e.preventDefault();
                        this.click();
                    }
                });
            });

            // Swap icon rotation for fun (visual only)
            const swapIcon = document.querySelector('.swap-icon');
            if (swapIcon) {
                swapIcon.addEventListener('click', function() {
                    this.style.transform = 'rotate(180deg)';
                    setTimeout(() => {
                        this.style.transform = '';
                    }, 200);
                });
                swapIcon.addEventListener('keydown', function(e) {
                    if (e.key === 'Enter' || e.key === ' ') {
                        e.preventDefault();
                        this.click();
                    }
                });
            }

            // Passenger selector click feedback (visual only)
            const passengerSelector = document.querySelector('.passenger-selector');
            if (passengerSelector) {
                passengerSelector.addEventListener('click', function() {
                    this.style.transform = 'scale(0.99)';
                    setTimeout(() => {
                        this.style.transform = '';
                    }, 120);
                });
                passengerSelector.addEventListener('keydown', function(e) {
                    if (e.key === 'Enter' || e.key === ' ') {
                        e.preventDefault();
                        this.click();
                    }
                });
            }

            // Button ripple / press effect is handled by CSS active state
        })();
    </script>
</body>
</html>
