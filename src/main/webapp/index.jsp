<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8" />
<meta name="viewport" content="width=device-width, initial-scale=1.0" />
<meta name="theme-color" content="#111827" />
<title>Nova Store — Premium Shopping</title>
<style>
  /* ============================================================
     RESET & DESIGN TOKENS
     ============================================================ */
  *, *::before, *::after { margin: 0; padding: 0; box-sizing: border-box; }

  :root {
    --bg: #f7f8fc;
    --surface: #ffffff;
    --surface-2: #f1f3f9;
    --text: #0f172a;
    --text-muted: #64748b;
    --border: #e5e9f2;
    --primary: #4f46e5;
    --primary-dark: #4338ca;
    --primary-light: #eef0ff;
    --success: #10b981;
    --danger: #ef4444;
    --warning: #f59e0b;
    --star: #fbbf24;
    --r-sm: 10px;
    --r-md: 14px;
    --r-lg: 20px;
    --r-xl: 28px;
    --r-full: 999px;
    --shadow-sm: 0 1px 2px rgba(15, 23, 42, 0.06);
    --shadow-md: 0 4px 14px rgba(15, 23, 42, 0.08);
    --shadow-lg: 0 12px 32px rgba(15, 23, 42, 0.12);
    --shadow-xl: 0 24px 60px rgba(15, 23, 42, 0.18);
    --ease: cubic-bezier(0.4, 0, 0.2, 1);
    --t-fast: 0.15s var(--ease);
    --t-base: 0.25s var(--ease);
    --t-slow: 0.4s var(--ease);
    --header-h: 72px;
    --max-w: 1280px;
  }

  html { scroll-behavior: smooth; }

  body {
    font-family: 'Inter', system-ui, -apple-system, 'Segoe UI', Roboto, sans-serif;
    background: var(--bg);
    color: var(--text);
    line-height: 1.5;
    -webkit-font-smoothing: antialiased;
    -moz-osx-font-smoothing: grayscale;
    min-height: 100vh;
  }

  img { display: block; max-width: 100%; }
  button { font-family: inherit; cursor: pointer; border: none; background: none; color: inherit; }
  input, select, textarea { font-family: inherit; }
  a { color: inherit; text-decoration: none; }
  ul { list-style: none; }

  /* ============================================================
     UTILITY
     ============================================================ */
  .container {
    width: 100%;
    max-width: var(--max-w);
    margin: 0 auto;
    padding: 0 20px;
  }

  .sr-only {
    position: absolute; width: 1px; height: 1px;
    padding: 0; margin: -1px; overflow: hidden;
    clip: rect(0 0 0 0); white-space: nowrap; border: 0;
  }

  /* ============================================================
     HEADER
     ============================================================ */
  .header {
    position: sticky; top: 0; z-index: 100;
    height: var(--header-h);
    background: rgba(255, 255, 255, 0.85);
    backdrop-filter: saturate(180%) blur(14px);
    -webkit-backdrop-filter: saturate(180%) blur(14px);
    border-bottom: 1px solid var(--border);
  }

  .header__inner {
    height: 100%;
    display: flex; align-items: center; gap: 18px;
  }

  .logo {
    display: flex; align-items: center; gap: 10px;
    font-weight: 800; font-size: 1.25rem; letter-spacing: -0.02em;
    flex-shrink: 0; cursor: pointer;
  }

  .logo__mark {
    width: 36px; height: 36px; border-radius: 11px;
    background: linear-gradient(135deg, var(--primary), #8b5cf6);
    display: grid; place-items: center;
    color: #fff; font-size: 1.1rem;
    box-shadow: 0 6px 16px rgba(79, 70, 229, 0.35);
  }

  .search {
    flex: 1; max-width: 520px;
    position: relative; display: flex; align-items: center;
  }

  .search__icon {
    position: absolute; left: 16px;
    color: var(--text-muted); pointer-events: none; display: flex;
  }

  .search__input {
    width: 100%; height: 46px;
    padding: 0 16px 0 46px;
    border-radius: var(--r-full);
    border: 1.5px solid var(--border);
    background: var(--surface-2);
    font-size: 0.95rem; color: var(--text);
    outline: none; transition: all var(--t-fast);
  }

  .search__input::placeholder { color: var(--text-muted); }

  .search__input:focus {
    border-color: var(--primary);
    background: var(--surface);
    box-shadow: 0 0 0 4px var(--primary-light);
  }

  .header__actions {
    display: flex; align-items: center; gap: 8px;
    margin-left: auto; flex-shrink: 0;
  }

  .icon-btn {
    position: relative;
    width: 46px; height: 46px; border-radius: var(--r-full);
    display: grid; place-items: center;
    color: var(--text);
    transition: background var(--t-fast), transform var(--t-fast);
  }

  .icon-btn:hover { background: var(--surface-2); }
  .icon-btn:active { transform: scale(0.94); }

  .icon-btn__badge {
    position: absolute; top: 4px; right: 4px;
    min-width: 20px; height: 20px; padding: 0 5px;
    border-radius: var(--r-full);
    background: var(--danger); color: #fff;
    font-size: 0.68rem; font-weight: 700;
    display: grid; place-items: center;
    border: 2px solid var(--surface);
    transform: scale(0); transition: transform var(--t-base);
  }

  .icon-btn__badge.is-visible { transform: scale(1); }

  /* ============================================================
     HERO
     ============================================================ */
  .hero {
    margin: 32px 0 44px;
    border-radius: var(--r-xl);
    overflow: hidden; position: relative;
    background: linear-gradient(120deg, #1e1b4b 0%, #4f46e5 55%, #8b5cf6 100%);
    color: #fff; padding: 56px 48px; isolation: isolate;
  }

  .hero::before {
    content: ''; position: absolute; inset: 0;
    background:
      radial-gradient(circle at 85% 15%, rgba(255,255,255,0.18), transparent 45%),
      radial-gradient(circle at 10% 90%, rgba(255,255,255,0.12), transparent 40%);
    z-index: -1;
  }

  .hero__content { max-width: 560px; position: relative; z-index: 2; }

  .hero__badge {
    display: inline-flex; align-items: center; gap: 8px;
    padding: 6px 14px; border-radius: var(--r-full);
    background: rgba(255, 255, 255, 0.16);
    border: 1px solid rgba(255, 255, 255, 0.25);
    font-size: 0.8rem; font-weight: 600;
    letter-spacing: 0.02em; margin-bottom: 18px;
    backdrop-filter: blur(8px);
  }

  .hero__title {
    font-size: clamp(2rem, 5vw, 3.2rem);
    font-weight: 800; line-height: 1.1;
    letter-spacing: -0.03em; margin-bottom: 16px;
  }

  .hero__title span {
    background: linear-gradient(90deg, #fbbf24, #f472b6);
    -webkit-background-clip: text; background-clip: text;
    color: transparent;
  }

  .hero__text {
    font-size: 1.05rem; color: rgba(255, 255, 255, 0.85);
    margin-bottom: 28px; max-width: 460px;
  }

  .btn-primary {
    display: inline-flex; align-items: center; gap: 10px;
    padding: 14px 30px; border-radius: var(--r-full);
    background: #fff; color: var(--primary-dark);
    font-weight: 700; font-size: 0.98rem;
    box-shadow: 0 10px 28px rgba(0, 0, 0, 0.22);
    transition: transform var(--t-base), box-shadow var(--t-base);
  }

  .btn-primary:hover {
    transform: translateY(-2px);
    box-shadow: 0 16px 36px rgba(0, 0, 0, 0.3);
  }

  .btn-primary:active { transform: translateY(0); }

  /* ============================================================
     TOOLBAR
     ============================================================ */
  .toolbar {
    display: flex; align-items: center; justify-content: space-between;
    gap: 16px; margin-bottom: 26px; flex-wrap: wrap;
  }

  .section-head { display: flex; align-items: baseline; gap: 12px; }
  .section-head h2 { font-size: 1.6rem; font-weight: 800; letter-spacing: -0.02em; }
  .section-head span { color: var(--text-muted); font-size: 0.9rem; font-weight: 500; }

  .toolbar__controls { display: flex; align-items: center; gap: 10px; flex-wrap: wrap; }

  .chips {
    display: flex; gap: 8px; overflow-x: auto;
    padding-bottom: 4px; scrollbar-width: none;
  }

  .chips::-webkit-scrollbar { display: none; }

  .chip {
    padding: 9px 18px; border-radius: var(--r-full);
    background: var(--surface); border: 1.5px solid var(--border);
    font-size: 0.88rem; font-weight: 600; color: var(--text-muted);
    white-space: nowrap; transition: all var(--t-fast);
  }

  .chip:hover { border-color: var(--primary); color: var(--primary); }

  .chip.is-active {
    background: var(--primary); border-color: var(--primary);
    color: #fff; box-shadow: 0 6px 16px rgba(79, 70, 229, 0.32);
  }

  .select {
    height: 44px; padding: 0 38px 0 16px;
    border-radius: var(--r-full);
    border: 1.5px solid var(--border);
    background: var(--surface) url("data:image/svg+xml;utf8,<svg xmlns='http://www.w3.org/2000/svg' width='14' height='14' viewBox='0 0 24 24' fill='none' stroke='%2364748b' stroke-width='2.5' stroke-linecap='round' stroke-linejoin='round'><polyline points='6 9 12 15 18 9'/></svg>") no-repeat right 16px center;
    font-size: 0.88rem; font-weight: 600; color: var(--text);
    appearance: none; cursor: pointer; outline: none;
    transition: border-color var(--t-fast), box-shadow var(--t-fast);
  }

  .select:focus { border-color: var(--primary); box-shadow: 0 0 0 4px var(--primary-light); }

  /* ============================================================
     PRODUCT GRID
     ============================================================ */
  .grid {
    display: grid;
    grid-template-columns: repeat(auto-fill, minmax(240px, 1fr));
    gap: 22px; padding-bottom: 72px;
  }

  .card {
    background: var(--surface);
    border-radius: var(--r-lg);
    border: 1px solid var(--border);
    overflow: hidden;
    display: flex; flex-direction: column;
    transition: transform var(--t-base), box-shadow var(--t-base), border-color var(--t-base);
    position: relative;
    animation: cardIn 0.4s var(--ease) both;
  }

  @keyframes cardIn {
    from { opacity: 0; transform: translateY(14px); }
    to   { opacity: 1; transform: translateY(0); }
  }

  .card:hover {
    transform: translateY(-6px);
    box-shadow: var(--shadow-lg);
    border-color: #d9def0;
  }

  .card__media {
    position: relative;
    aspect-ratio: 1 / 1;
    background: linear-gradient(145deg, #f8f9ff, #eef1fa);
    display: grid; place-items: center;
    overflow: hidden; cursor: pointer;
  }

  .card__media img {
    width: 78%; height: 78%; object-fit: contain;
    transition: transform var(--t-slow);
    filter: drop-shadow(0 10px 22px rgba(15, 23, 42, 0.14));
  }

  .card:hover .card__media img { transform: scale(1.08) rotate(-2deg); }

  .wish {
    position: absolute; top: 12px; right: 12px;
    width: 38px; height: 38px; border-radius: var(--r-full);
    background: rgba(255, 255, 255, 0.9);
    backdrop-filter: blur(6px);
    display: grid; place-items: center;
    color: var(--text-muted);
    box-shadow: var(--shadow-sm);
    transition: all var(--t-fast); z-index: 2;
  }

  .wish:hover { transform: scale(1.1); color: var(--danger); }
  .wish.is-active { color: var(--danger); }
  .wish.is-active svg { fill: currentColor; }

  .tag-sale {
    position: absolute; top: 12px; left: 12px;
    padding: 5px 12px; border-radius: var(--r-full);
    background: linear-gradient(135deg, #ef4444, #f97316);
    color: #fff; font-size: 0.72rem; font-weight: 800;
    letter-spacing: 0.03em;
    box-shadow: 0 6px 14px rgba(239, 68, 68, 0.35);
    z-index: 2;
  }

  .card__body {
    padding: 16px 16px 18px;
    display: flex; flex-direction: column;
    flex: 1; gap: 8px;
  }

  .card__cat {
    font-size: 0.72rem; font-weight: 700;
    letter-spacing: 0.06em; text-transform: uppercase;
    color: var(--primary);
  }

  .card__title {
    font-size: 1rem; font-weight: 700;
    letter-spacing: -0.01em; line-height: 1.35;
    display: -webkit-box; -webkit-line-clamp: 2;
    -webkit-box-orient: vertical; overflow: hidden;
    min-height: 2.7em; cursor: pointer;
  }

  .card__title:hover { color: var(--primary); }

  .rating {
    display: flex; align-items: center; gap: 6px;
    font-size: 0.82rem; color: var(--text-muted); font-weight: 600;
  }

  .stars { display: flex; gap: 1px; color: var(--star); }

  .card__footer {
    margin-top: auto;
    display: flex; align-items: center; justify-content: space-between;
    gap: 10px; padding-top: 6px;
  }

  .price { display: flex; align-items: baseline; gap: 7px; flex-wrap: wrap; }
  .price__now { font-size: 1.2rem; font-weight: 800; letter-spacing: -0.02em; }
  .price__was { font-size: 0.82rem; color: var(--text-muted); text-decoration: line-through; font-weight: 500; }

  .btn-add {
    width: 44px; height: 44px; flex-shrink: 0;
    border-radius: var(--r-md);
    background: var(--primary); color: #fff;
    display: grid; place-items: center;
    box-shadow: 0 6px 16px rgba(79, 70, 229, 0.32);
    transition: all var(--t-fast);
  }

  .btn-add:hover { background: var(--primary-dark); transform: scale(1.06); }
  .btn-add:active { transform: scale(0.95); }
  .btn-add.is-added { background: var(--success); }

  .empty {
    grid-column: 1 / -1;
    text-align: center; padding: 80px 20px;
    color: var(--text-muted);
  }

  .empty svg { margin: 0 auto 16px; color: #cbd5e1; }
  .empty h3 { color: var(--text); font-size: 1.2rem; margin-bottom: 6px; }

  /* ============================================================
     PRODUCT DETAIL MODAL
     ============================================================ */
  .modal-overlay {
    position: fixed; inset: 0;
    background: rgba(15, 23, 42, 0.6);
    backdrop-filter: blur(4px);
    z-index: 250;
    display: flex; align-items: center; justify-content: center;
    padding: 20px;
    opacity: 0; visibility: hidden;
    transition: opacity var(--t-base), visibility var(--t-base);
    overflow-y: auto;
  }

  .modal-overlay.is-open { opacity: 1; visibility: visible; }

  .modal {
    background: var(--surface);
    border-radius: var(--r-xl);
    max-width: 900px; width: 100%;
    max-height: 92vh; overflow-y: auto;
    box-shadow: var(--shadow-xl);
    transform: scale(0.92) translateY(20px);
    transition: transform var(--t-slow);
    position: relative;
  }

  .modal-overlay.is-open .modal { transform: scale(1) translateY(0); }

  .modal__close {
    position: absolute; top: 16px; right: 16px;
    width: 42px; height: 42px; border-radius: var(--r-full);
    background: rgba(255,255,255,0.9);
    display: grid; place-items: center;
    color: var(--text); z-index: 10;
    box-shadow: var(--shadow-sm);
    transition: all var(--t-fast);
  }

  .modal__close:hover { background: var(--surface-2); transform: rotate(90deg); }

  .modal__grid {
    display: grid;
    grid-template-columns: 1fr 1fr;
    gap: 0;
  }

  .modal__media {
    background: linear-gradient(145deg, #f8f9ff, #eef1fa);
    display: grid; place-items: center;
    padding: 40px; position: relative;
    min-height: 380px;
    border-radius: var(--r-xl) 0 0 var(--r-xl);
  }

  .modal__media img {
    width: 100%; max-width: 340px;
    object-fit: contain;
    filter: drop-shadow(0 20px 40px rgba(15, 23, 42, 0.2));
    transition: transform var(--t-slow);
  }

  .modal__media:hover img { transform: scale(1.05) rotate(-3deg); }

  .modal__info {
    padding: 40px 36px;
    display: flex; flex-direction: column;
    gap: 16px;
  }

  .modal__cat {
    font-size: 0.78rem; font-weight: 700;
    letter-spacing: 0.08em; text-transform: uppercase;
    color: var(--primary);
  }

  .modal__title {
    font-size: 1.85rem; font-weight: 800;
    letter-spacing: -0.02em; line-height: 1.2;
  }

  .modal__rating {
    display: flex; align-items: center; gap: 10px;
    font-size: 0.9rem; color: var(--text-muted); font-weight: 600;
  }

  .modal__price {
    display: flex; align-items: baseline; gap: 12px;
    flex-wrap: wrap; padding: 8px 0;
  }

  .modal__price .now {
    font-size: 2rem; font-weight: 800;
    letter-spacing: -0.02em; color: var(--primary);
  }

  .modal__price .was {
    font-size: 1.1rem; color: var(--text-muted);
    text-decoration: line-through;
  }

  .modal__price .discount {
    padding: 4px 12px; border-radius: var(--r-full);
    background: #fee2e2; color: var(--danger);
    font-size: 0.82rem; font-weight: 700;
  }

  .modal__desc {
    font-size: 0.95rem; color: var(--text-muted);
    line-height: 1.65;
  }

  .modal__features {
    display: flex; flex-direction: column; gap: 10px;
    padding: 16px; border-radius: var(--r-md);
    background: var(--surface-2);
  }

  .feature {
    display: flex; align-items: center; gap: 10px;
    font-size: 0.88rem; color: var(--text); font-weight: 500;
  }

  .feature svg { color: var(--success); flex-shrink: 0; }

  .modal__actions {
    display: flex; gap: 12px;
    margin-top: 8px; flex-wrap: wrap;
  }

  .qty-selector {
    display: inline-flex; align-items: center;
    background: var(--surface-2);
    border-radius: var(--r-md);
    padding: 4px;
  }

  .qty-selector button {
    width: 40px; height: 40px; border-radius: var(--r-sm);
    display: grid; place-items: center;
    font-weight: 700; font-size: 1.1rem;
    transition: background var(--t-fast);
  }

  .qty-selector button:hover { background: var(--surface); }

  .qty-selector span {
    min-width: 40px; text-align: center;
    font-weight: 700; font-size: 0.95rem;
  }

  .btn-add-detail {
    flex: 1; min-width: 180px;
    height: 48px; border-radius: var(--r-md);
    background: linear-gradient(135deg, var(--primary), #7c3aed);
    color: #fff; font-weight: 700; font-size: 0.98rem;
    display: flex; align-items: center; justify-content: center;
    gap: 10px;
    box-shadow: 0 10px 24px rgba(79, 70, 229, 0.35);
    transition: all var(--t-base);
  }

  .btn-add-detail:hover {
    transform: translateY(-2px);
    box-shadow: 0 16px 32px rgba(79, 70, 229, 0.45);
  }

  /* ============================================================
     CART DRAWER
     ============================================================ */
  .overlay {
    position: fixed; inset: 0;
    background: rgba(15, 23, 42, 0.5);
    backdrop-filter: blur(3px);
    z-index: 200;
    opacity: 0; visibility: hidden;
    transition: opacity var(--t-base), visibility var(--t-base);
  }

  .overlay.is-open { opacity: 1; visibility: visible; }

  .drawer {
    position: fixed; top: 0; right: 0;
    height: 100%; width: min(440px, 100%);
    background: var(--surface); z-index: 210;
    display: flex; flex-direction: column;
    transform: translateX(100%);
    transition: transform var(--t-slow);
    box-shadow: var(--shadow-xl);
  }

  .drawer.is-open { transform: translateX(0); }

  .drawer__head {
    display: flex; align-items: center; justify-content: space-between;
    padding: 22px 24px; border-bottom: 1px solid var(--border);
    flex-shrink: 0;
  }

  .drawer__head h2 {
    font-size: 1.15rem; font-weight: 800;
    display: flex; align-items: center; gap: 10px;
  }

  .drawer__head .count-pill {
    padding: 2px 10px; border-radius: var(--r-full);
    background: var(--primary-light); color: var(--primary);
    font-size: 0.78rem; font-weight: 700;
  }

  .close-btn {
    width: 40px; height: 40px; border-radius: var(--r-full);
    display: grid; place-items: center;
    color: var(--text-muted);
    transition: background var(--t-fast), color var(--t-fast);
  }

  .close-btn:hover { background: var(--surface-2); color: var(--text); }

  .drawer__body {
    flex: 1; overflow-y: auto; padding: 18px 24px;
  }

  .cart-item {
    display: flex; gap: 14px;
    padding: 14px 0;
    border-bottom: 1px solid var(--border);
    animation: cardIn 0.3s var(--ease) both;
  }

  .cart-item__img {
    width: 74px; height: 74px; border-radius: var(--r-md);
    background: linear-gradient(145deg, #f8f9ff, #eef1fa);
    display: grid; place-items: center;
    flex-shrink: 0; overflow: hidden;
  }

  .cart-item__img img { width: 82%; height: 82%; object-fit: contain; }

  .cart-item__info {
    flex: 1; min-width: 0;
    display: flex; flex-direction: column; gap: 6px;
  }

  .cart-item__title {
    font-size: 0.9rem; font-weight: 700; line-height: 1.3;
    display: -webkit-box; -webkit-line-clamp: 2;
    -webkit-box-orient: vertical; overflow: hidden;
  }

  .cart-item__price { font-weight: 800; font-size: 0.98rem; color: var(--primary); }

  .qty {
    display: inline-flex; align-items: center; gap: 2px;
    background: var(--surface-2); border-radius: var(--r-full);
    padding: 3px; width: fit-content;
  }

  .qty button {
    width: 28px; height: 28px; border-radius: var(--r-full);
    display: grid; place-items: center;
    color: var(--text); font-weight: 700;
    transition: background var(--t-fast);
  }

  .qty button:hover { background: var(--surface); }

  .qty span {
    min-width: 26px; text-align: center;
    font-size: 0.85rem; font-weight: 700;
  }

  .cart-item__remove {
    align-self: flex-start;
    color: var(--text-muted); padding: 4px;
    border-radius: 6px;
    transition: color var(--t-fast), background var(--t-fast);
  }

  .cart-item__remove:hover { color: var(--danger); background: #fef2f2; }

  .cart-empty {
    text-align: center; padding: 60px 20px;
    color: var(--text-muted);
  }

  .cart-empty svg { margin: 0 auto 16px; color: #cbd5e1; }
  .cart-empty h3 { color: var(--text); margin-bottom: 6px; }

  .drawer__foot {
    padding: 20px 24px 24px;
    border-top: 1px solid var(--border);
    background: var(--surface); flex-shrink: 0;
  }

  .sum-row {
    display: flex; justify-content: space-between; align-items: center;
    font-size: 0.92rem; color: var(--text-muted);
    font-weight: 500; margin-bottom: 8px;
  }

  .sum-row.total {
    font-size: 1.15rem; font-weight: 800;
    color: var(--text);
    padding-top: 12px; margin-top: 12px; margin-bottom: 18px;
    border-top: 1.5px dashed var(--border);
  }

  .sum-row.total span:last-child { color: var(--primary); }

  .btn-checkout {
    width: 100%; height: 54px; border-radius: var(--r-md);
    background: linear-gradient(135deg, var(--primary), #7c3aed);
    color: #fff; font-size: 1rem; font-weight: 800;
    letter-spacing: 0.01em;
    display: flex; align-items: center; justify-content: center; gap: 10px;
    box-shadow: 0 12px 28px rgba(79, 70, 229, 0.4);
    transition: all var(--t-base);
  }

  .btn-checkout:hover:not(:disabled) {
    transform: translateY(-2px);
    box-shadow: 0 18px 36px rgba(79, 70, 229, 0.5);
  }

  .btn-checkout:active:not(:disabled) { transform: translateY(0); }

  .btn-checkout:disabled { opacity: 0.5; cursor: not-allowed; box-shadow: none; }

  /* ============================================================
     TOAST
     ============================================================ */
  .toast-wrap {
    position: fixed; bottom: 24px; left: 50%;
    transform: translateX(-50%); z-index: 300;
    display: flex; flex-direction: column; gap: 10px;
    align-items: center; pointer-events: none;
    width: min(92vw, 420px);
  }

  .toast {
    display: flex; align-items: center; gap: 12px;
    padding: 14px 20px; border-radius: var(--r-md);
    background: #0f172a; color: #fff;
    font-size: 0.9rem; font-weight: 600;
    box-shadow: var(--shadow-xl);
    animation: toastIn 0.35s var(--ease) both;
    pointer-events: auto; width: 100%;
  }

  .toast.is-out { animation: toastOut 0.3s var(--ease) both; }

  .toast__dot {
    width: 26px; height: 26px; border-radius: var(--r-full);
    display: grid; place-items: center;
    flex-shrink: 0; background: var(--success);
  }

  @keyframes toastIn {
    from { opacity: 0; transform: translateY(20px) scale(0.96); }
    to   { opacity: 1; transform: translateY(0) scale(1); }
  }

  @keyframes toastOut {
    to { opacity: 0; transform: translateY(14px) scale(0.96); }
  }

  /* ============================================================
     FOOTER
     ============================================================ */
  .footer {
    border-top: 1px solid var(--border);
    background: var(--surface);
    padding: 34px 0; text-align: center;
    color: var(--text-muted); font-size: 0.88rem;
  }

  /* ============================================================
     RESPONSIVE
     ============================================================ */
  @media (max-width: 860px) {
    .modal__grid { grid-template-columns: 1fr; }
    .modal__media { border-radius: var(--r-xl) var(--r-xl) 0 0; min-height: 280px; padding: 30px; }
    .modal__info { padding: 28px 24px; }
    .modal__title { font-size: 1.5rem; }
  }

  @media (max-width: 760px) {
    .hero { padding: 40px 26px; margin: 20px 0 32px; }
    .header__inner { gap: 12px; }
    .logo span { display: none; }
    .search { max-width: none; }
    .section-head h2 { font-size: 1.3rem; }
  }

  @media (max-width: 520px) {
    .container { padding: 0 14px; }
    .grid { grid-template-columns: repeat(2, 1fr); gap: 12px; }
    .card__body { padding: 12px; }
    .card__title { font-size: 0.88rem; }
    .price__now { font-size: 1.05rem; }
    .btn-add { width: 40px; height: 40px; }
    .hero { padding: 32px 20px; border-radius: var(--r-lg); }
    .toolbar { gap: 12px; }
    .select { width: 100%; }
  }

  @media (max-width: 360px) {
    .grid { grid-template-columns: 1fr; }
  }

  @media (prefers-reduced-motion: reduce) {
    *, *::before, *::after {
      animation-duration: 0.01ms !important;
      animation-iteration-count: 1 !important;
      transition-duration: 0.01ms !important;
    }
  }
</style>
</head>
<body>

<!-- ============================================================
     HEADER
     ============================================================ -->
<header class="header">
  <div class="container header__inner">
    <a href="#" class="logo" aria-label="Nova Store home">
      <span class="logo__mark" aria-hidden="
