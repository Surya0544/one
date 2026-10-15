<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>SkyPass · ticket booking</title>
    <!-- Google Font & Font Awesome for clean icons -->
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Inter:opsz,wght@14..32,400;14..32,500;14..32,600;14..32,700&display=swap" rel="stylesheet">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0-beta3/css/all.min.css">
    <style>
        * {
            margin: 0;
            padding: 0;
            box-sizing: border-box;
            font-family: 'Inter', -apple-system, BlinkMacSystemFont, sans-serif;
        }

        body {
            background: linear-gradient(145deg, #f2f6fc 0%, #e9f0f8 100%);
            min-height: 100vh;
            display: flex;
            align-items: center;
            justify-content: center;
            padding: 1.5rem;
        }

        /* main booking card */
        .booking-card {
            max-width: 1000px;
            width: 100%;
            background: #ffffff;
            border-radius: 2rem;
            box-shadow: 0 25px 50px -12px rgba(0, 20, 50, 0.25);
            padding: 2rem 2rem 2rem 2rem;
            transition: all 0.2s ease;
        }

        /* header section */
        .app-header {
            display: flex;
            align-items: center;
            justify-content: space-between;
            margin-bottom: 2rem;
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
            width: 42px;
            height: 42px;
            border-radius: 14px;
            display: flex;
            align-items: center;
            justify-content: center;
            font-size: 1.5rem;
            box-shadow: 0 10px 15px -5px rgba(30, 60, 114, 0.3);
        }

        .logo-text {
            font-size: 1.65rem;
            font-weight: 700;
            letter-spacing: -0.03em;
            color: #0b1e3a;
        }

        .logo-text span {
            color: #2b6ed9;
        }

        .user-badge {
            background: #f0f5ff;
            border-radius: 40px;
            padding: 0.5rem 1.2rem 0.5rem 1rem;
            display: flex;
            align-items: center;
            gap: 0.6rem;
            color: #1e3c72;
            font-weight: 600;
            font-size: 0.95rem;
        }

        .user-badge i {
            font-size: 1.2rem;
            color: #2b6ed9;
        }

        /* trip type tabs */
        .trip-tabs {
            display: flex;
            gap: 0.5rem;
            background: #f1f6fe;
            padding: 0.35rem;
            border-radius: 50px;
            margin-bottom: 2.2rem;
            width: fit-content;
        }

        .tab {
            padding: 0.6rem 1.8rem;
            border-radius: 40px;
            font-weight: 600;
            font-size: 0.95rem;
            color: #5e6f8d;
            cursor: default;
            transition: all 0.15s;
        }

        .tab.active {
            background: #ffffff;
            color: #1e3c72;
            box-shadow: 0 4px 12px rgba(0, 0, 0, 0.04);
        }

        /* main form grid */
        .booking-form {
            display: flex;
            flex-direction: column;
            gap: 1.8rem;
        }

        .input-row {
            display: flex;
            flex-wrap: wrap;
            gap: 1rem;
            align-items: flex-end;
        }

        .input-group {
            flex: 1 1 180px;
            display: flex;
            flex-direction: column;
            gap: 0.5rem;
            position: relative;
        }

        .input-group label {
            font-size: 0.8rem;
            font-weight: 600;
            text-transform: uppercase;
            letter-spacing: 0.5px;
            color: #62748c;
            margin-left: 0.3rem;
        }

        .input-wrapper {
            display: flex;
            align-items: center;
            background: #f7faff;
            border: 1px solid #dbe4f0;
            border-radius: 18px;
            padding: 0.1rem 1rem 0.1rem 1.2rem;
            transition: all 0.2s ease;
        }

        .input-wrapper:focus-within {
            border-color: #2b6ed9;
            box-shadow: 0 0 0 4px rgba(43, 110, 217, 0.1);
            background: #ffffff;
        }

        .input-wrapper i {
            color: #6f8ab1;
            font-size: 1.1rem;
            width: 1.5rem;
            text-align: center;
        }

        .input-wrapper input {
            border: none;
            background: transparent;
            padding: 0.95rem 0.6rem 0.95rem 0.6rem;
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

        /* swap icon between from/to */
        .swap-icon {
            display: flex;
            align-items: center;
            justify-content: center;
            background: #eef4ff;
            border-radius: 50%;
            width: 44px;
            height: 44px;
            color: #2b6ed9;
            font-size: 1.1rem;
            margin-bottom: 0.2rem;
            cursor: default;
            border: 1px solid #d0ddeb;
            transition: 0.1s;
            flex-shrink: 0;
        }

        /* dates row + passenger */
        .dates-row {
            display: flex;
            flex-wrap: wrap;
            gap: 1rem;
            align-items: flex-end;
        }

        .date-group {
            flex: 1 1 150px;
        }

        .passenger-group {
            flex: 0 0 180px;
        }

        .passenger-selector {
            display: flex;
            align-items: center;
            justify-content: space-between;
            background: #f7faff;
            border: 1px solid #dbe4f0;
            border-radius: 18px;
            padding: 0.3rem 0.8rem 0.3rem 1.2rem;
            transition: 0.2s;
            cursor: default;
        }

        .passenger-selector i {
            color: #6f8ab1;
            font-size: 1.1rem;
            margin-right: 0.5rem;
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
            transition: 0.1s;
        }

        /* action row */
        .action-row {
            display: flex;
            flex-wrap: wrap;
            align-items: center;
            justify-content: space-between;
            gap: 1.5rem;
            margin-top: 0.8rem;
        }

        .price-summary {
            display: flex;
            flex-direction: column;
        }

        .price-label {
            font-size: 0.8rem;
            font-weight: 600;
            color: #62748c;
            letter-spacing: 0.3px;
        }

        .price-value {
            font-size: 2rem;
            font-weight: 700;
            color: #0b1e3a;
            letter-spacing: -0.02em;
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
            padding: 1rem 2.8rem;
            font-size: 1.1rem;
            font-weight: 600;
            color: white;
            display: flex;
            align-items: center;
            gap: 0.75rem;
            cursor: default;
            box-shadow: 0 15px 25px -8px rgba(30, 60, 114, 0.4);
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
            box-shadow: 0 20px 30px -8px rgba(30, 60, 114, 0.5);
            transform: scale(1.01);
        }

        .book-btn:active {
            transform: scale(0.99);
        }

        /* small extras */
        .note {
            display: flex;
            align-items: center;
            gap: 0.5rem;
            font-size: 0.8rem;
            color: #7c8fa8;
            margin-top: 1.5rem;
            justify-content: center;
            border-top: 1px solid #ecf2fa;
            padding-top: 1.5rem;
        }

        .note i {
            color: #2b6ed9;
            font-size: 0.9rem;
        }

        /* responsive */
        @media (max-width: 700px) {
            .booking-card {
                padding: 1.5rem;
            }
            .input-row {
                flex-direction: column;
                align-items: stretch;
            }
            .swap-icon {
                align-self: center;
                transform: rotate(90deg);
                margin: -0.5rem 0;
            }
            .action-row {
                flex-direction: column;
                align-items: stretch;
            }
            .book-btn {
                justify-content: center;
            }
            .logo-text {
                font-size: 1.4rem;
            }
        }

        /* pure styling touches */
        .trip-tabs .tab:not(.active) {
            background: transparent;
        }
        .trip-tabs .tab:not(.active):hover {
            background: #e4ebf7;
        }
        .passenger-selector:hover {
            border-color: #b8cae0;
            background: #ffffff;
        }
        .input-wrapper:hover {
            border-color: #b8cae0;
            background: #ffffff;
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
            <div class="user-badge">
                <i class="fas fa-user-circle"></i>
                <span>Alex Morgan</span>
            </div>
        </div>

        <!-- trip type tabs (static demo) -->
        <div class="trip-tabs">
            <div class="tab active">Round trip</div>
            <div class="tab">One way</div>
            <div class="tab">Multi-city</div>
        </div>

        <!-- main form -->
        <div class="booking-form">
            <!-- from / to row -->
            <div class="input-row">
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

            <!-- dates & passengers row -->
            <div class="dates-row">
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

            <!-- price + book button -->
            <div class="action-row">
                <div class="price-summary">
                    <span class="price-label">Total from</span>
                    <div class="price-value">$1,248 <small>USD</small></div>
                </div>
                <div class="book-btn">
                    <i class="fas fa-ticket-alt"></i> Book now
                </div>
            </div>

            <!-- small note -->
            <div class="note">
                <i class="fas fa-shield-alt"></i>
                <span>Free cancellation within 24h · No hidden fees</span>
            </div>
        </div>
    </div>
</body>
</html>
