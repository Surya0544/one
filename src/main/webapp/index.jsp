<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8" />
<meta name="viewport" content="width=device-width, initial-scale=1.0" />
<meta name="theme-color" content="#6366f1" />
<title>ShopHub — Modern E-Commerce Store</title>
<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link href="https://fonts.googleapis.com/css2?family=Inter:wght@400;500;600;700;800;900&display=swap" rel="stylesheet">
<style>
  /* ============================================================
     DESIGN TOKENS (Light + Dark)
     ============================================================ */
  :root {
    --primary: #6366f1;
    --primary-hover: #4f46e5;
    --primary-soft: rgba(99, 102, 241, 0.1);
    --accent: #f59e0b;
    --danger: #ef4444;
    --success: #10b981;
    --pink: #ec4899;

    --bg: #f7f8fc;
    --bg-elevated: #ffffff;
    --bg-subtle: #f1f3f9;
    --border: #e5e7eb;
    --border-strong: #d1d5db;

    --text: #0f172a;
    --text-secondary: #475569;
    --text-muted: #94a3b8;

    --radius-sm: 8px;
    --radius: 14px;
    --radius-lg: 20px;
    --radius-xl: 28px;

    --shadow-xs: 0 1px 2px rgba(15, 23, 42, 0.05);
    --shadow-sm: 0 2px 6px rgba(15, 23, 42, 0.06);
    --shadow-md: 0 8px 20px rgba(15, 23, 42, 0.08);
    --shadow-lg: 0 20px 40px rgba(15, 23, 42, 0.12);
    --shadow-xl: 0 30px 60px rgba(15, 23, 42, 0.18);

    --transition: 0.25s cubic-bezier(0.4, 0, 0.2, 1);
  }

  [data-theme="dark"] {
    --bg: #0b1020;
    --bg-elevated: #161b30;
    --bg-subtle: #1e2540;
    --border: #2a3350;
    --border-strong: #3b4670;

    --text: #f1f5f9;
    --text-secondary: #cbd5e1;
    --text-muted: #7d879c;

    --shadow-xs: 0 1px 2px rgba(0, 0, 0, 0.4);
    --shadow-sm: 0 2px 6px rgba(0, 0, 0, 0.4);
    --shadow-md: 0 8px 20px rgba(0, 0, 0, 0.45);
    --shadow-lg: 0 20px 40px rgba(0, 0, 0, 0.55);
    --shadow-xl: 0 30px 60px rgba(0, 0, 0, 0.7);
  }

  /* ============================================================
     RESET & BASE
     ============================================================ */
  * { margin: 0; padding: 0; box-sizing: border-box; -webkit-tap-highlight-color: transparent; }
  html { scroll-behavior: smooth; }
  body {
    font-family: 'Inter', system-ui, -apple-system, sans-serif;
    background: var(--bg);
    color: var(--text);
    line-height: 1.6;
    transition: background var(--transition), color var(--transition);
    overflow-x: hidden;
  }
  img { display: block; max-width: 100%; }
  button { font-family: inherit; }
  ::selection { background: var(--primary); color: white; }

  /* Custom Scrollbar */
  ::-webkit-scrollbar { width: 10px; height: 10px; }
  ::-webkit-scrollbar-track { background: var(--bg-subtle); }
  ::-webkit-scrollbar-thumb { background: var(--border-strong); border-radius: 50px; }
  ::-webkit-scrollbar-thumb:hover { background: var(--primary); }

  /* ============================================================
     HEADER
     ============================================================ */
  .header {
    position: sticky; top: 0; z-index: 100;
    background: color-mix(in srgb, var(--bg-elevated) 85%, transparent);
    backdrop-filter: saturate(180%) blur(16px);
    -webkit-backdrop-filter: saturate(180%) blur(16px);
    border-bottom: 1px solid var(--border);
    transition: background var(--transition), border-color var(--transition);
  }
  .header-inner {
    max-width: 1320px; margin: 0 auto;
    padding: 0 24px; height: 72px;
    display: flex; align-items: center; gap: 20px;
  }
  .logo {
    display: flex; align-items: center; gap: 10px;
    font-size: 1.35rem; font-weight: 800;
    color: var(--text); text-decoration: none;
    letter-spacing: -0.02em;
    flex-shrink: 0;
  }
  .logo-mark {
    width: 38px; height: 38px;
    background: linear-gradient(135deg, var(--primary), var(--pink));
    border-radius: 12px;
    display: flex; align-items: center; justify-content: center;
    font-size: 1.1rem;
    box-shadow: 0 6px 16px rgba(99, 102, 241, 0.35);
    transition: transform var(--transition);
  }
  .logo:hover .logo-mark { transform: rotate(-8deg) scale(1.05); }
  .logo-text .highlight { color: var(--primary); }

  .search-wrap { flex: 1; max-width: 520px; position: relative; }
  .search-wrap .search-icon {
    position: absolute; left: 14px; top: 50%;
    transform: translateY(-50%);
    color: var(--text-muted); font-size: 1rem; pointer-events: none;
  }
  .search-wrap input {
    width: 100%; padding: 12px 44px 12px 42px;
    border: 1.5px solid var(--border);
    background: var(--bg-subtle);
    color: var(--text);
    border-radius: 100px;
    font-size: 0.92rem; font-family: inherit;
    transition: all var(--transition);
  }
  .search-wrap input::placeholder { color: var(--text-muted); }
  .search-wrap input:focus {
    outline: none;
    border-color: var(--primary);
    background: var(--bg-elevated);
    box-shadow: 0 0 0 4px var(--primary-soft);
  }
  .search-clear {
    position: absolute; right: 12px; top: 50%; transform: translateY(-50%);
    background: none; border: none; color: var(--text-muted);
    cursor: pointer; font-size: 1.1rem; display: none;
    padding: 4px; border-radius: 50%;
  }
  .search-clear:hover { background: var(--bg-subtle); color: var(--text); }

  .header-actions { display: flex; align-items: center; gap: 8px; flex-shrink: 0; }
  .icon-btn {
    width: 44px; height: 44px;
    display: flex; align-items: center; justify-content: center;
    background: transparent; border: none; border-radius: 12px;
    color: var(--text-secondary); cursor: pointer;
    position: relative; font-size: 1.15rem;
    transition: all var(--transition);
  }
  .icon-btn:hover { background: var(--bg-subtle); color: var(--primary); transform: translateY(-1px); }
  .icon-btn .badge {
    position: absolute; top: 4px; right: 4px;
    min-width: 20px; height: 20px; padding: 0 5px;
    background: var(--danger); color: white;
    font-size: 0.68rem; font-weight: 700;
    border-radius: 50px;
    display: flex; align-items: center; justify-content: center;
    border: 2px solid var(--bg-elevated);
    animation: pop 0.3s ease;
  }
  @keyframes pop {
    0% { transform: scale(0.5); }
    50% { transform: scale(1.2); }
    100% { transform: scale(1); }
  }

  /* ============================================================
     HERO
     ============================================================ */
  .hero {
    position: relative;
    padding: 90px 24px 100px;
    background: linear-gradient(135deg, #6366f1 0%, #8b5cf6 50%, #ec4899 100%);
    overflow: hidden;
    color: white;
  }
  .hero::before, .hero::after {
    content: ''; position: absolute;
    border-radius: 50%; filter: blur(80px); opacity: 0.5;
  }
  .hero::before { width: 400px; height: 400px; background: #a855f7; top: -200px; left: -100px; }
  .hero::after { width: 500px; height: 500px; background: #f59e0b; bottom: -250px; right: -150px; }
  .hero-inner {
    max-width: 1320px; margin: 0 auto;
    position: relative; z-index: 1;
    display: grid; grid-template-columns: 1.2fr 1fr; gap: 60px; align-items: center;
  }
  .hero-tag {
    display: inline-flex; align-items: center; gap: 8px;
    background: rgba(255,255,255,0.15);
    backdrop-filter: blur(10px);
    border: 1px solid rgba(255,255,255,0.25);
    padding: 8px 16px; border-radius: 100px;
    font-size: 0.85rem; font-weight: 600;
    margin-bottom: 24px;
    animation: fadeInUp 0.6s ease;
  }
  .hero-tag .dot {
    width: 8px; height: 8px; border-radius: 50%;
    background: #4ade80;
    box-shadow: 0 0 12px #4ade80;
    animation: pulse 2s infinite;
  }
  @keyframes pulse {
    0%, 100% { opacity: 1; transform: scale(1); }
    50% { opacity: 0.6; transform: scale(1.3); }
  }
  .hero h1 {
    font-size: clamp(2rem, 5vw, 3.6rem);
    font-weight: 900; line-height: 1.1;
    letter-spacing: -0.03em;
    margin-bottom: 20px;
    animation: fadeInUp 0.6s ease 0.1s both;
  }
  .hero h1 .gradient {
    background: linear-gradient(90deg, #fbbf24, #f472b6);
    -webkit-background-clip: text; background-clip: text;
    -webkit-text-fill-color: transparent;
  }
  .hero p {
    font-size: 1.1rem; opacity: 0.92;
    max-width: 520px; margin-bottom: 32px;
    animation: fadeInUp 0.6s ease 0.2s both;
  }
  .hero-cta {
    display: flex; gap: 14px; flex-wrap: wrap;
    animation: fadeInUp 0.6s ease 0.3s both;
  }
  .btn {
    display: inline-flex; align-items: center; gap: 10px;
    padding: 14px 28px; border-radius: 100px;
    font-weight: 600; font-size: 0.95rem;
    border: none; cursor: pointer;
    transition: all var(--transition);
    text-decoration: none;
    font-family: inherit;
  }
  .btn-primary {
    background: white; color: var(--primary);
    box-shadow: 0 10px 30px rgba(0,0,0,0.2);
  }
  .btn-primary:hover { transform: translateY(-2px); box-shadow: 0 15px 40px rgba(0,0,0,0.3); }
  .btn-ghost {
    background: rgba(255,255,255,0.12);
    border: 1px solid rgba(255,255,255,0.3);
    color: white;
    backdrop-filter: blur(10px);
  }
  .btn-ghost:hover { background: rgba(255,255,255,0.2); }

  .hero-stats {
    display: flex; gap: 32px; margin-top: 44px;
    animation: fadeInUp 0.6s ease 0.4s both;
  }
  .hero-stat strong { display: block; font-size: 1.6rem; font-weight: 800; }
  .hero-stat span { font-size: 0.85rem; opacity: 0.8; }

  .hero-visual {
    position: relative; height: 400px;
    display: flex; align-items: center; justify-content: center;
    animation: fadeInUp 0.8s ease 0.3s both;
  }
  .float-card {
    position: absolute;
    background: white; color: var(--text);
    padding: 16px; border-radius: 18px;
    box-shadow: 0 25px 50px rgba(0,0,0,0.25);
    display: flex; align-items: center; gap: 12px;
    font-weight: 600; font-size: 0.85rem;
    animation: float 4s ease-in-out infinite;
  }
  .float-card.fc1 { top: 20px; left: 0; animation-delay: 0s; }
  .float-card.fc2 { top: 50%; right: 0; transform: translateY(-50%); animation-delay: 1s; }
  .float-card.fc3 { bottom: 20px; left: 10%; animation-delay: 2s; }
  .float-card img { width: 44px; height: 44px; border-radius: 10px; object-fit: cover; }
  .float-card .info small { display: block; color: var(--text-muted); font-weight: 500; font-size: 0.75rem; }
  .float-card .info strong { font-size: 0.9rem; }
  @keyframes float {
    0%, 100% { transform: translateY(0); }
    50% { transform: translateY(-12px); }
  }
  .float-card.fc2 { animation-name: float2; }
  @keyframes float2 {
    0%, 100% { transform: translateY(-50%); }
    50% { transform: translateY(-62%); }
  }

  @keyframes fadeInUp {
    from { opacity: 0; transform: translateY(24px); }
    to { opacity: 1; transform: translateY(0); }
  }

  /* ============================================================
     FEATURES STRIP
     ============================================================ */
  .features {
    max-width: 1320px; margin: -40px auto 0;
    padding: 0 24px; position: relative; z-index: 2;
  }
  .features-grid {
    display: grid; grid-template-columns: repeat(4, 1fr); gap: 0;
    background: var(--bg-elevated);
    border-radius: var(--radius-lg);
    box-shadow: var(--shadow-md);
    overflow: hidden;
    border: 1px solid var(--border);
  }
  .feature {
    padding: 24px; display: flex; align-items: center; gap: 14px;
    border-right: 1px solid var(--border);
    transition: background var(--transition);
  }
  .feature:last-child { border-right: none; }
  .feature:hover { background: var(--bg-subtle); }
  .feature-icon {
    width: 44px; height: 44px; border-radius: 12px;
    background: var(--primary-soft); color: var(--primary);
    display: flex; align-items: center; justify-content: center;
    font-size: 1.3rem; flex-shrink: 0;
  }
  .feature h4 { font-size: 0.92rem; font-weight: 700; margin-bottom: 2px; }
  .feature p { font-size: 0.78rem; color: var(--text-muted); }

  /* ============================================================
     MAIN / TOOLBAR
     ============================================================ */
  .container { max-width: 1320px; margin: 0 auto; padding: 60px 24px 40px; }

  .toolbar {
    display: flex; justify-content: space-between; align-items: center;
    gap: 16px; margin-bottom: 32px; flex-wrap: wrap;
  }
  .toolbar-title h2 {
    font-size: 1.6rem; font-weight: 800; letter-spacing: -0.02em;
    display: flex; align-items: center; gap: 10px;
  }
  .toolbar-title p { color: var(--text-muted); font-size: 0.9rem; margin-top: 2px; }

  .categories {
    display: flex; gap: 8px; overflow-x: auto;
    padding-bottom: 4px; scrollbar-width: none;
  }
  .categories::-webkit-scrollbar { display: none; }
  .cat-btn {
    padding: 10px 20px; border-radius: 100px;
    background: var(--bg-elevated);
    border: 1.5px solid var(--border);
    color: var(--text-secondary);
    font-weight: 600; font-size: 0.85rem;
    cursor: pointer; transition: all var(--transition);
    white-space: nowrap;
  }
  .cat-btn:hover { border-color: var(--primary); color: var(--primary); }
  .cat-btn.active {
    background: var(--primary); color: white; border-color: var(--primary);
    box-shadow: 0 6px 16px rgba(99, 102, 241, 0.35);
  }

  .sort-wrap { position: relative; }
  .sort-wrap select {
    appearance: none;
    padding: 10px 40px 10px 16px;
    border: 1.5px solid var(--border);
    background: var(--bg-elevated);
    color: var(--text);
    border-radius: 100px; font-size: 0.85rem;
    font-weight: 600; cursor: pointer;
    transition: all var(--transition);
    font-family: inherit;
  }
  .sort-wrap select:focus { outline: none; border-color: var(--primary); }
  .sort-wrap::after {
    content: '▾'; position: absolute; right: 16px; top: 50%;
    transform: translateY(-50%); pointer-events: none;
    color: var(--text-muted); font-size: 0.8rem;
  }

  /* ============================================================
     PRODUCT GRID
     ============================================================ */
  .grid {
    display: grid;
    grid-template-columns: repeat(auto-fill, minmax(250px, 1fr));
    gap: 24px;
  }
  .product-card {
    background: var(--bg-elevated);
    border-radius: var(--radius-lg);
    overflow: hidden;
    border: 1px solid var(--border);
    transition: all var(--transition);
    display: flex; flex-direction: column;
    position: relative;
    animation: cardIn 0.5s ease both;
  }
  @keyframes cardIn {
    from { opacity: 0; transform: translateY(20px); }
    to { opacity: 1; transform: translateY(0); }
  }
  .product-card:hover {
    transform: translateY(-6px);
    box-shadow: var(--shadow-lg);
    border-color: transparent;
  }
  .product-img-wrap {
    position: relative;
    aspect-ratio: 1 / 1;
    overflow: hidden;
    background: var(--bg-subtle);
  }
  .product-img {
    width: 100%; height: 100%;
    object-fit: cover;
    transition: transform 0.6s cubic-bezier(0.4, 0, 0.2, 1);
  }
  .product-card:hover .product-img { transform: scale(1.08); }

  .wishlist-btn {
    position: absolute; top: 12px; right: 12px;
    width: 38px; height: 38px;
    background: rgba(255,255,255,0.9);
    backdrop-filter: blur(10px);
    border: none; border-radius: 50%;
    cursor: pointer; font-size: 1rem;
    display: flex; align-items: center; justify-content: center;
    color: var(--text-secondary);
    transition: all var(--transition);
    box-shadow: 0 4px 12px rgba(0,0,0,0.1);
  }
  [data-theme="dark"] .wishlist-btn { background: rgba(22, 27, 48, 0.9); }
  .wishlist-btn:hover { transform: scale(1.1); color: var(--pink); }
  .wishlist-btn.active { color: var(--pink); }
  .wishlist-btn.active::before { content: '❤️'; }
  .wishlist-btn::before { content: '🤍'; }

  .product-badge {
    position: absolute; top: 12px; left: 12px;
    padding: 5px 12px;
    background: linear-gradient(135deg, var(--primary), var(--pink));
    color: white; font-size: 0.7rem; font-weight: 700;
    border-radius: 100px;
    text-transform: uppercase; letter-spacing: 0.05em;
    box-shadow: 0 4px 12px rgba(99, 102, 241, 0.4);
  }

  .product-body { padding: 18px; display: flex; flex-direction: column; flex: 1; }
  .product-cat {
    font-size: 0.7rem; font-weight: 700;
    text-transform: uppercase; letter-spacing: 0.08em;
    color: var(--primary); margin-bottom: 6px;
  }
  .product-name {
    font-size: 1rem; font-weight: 700;
    margin-bottom: 6px; line-height: 1.35;
    display: -webkit-box; -webkit-line-clamp: 2;
    -webkit-box-orient: vertical; overflow: hidden;
  }
  .product-desc {
    font-size: 0.83rem; color: var(--text-muted);
    margin-bottom: 12px;
    display: -webkit-box; -webkit-line-clamp: 2;
    -webkit-box-orient: vertical; overflow: hidden;
  }
  .product-rating {
    display: flex; align-items: center; gap: 6px;
    margin-bottom: 14px; font-size: 0.83rem;
  }
  .stars { color: var(--accent); letter-spacing: 1px; font-size: 0.9rem; }
  .rating-text { color: var(--text-muted); font-weight: 500; }

  .product-footer {
    display: flex; justify-content: space-between; align-items: center;
    margin-top: auto; padding-top: 14px;
    border-top: 1px dashed var(--border);
  }
  .price-group { display: flex; flex-direction: column; }
  .price-current {
    font-size: 1.2rem; font-weight: 800;
    color: var(--text); letter-spacing: -0.02em;
  }
  .price-old {
    font-size: 0.78rem; color: var(--text-muted);
    text-decoration: line-through; font-weight: 500;
  }
  .add-btn {
    width: 42px; height: 42px;
    background: var(--primary); color: white;
    border: none; border-radius: 12px;
    cursor: pointer; font-size: 1.2rem;
    display: flex; align-items: center; justify-content: center;
    transition: all var(--transition);
    box-shadow: 0 4px 12px rgba(99, 102, 241, 0.3);
  }
  .add-btn:hover { background: var(--primary-hover); transform: scale(1.08); box-shadow: 0 6px 20px rgba(99,102,241,0.5); }
  .add-btn:active { transform: scale(0.95); }

  /* ============================================================
     SKELETON
     ============================================================ */
  .skeleton-card {
    background: var(--bg-elevated);
    border-radius: var(--radius-lg);
    border: 1px solid var(--border);
    overflow: hidden;
  }
  .sk-img { aspect-ratio: 1; background: var(--bg-subtle); }
  .sk-body { padding: 18px; }
  .sk-line {
    height: 12px; border-radius: 6px;
    background: linear-gradient(90deg, var(--bg-subtle) 0%, var(--border) 50%, var(--bg-subtle) 100%);
    background-size: 200% 100%;
    animation: shimmer 1.4s infinite;
    margin-bottom: 10px;
  }
  .sk-line.w60 { width: 60%; }
  .sk-line.w80 { width: 80%; }
  .sk-line.w40 { width: 40%; }
  @keyframes shimmer {
    0% { background-position: 200% 0; }
    100% { background-position: -200% 0; }
  }

  /* ============================================================
     EMPTY STATE
     ============================================================ */
  .empty-state {
    text-align: center; padding: 80px 20px;
    grid-column: 1 / -1;
  }
  .empty-state-icon {
    font-size: 4rem; margin-bottom: 16px; opacity: 0.5;
  }
  .empty-state h3 { font-size: 1.25rem; margin-bottom: 8px; font-weight: 700; }
  .empty-state p { color: var(--text-muted); margin-bottom: 20px; }

  /* ============================================================
     CART SIDEBAR
     ============================================================ */
  .overlay {
    position: fixed; inset: 0;
    background: rgba(15, 23, 42, 0.55);
    backdrop-filter: blur(4px);
    opacity: 0; visibility: hidden;
    transition: all var(--transition);
    z-index: 200;
  }
  .overlay.open { opacity: 1; visibility: visible; }

  .cart-sidebar {
    position: fixed; top: 0; right: 0;
    width: 440px; max-width: 100%; height: 100vh;
    background: var(--bg-elevated);
    transform: translateX(100%);
    transition: transform 0.4s cubic-bezier(0.4, 0, 0.2, 1);
    z-index: 201;
    display: flex; flex-direction: column;
    box-shadow: -20px 0 60px rgba(15, 23, 42, 0.15);
  }
  .cart-sidebar.open { transform: translateX(0); }

  .cart-header {
    padding: 22px 24px;
    border-bottom: 1px solid var(--border);
    display: flex; align-items: center; justify-content: space-between;
  }
  .cart-header h2 {
    font-size: 1.2rem; font-weight: 800;
    display: flex; align-items: center; gap: 10px;
  }
  .cart-header h2 .count-pill {
    background: var(--primary-soft); color: var(--primary);
    font-size: 0.75rem; font-weight: 700;
    padding: 3px 10px; border-radius: 100px;
  }
  .close-btn {
    width: 36px; height: 36px;
    background: var(--bg-subtle); border: none;
    border-radius: 10px; cursor: pointer;
    display: flex; align-items: center; justify-content: center;
    color: var(--text-secondary); font-size: 1.2rem;
    transition: all var(--transition);
  }
  .close-btn:hover { background: var(--danger); color: white; transform: rotate(90deg); }

  .cart-items { flex: 1; overflow-y: auto; padding: 16px 24px; }

  .cart-item {
    display: flex; gap: 14px; padding: 14px 0;
    border-bottom: 1px solid var(--border);
    animation: fadeInUp 0.3s ease;
  }
  .cart-item:last-child { border-bottom: none; }
  .cart-item img {
    width: 76px; height: 76px; object-fit: cover;
    border-radius: 12px; flex-shrink: 0;
    background: var(--bg-subtle);
  }
  .cart-item-info { flex: 1; min-width: 0; }
  .cart-item-info h4 {
    font-size: 0.9rem; font-weight: 700; margin-bottom: 4px;
    overflow: hidden; text-overflow: ellipsis; white-space: nowrap;
  }
  .cart-item-price { color: var(--primary); font-weight: 700; font-size: 0.88rem; margin-bottom: 8px; }

  .qty-controls {
    display: inline-flex; align-items: center;
    background: var(--bg-subtle);
    border-radius: 100px; padding: 3px;
    gap: 2px;
  }
  .qty-btn {
    width: 28px; height: 28px; border-radius: 50%;
    background: transparent; border: none;
    cursor: pointer; color: var(--text);
    display: flex; align-items: center; justify-content: center;
    font-size: 0.95rem; font-weight: 700;
    transition: all var(--transition);
  }
  .qty-btn:hover { background: var(--primary); color: white; }
  .qty-val {
    min-width: 28px; text-align: center;
    font-weight: 700; font-size: 0.85rem;
  }
  .cart-item-right {
    display: flex; flex-direction: column;
    align-items: flex-end; justify-content: space-between;
  }
  .cart-item-total {
    font-weight: 800; font-size: 0.95rem;
    letter-spacing: -0.02em;
  }
  .remove-btn {
    width: 30px; height: 30px;
    background: transparent; border: none;
    color: var(--text-muted); cursor: pointer;
    border-radius: 8px; font-size: 0.9rem;
    transition: all var(--transition);
  }
  .remove-btn:hover { background: rgba(239, 68, 68, 0.1); color: var(--danger); }

  .empty-cart {
    flex: 1; display: flex; flex-direction: column;
    align-items: center; justify-content: center;
    gap: 14px; padding: 40px;
    text-align: center;
  }
  .empty-cart-icon {
    width: 80px; height: 80px; border-radius: 50%;
    background: var(--bg-subtle);
    display: flex; align-items: center; justify-content: center;
    font-size: 2.2rem; opacity: 0.7;
  }
  .empty-cart h3 { font-size: 1.1rem; font-weight: 700; }
  .empty-cart p { color: var(--text-muted); font-size: 0.88rem; }

  .cart-footer {
    padding: 20px 24px;
    border-top: 1px solid var(--border);
    background: var(--bg-elevated);
  }
  .cart-summary-line {
    display: flex; justify-content: space-between;
    font-size: 0.85rem; color: var(--text-secondary);
    margin-bottom: 8px;
  }
  .cart-total {
    display: flex; justify-content: space-between; align-items: center;
    padding-top: 12px; margin-bottom: 16px;
    border-top: 1px dashed var(--border);
    font-size: 1.05rem; font-weight: 700;
  }
  .cart-total strong { font-size: 1.4rem; letter-spacing: -0.02em; }

  .checkout-btn {
    width: 100%; padding: 16px;
    background: linear-gradient(135deg, var(--primary), var(--pink));
    color: white; border: none;
    border-radius: 14px; font-size: 1rem;
    font-weight: 700; cursor: pointer;
    display: flex; align-items: center; justify-content: center; gap: 10px;
    transition: all var(--transition);
    box-shadow: 0 8px 24px rgba(99, 102, 241, 0.35);
    font-family: inherit;
  }
  .checkout-btn:hover { transform: translateY(-2px); box-shadow: 0 12px 32px rgba(99, 102, 241, 0.5); }
  .checkout-btn:active { transform: translateY(0); }

  /* ============================================================
     MODAL / CHECKOUT
     ============================================================ */
  .modal {
    position: fixed; top: 50%; left: 50%;
    transform: translate(-50%, -50%) scale(0.9);
    opacity: 0; visibility: hidden;
    width: 92%; max-width: 540px; max-height: 90vh;
    overflow-y: auto;
    background: var(--bg-elevated);
    border-radius: var(--radius-xl);
    padding: 32px;
    z-index: 202;
    box-shadow: var(--shadow-xl);
    transition: all 0.35s cubic-bezier(0.4, 0, 0.2, 1);
  }
  .modal.open {
    opacity: 1; visibility: visible;
    transform: translate(-50%, -50%) scale(1);
  }
  .modal-header {
    display: flex; align-items: center; justify-content: space-between;
    margin-bottom: 24px;
  }
  .modal-header h2 {
    font-size: 1.35rem
