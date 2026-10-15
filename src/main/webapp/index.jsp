<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Expedia-like · flight booking</title>
    <!-- Google Font & Font Awesome -->
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Inter:opsz,wght@14..32,400;14..32,500;14..32,600;14..32,700;14..32,800&display=swap" rel="stylesheet">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0-beta3/css/all.min.css">
    <style>
        * {
            margin: 0;
            padding: 0;
            box-sizing: border-box;
            font-family: 'Inter', -apple-system, BlinkMacSystemFont, sans-serif;
        }

        body {
            background: linear-gradient(135deg, #f0f5fb 0%, #e4edf6 100%);
            min-height: 100vh;
            display: flex;
            align-items: center;
            justify-content: center;
            padding: 1.5rem;
        }

        /* main booking card – clean, elevated */
        .booking-card {
            max-width: 1120px;
            width: 100%;
            background: #ffffff;
            border-radius: 2.5rem;
            box-shadow: 0 30px 60px -15px rgba(0, 20, 50, 0.25);
            padding: 2rem 2rem 2.2rem;
            transition: all 0.2s ease;
        }

        /* header – with user greeting & icons */
        .app-header {
            display: flex;
            align-items: center;
            justify-content: space-between;
            margin-bottom: 1.8rem;
            flex-wrap: wrap;
            gap: 1rem;
        }

        .logo-area {
            display: flex;
            align-items: center;
            gap: 0.75rem;
        }

        .logo-icon {
            background: #1e3c72;
            color: white;
            width: 46px;
            height: 46px;
            border-radius: 16px;
            display: flex;
            align-items: center;
            justify-content: center;
            font-size: 1.6rem;
            box-shadow: 0 8px 18px -5px rgba(30, 60, 114, 0.4);
        }

        .logo-text {
            font-size: 1.8rem;
            font-weight: 800;
            letter-spacing: -0.03em;
            color: #0b1e3a;
        }

        .logo-text span {
            color: #2b6ed9;
        }

        .header-actions {
            display: flex;
            align-items: center;
            gap: 0.8rem;
        }

        .icon-btn {
            background: #f1f6fe;
            border: none;
            width: 44px;
            height: 44px;
            border-radius: 50%;
            display: flex;
            align-items: center;
            justify-content: center;
            color: #1e3c72;
            font-size: 1.2rem;
            cursor: default;
            transition: 0.15s;
        }

        .icon-btn:hover {
            background: #e4ebf7;
        }

        .user-badge {
            background: #f0f5ff;
            border-radius: 40px;
            padding: 0.45rem 1.2rem 0.45rem 1rem;
            display: flex;
            align-items: center;
            gap: 0.6rem;
            color: #1e3c72;
            font-weight: 600;
            font-size: 0.95rem;
            cursor: default;
        }

        .user-badge i {
            font-size: 1.2rem;
            color: #2b6ed9;
        }

        /* Trip type tabs – Expedia style */
        .trip-tabs {
            display: flex;
            gap: 0.5rem;
            background: #f1f6fe;
            padding: 0.35rem;
            border-radius: 60px;
            margin-bottom: 2.2rem;
            width: fit-content;
        }

        .tab {
            padding: 0.65rem 2rem;
            border-radius: 40px;
            font-weight: 600;
            font-size: 0.95rem;
            color: #5e6f8d;
            cursor: default;
            transition: all 0.15s;
            white-space: nowrap;
        }

        .tab.active {
            background: #ffffff;
            color: #1e3c72;
            box-shadow: 0 4px 12px rgba(0, 0, 0, 0.05);
        }

        .tab:not(.active):hover {
            background: #e4ebf7;
        }

        /* main form grid */
        .booking-form {
            display: flex;
            flex-direction: column;
            gap: 1.6rem;
        }

        /* search bar row – like Expedia's big search */
        .search-row {
            display: flex;
            flex-wrap: wrap;
            gap: 1rem;
            align-items: flex-end;
            background: #ffffff;
            border-radius: 28px;
        }

        .input-group {
            flex: 1 1 180px;
            display: flex;
            flex-direction: column;
            gap: 0.45rem;
            position: relative;
        }

        .input-group label {
            font-size: 0.75rem;
            font-weight: 700;
            text-transform: uppercase;
            letter-spacing: 0.4px;
            color: #62748c;
            margin-left: 0.3rem;
        }

        .input-wrapper {
            display: flex;
            align-items: center;
            background: #f9fcff;
            border: 1.5px solid #dbe4f0;
            border-radius: 20px;
            padding: 0.1rem 0.8rem 0.1rem 1rem;
            transition: all 0.2s ease;
        }

        .input-wrapper:focus-within {
            border-color: #2b6ed9;
            box-shadow: 0 0 0 5px rgba(43, 110, 217, 0.12);
            background: #ffffff;
        }

        .input-wrapper i {
            color: #6f8ab1;
            font-size: 1.1rem;
            width: 1.6rem;
            text-align: center;
        }

        .input-wrapper input {
            border: none;
            background: transparent;
            padding: 1rem 0.5rem 1rem 0.5rem;
            font-size: 1rem;
            font-weight: 500;
            color: #0c1f3d;
            width: 100%;
            outline: none;
        }

        .input-wrapper input::placeholder {
            color: #a6b9d4;
            font-weight: 400;
            font-size: 0.95rem;
        }

        /* swap icon */
        .swap-icon {
            display: flex;
            align-items: center;
            justify-content: center;
            background: #eef4ff;
            border-radius: 50%;
            width: 46px;
            height: 46px;
            color: #2b6ed9;
            font-size: 1.1rem;
            margin-bottom: 0.2rem;
            cursor: default;
            border: 1.5px solid #d0ddeb;
            transition: 0.1s;
            flex-shrink: 0;
        }

        .swap-icon:hover {
            background: #e0eaf8;
        }

        /* dates + passenger row */
        .details-row {
            display: flex;
            flex-wrap: wrap;
            gap: 1rem;
            align-items: flex-end;
        }

        .date-group {
            flex: 1 1 160px;
        }

        .passenger-group {
            flex: 0 0 200px;
        }

        .passenger-selector {
            display: flex;
            align-items: center;
            justify-content: space-between;
            background: #f9fcff;
            border: 1.5px solid #dbe4f0;
            border-radius: 20px;
            padding: 0.35rem 1rem 0.35rem 1.2rem;
            transition: 0.2s;
            cursor: default;
        }

        .passenger-selector:hover {
            border-color: #b8cae0;
            background: #ffffff;
        }

        .passenger-selector i {
            color: #6f8ab1;
            font-size: 1.1rem;
            margin-right: 0.6rem;
        }

        .passenger-selector span {
            font-weight: 600;
            color: #0c1f3d;
            font-size: 1rem;
            flex: 1;
        }

        .passenger-selector .chevron {
            color: #95aec9;
            font-size: 0.9rem;
            margin-right: 0;
        }

        /* extra amenities row – like Expedia's perks */
        .perks-row {
            display: flex;
            flex-wrap: wrap;
            gap: 0.8rem 1.8rem;
            align-items: center;
            background: #f5faff;
            padding: 0.9rem 1.5rem;
            border-radius: 60px;
            margin: 0.2rem 0 0.4rem;
            border: 1px solid #e4eefb;
        }

        .perk-item {
            display: flex;
            align-items: center;
            gap: 0.6rem;
            font-size: 0.9rem;
            font-weight: 500;
            color: #1e3c72;
        }

        .perk-item i {
            color: #2b6ed9;
            font-size: 1rem;
        }

        /* price & book row */
        .action-row {
            display: flex;
            flex-wrap: wrap;
            align-items: center;
            justify-content: space-between;
            gap: 1.5rem;
            margin-top: 0.2rem;
        }

        .price-summary {
            display: flex;
            flex-direction: column;
        }

        .price-label {
            font-size: 0.8rem;
            font-weight: 700;
            color: #62748c;
            letter-spacing: 0.3px;
        }

        .price-value {
            font-size: 2.2rem;
            font-weight: 800;
            color: #0b1e3a;
            letter-spacing: -0.02em;
            line-height: 1.2;
        }

        .price-value small {
            font-size: 0.9rem;
            font-weight: 500;
            color: #748aa6;
            margin-left: 0.3rem;
        }

        .book-btn {
            background: #1e3c72;
            border: none;
            border-radius: 60px;
            padding: 1.1rem 3rem;
            font-size: 1.1rem;
            font-weight: 700;
            color: white;
            display: flex;
            align-items: center;
            gap: 0.75rem;
            cursor: default;
            box-shadow: 0 18px 30px -8px rgba(30, 60, 114, 0.4);
            transition: all 0.2s ease;
            border: 1px solid #ffffff20;
            letter-spacing: 0.2px;
        }

        .book-btn i {
            font-size: 1.2rem;
            transition: transform 0.15s;
        }

        .book-btn:hover {
            background: #15315e;
            box-shadow: 0 22px 35px -8px rgba(30, 60, 114, 0.5);
            transform: scale(1.01);
        }

        .book-btn:active {
            transform: scale(0.99);
        }

        /* trust note */
        .trust-note {
            display: flex;
            align-items: center;
            justify-content: center;
            gap: 1.8rem;
            flex-wrap: wrap;
            font-size: 0.8rem;
            color: #7c8fa8;
            margin-top: 1.4rem;
            padding-top: 1.4rem;
            border-top: 1px solid #ecf2fa;
        }

        .trust-item {
            display: flex;
            align-items: center;
            gap: 0.4rem;
        }

        .trust-item i {
            color: #2b6ed9;
            font-size: 0.9rem;
        }

        /* responsive */
        @media (max-width: 760px) {
            .booking-card {
                padding: 1.5rem;
            }
            .search-row {
                flex-direction: column;
                align-items: stretch;
            }
            .swap-icon {
                align-self: center;
                transform: rotate(90deg);
                margin: -0.4rem 0;
            }
            .details-row {
                flex-direction: column;
                align-items: stretch;
            }
            .passenger-group {
                flex: 1 1 auto;
            }
            .action-row {
                flex-direction: column;
                align-items: stretch;
            }
            .book-btn {
                justify-content: center;
            }
            .logo-text {
                font-size: 1.5rem;
            }
            .perks-row {
                border-radius: 30px;
                padding: 0.8rem 1.2rem;
            }
        }

        @media (max-width: 480px) {
            .trip-tabs {
                width: 100%;
                justify-content: center;
            }
            .tab {
                padding: 0.6rem 1.2rem;
                font-size: 0.85rem;
            }
            .header-actions .icon-btn {
                display: none;
            }
        }

        /* subtle animations */
        .input-wrapper,
        .passenger-selector {
            transition: border-color 0.15s, background 0.15s, box-shadow 0.15s;
        }

        /* custom scroll for any future dropdowns (just in case) */
        ::-webkit-scrollbar {
            width: 6px;
        }
        ::-webkit-scrollbar-track {
            background: #f1f6fe;
        }
        ::-webkit-scrollbar-thumb {
            background: #b8cae0;
            border-radius: 10px;
        }
    </style>
</head>
<body>
    <div class="booking-card">
        <!-- header with icons & user -->
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
                    <span>Alex Morgan</span>
                </div>
            </div>
        </div>

        <!-- trip type tabs – Expedia-like -->
        <div class="trip-tabs">
            <div class="tab active">Round trip</div>
            <div class="tab">One way</div>
            <div class="tab">Multi-city</div>
        </div>

        <!-- main form -->
        <div class="booking-form">
            <!-- from / to row with swap -->
            <div class="search-row">
                <div class="input-group">
                    <label>From</label>
                    <div class="input-wrapper">
                        <i class="fas fa-map-marker-alt"></i>
                        <input type="text" value="New York (JFK)" placeholder="City or airport">
                    </div>
                </div>

                <div class="swap-icon">
                    <i class="fas fa-arrow-right"></i>
                </div>

                <div class="input-group">
                    <label>To</label>
                    <div class="input-wrapper">
                        <i class="fas fa-location-dot"></i>
                        <input type="text" value="London (LHR)" placeholder="City or airport">
                    </div>
                </div>
            </div>

            <!-- dates & passengers -->
            <div class="details-row">
                <div class="input-group date-group">
                    <label>Departure</label>
                    <div class="input-wrapper">
                        <i class="fas fa-calendar-alt"></i>
                        <input type="text" value="2025-06-12" placeholder="Select date">
                    </div>
                </div>
                <div class="input-group date-group">
                    <label>Return</label>
                    <div class="input-wrapper">
                        <i class="fas fa-calendar-check"></i>
                        <input type="text" value="2025-06-19" placeholder="Select date">
                    </div>
                </div>
                <div class="input-group passenger-group">
                    <label>Passengers</label>
                    <div class="passenger-selector">
                        <i class="fas fa-user-friends"></i>
                        <span>2 adults, 1 child</span>
                        <i class="fas fa-chevron-down chevron"></i>
                    </div>
                </div>
            </div>

            <!-- perks / amenities row – Expedia style -->
            <div class="perks-row">
                <div class="perk-item">
                    <i class="fas fa-suitcase-rolling"></i>
                    <span>1 carry-on included</span>
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
                <div class="book-btn">
                    <i class="fas fa-ticket-alt"></i> Search flights
                </div>
            </div>

            <!-- trust note -->
            <div class="trust-note">
                <div class="trust-item">
                    <i class="fas fa-check-circle"></i>
                    <span>Free cancellation within 24h</span>
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
</body>
</html>
