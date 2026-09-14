<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8" />
<meta name="viewport" content="width=device-width, initial-scale=1.0" />
<meta name="theme-color" content="#131921" />
<title>Rohee — Shop Everything</title>
<style>
  /* ============================================================
     RESET & TOKENS
     ============================================================ */
  *, *::before, *::after { margin: 0; padding: 0; box-sizing: border-box; }

  :root {
    /* Amazon-inspired palette */
    --amz-dark: #131921;
    --amz-mid: #232f3e;
    --amz-nav: #37475a;
    --amz-orange: #ff9900;
    --amz-orange-hover: #e88b00;
    --amz-yellow: #febd69;
    --amz-link: #007185;
    --amz-link-hover: #c7511f;
    --amz-red: #b12704;
    --amz-green: #067d62;
    --bg: #eaeded;
    --surface: #ffffff;
    --surface-2: #f7f8f8;
    --text: #0f1111;
    --text-muted: #565959;
    --border: #d5d9d9;
    --border-dark: #bbb;
    --r-sm: 4px;
    --r-md: 8px;
    --r-lg: 12px;
    --r-full: 999px;
    --shadow-sm: 0 1px 2px rgba(15, 17, 17, 0.15);
    --shadow-md: 0 2px 6px rgba(15, 17, 17, 0.15);
    --shadow-lg: 0 6px 18px rgba(15, 17, 17, 0.2);
    --shadow-xl: 0 14px 40px rgba(15, 17, 17, 0.25);
    --ease: cubic-bezier(0.4, 0, 0.2, 1);
    --t-fast: 0.12s var(--ease);
    --t-base: 0.22s var(--ease);
    --t-slow: 0.35s var(--ease);
    --header-h: 60px;
    --subnav-h: 42px;
    --max-w: 1500px;
  }

  html { scroll-behavior: smooth; }

  body {
    font-family: 'Amazon Ember', 'Inter', system-ui, -apple-system, 'Segoe UI', Roboto, Arial, sans-serif;
    background: var(--bg);
    color: var(--text);
    font-size: 14px;
    line-height: 1.4;
    -webkit-font-smoothing: antialiased;
    min-height: 100vh;
  }

  img { display: block; max-width: 100%; }
  button { font-family: inherit; cursor: pointer; border: none; background: none; color: inherit; }
  input, select, textarea { font-family: inherit; }
  a { color: inherit; text-decoration: none; }
  ul { list-style: none; }
  ::selection { background: #ffe7c7; color: var(--text); }

  ::-webkit-scrollbar { width: 10px; height: 10px; }
  ::-webkit-scrollbar-track { background: #f0f2f2; }
  ::-webkit-scrollbar-thumb { background: #c8cfcf; border-radius: var(--r-full); }
  ::-webkit-scrollbar-thumb:hover { background: #a8b0b0; }

  /* ============================================================
     UTILITY
     ============================================================ */
  .container {
    width: 100%; max-width: var(--max-w);
    margin: 0 auto; padding: 0 18px;
  }

  .sr-only {
    position: absolute; width: 1px; height: 1px;
    padding: 0; margin: -1px; overflow: hidden;
    clip: rect(0 0 0 0); white-space: nowrap; border: 0;
  }

  /* ============================================================
     TOP HEADER (Amazon-style dark bar)
     ============================================================ */
  .topbar {
    background: var(--amz-dark);
    color: #fff;
    height: var(--header-h);
    position: sticky; top: 0; z-index: 200;
  }

  .topbar__inner {
    height: 100%; display: flex; align-items: center; gap: 8px;
    max-width: var(--max-w); margin: 0 auto; padding: 0 14px;
  }

  /* Logo */
  .logo {
    display: flex; align-items: center; gap: 2px;
    padding: 8px 10px; border-radius: var(--r-sm);
    cursor: pointer; flex-shrink: 0;
    border: 1px solid transparent;
    transition: border-color var(--t-fast);
  }

  .logo:hover { border-color: #fff; }

  .logo__text {
    font-size: 1.55rem; font-weight: 800;
    letter-spacing: -0.03em;
    background: linear-gradient(90deg, #fff, #ffd8a8);
    -webkit-background-clip: text; background-clip: text;
    color: transparent;
    line-height: 1;
  }

  .logo__dot {
    width: 12px; height: 12px; border-radius: 50%;
    background: var(--amz-orange);
    margin-left: 2px; margin-bottom: 8px;
    box-shadow: 0 0 12px var(--amz-orange);
  }

  /* Deliver to */
  .deliver {
    display: flex; flex-direction: column;
    padding: 8px 10px; border-radius: var(--r-sm);
    cursor: pointer; flex-shrink: 0;
    border: 1px solid transparent;
    transition: border-color var(--t-fast);
  }

  .deliver:hover { border-color: #fff; }

  .deliver__top { font-size: 0.72rem; color: #ccc; }
  .deliver__bottom {
    font-size: 0.86rem; font-weight: 700;
    display: flex; align-items: center; gap: 4px;
  }

  /* Search */
  .search {
    flex: 1; max-width: 900px;
    height: 40px;
    display: flex; align-items: stretch;
    border-radius: var(--r-sm);
    overflow: hidden;
    background: #fff;
    border: 2px solid transparent;
    transition: border-color var(--t-fast);
    min-width: 180px;
  }

  .search:focus-within { border-color: var(--amz-orange); }

  .search__cat {
    padding: 0 8px; border: none; outline: none;
    background: #f3f3f3; color: var(--text);
    font-size: 0.78rem; font-weight: 600;
    border-right: 1px solid #cdcdcd;
    cursor: pointer; border-radius: 0;
  }

  .search__input {
    flex: 1; padding: 0 12px; border: none; outline: none;
    font-size: 0.94rem; color: var(--text);
    background: #fff; min-width: 0;
  }

  .search__input::placeholder { color: #949494; }

  .search__btn {
    width: 46px; background: var(--amz-yellow);
    display: grid; place-items: center;
    color: var(--amz-dark);
    transition: background var(--t-fast);
  }

  .search__btn:hover { background: var(--amz-orange); }

  /* Topbar actions */
  .topbar__actions {
    display: flex; align-items: center; gap: 4px;
    flex-shrink: 0;
  }

  .tb-item {
    display: flex; flex-direction: column;
    padding: 8px 10px; border-radius: var(--r-sm);
    cursor: pointer; color: #fff;
    border: 1px solid transparent;
    transition: border-color var(--t-fast);
    white-space: nowrap;
  }

  .tb-item:hover { border-color: #fff; }

  .tb-item__top { font-size: 0.72rem; color: #ccc; line-height: 1.2; }
  .tb-item__bottom {
    font-size: 0.86rem; font-weight: 700; line-height: 1.2;
    display: flex; align-items: center; gap: 3px;
  }

  .cart-btn {
    display: flex; align-items: flex-end;
    padding: 8px 12px; border-radius: var(--r-sm);
    position: relative; cursor: pointer;
    border: 1px solid transparent;
    transition: border-color var(--t-fast);
    color: #fff;
  }

  .cart-btn:hover { border-color: #fff; }

  .cart-btn__count {
    position: absolute; top: 2px; left: 24px;
    min-width: 22px; height: 20px; padding: 0 4px;
    border-radius: var(--r-full);
    background: var(--amz-orange); color: var(--amz-dark);
    font-size: 0.78rem; font-weight: 800;
    display: grid; place-items: center;
    transition: transform var(--t-base);
  }

  .cart-btn__count.bump { animation: bump 0.4s var(--ease); }

  @keyframes bump {
    0%   { transform: scale(1); }
    40%  { transform: scale(1.35); }
    100% { transform: scale(1); }
  }

  /* ============================================================
     SUB NAV (Amazon-style secondary bar)
     ============================================================ */
  .subnav {
    background: var(--amz-mid);
    color: #fff; height: var(--subnav-h);
    position: sticky; top: var(--header-h); z-index: 190;
    overflow-x: auto; scrollbar-width: none;
  }

  .subnav::-webkit-scrollbar { display: none; }

  .subnav__inner {
    height: 100%; display: flex; align-items: center; gap: 2px;
    max-width: var(--max-w); margin: 0 auto; padding: 0 14px;
    white-space: nowrap;
  }

  .subnav__item {
    padding: 8px 12px; border-radius: var(--r-sm);
    font-size: 0.9rem; font-weight: 500; cursor: pointer;
    border: 1px solid transparent;
    transition: border-color var(--t-fast);
    color: #fff; flex-shrink: 0;
  }

  .subnav__item:hover { border-color: #fff; }
  .subnav__item.is-active { font-weight: 800; }

  /* ============================================================
     HERO BANNER
     ============================================================ */
  .hero {
    position: relative;
    margin-bottom: 0;
    overflow: hidden;
    background: linear-gradient(120deg, #232f3e 0%, #37475a 40%, #485769 100%);
    color: #fff;
  }

  .hero::after {
    content: '';
    position: absolute; left: 0; right: 0; bottom: 0;
    height: 160px;
    background: linear-gradient(to top, var(--bg), transparent);
    pointer-events: none;
    z-index: 3;
  }

  .hero__inner {
    position: relative; z-index: 2;
    max-width: var(--max-w); margin: 0 auto;
    padding: 60px 40px 130px;
    display: grid; grid-template-columns: 1.15fr 1fr;
    align-items: center; gap: 40px;
    min-height: 460px;
  }

  .hero__badge {
    display: inline-flex; align-items: center; gap: 8px;
    padding: 7px 14px; border-radius: var(--r-full);
    background: rgba(255, 153, 0, 0.2);
    border: 1px solid rgba(255, 153, 0, 0.55);
    color: var(--amz-yellow);
    font-size: 0.78rem; font-weight: 700;
    letter-spacing: 0.03em; text-transform: uppercase;
    margin-bottom: 18px;
  }

  .hero__title {
    font-size: clamp(2rem, 4.5vw, 3.4rem);
    font-weight: 800; line-height: 1.08;
    letter-spacing: -0.03em; margin-bottom: 16px;
  }

  .hero__title span {
    background: linear-gradient(90deg, var(--amz-orange), var(--amz-yellow));
    -webkit-background-clip: text; background-clip: text;
    color: transparent;
  }

  .hero__text {
    font-size: 1.06rem; color: rgba(255,255,255,0.85);
    max-width: 520px; margin-bottom: 28px; line-height: 1.6;
  }

  .hero__cta { display: flex; gap: 12px; flex-wrap: wrap; align-items: center; }

  .btn-hero {
    display: inline-flex; align-items: center; gap: 10px;
    padding: 14px 30px; border-radius: var(--r-full);
    background: linear-gradient(135deg, var(--amz-orange), #ffb84d);
    color: var(--amz-dark);
    font-weight: 800; font-size: 1rem;
    box-shadow: 0 10px 26px rgba(255, 153, 0, 0.4);
    transition: all var(--t-base);
  }

  .btn-hero:hover { transform: translateY(-3px); box-shadow: 0 16px 36px rgba(255, 153, 0, 0.55); }
  .btn-hero:active { transform: translateY(0); }

  .btn-hero-ghost {
    display: inline-flex; align-items: center; gap: 10px;
    padding: 14px 26px; border-radius: var(--r-full);
    background: rgba(255,255,255,0.1);
    border: 1.5px solid rgba(255,255,255,0.4);
    color: #fff; font-weight: 700; font-size: 1rem;
    transition: all var(--t-base);
  }

  .btn-hero-ghost:hover { background: rgba(255,255,255,0.2); transform: translateY(-3px); }

  /* Hero visual */
  .hero__visual {
    position: relative; height: 380px;
    display: grid; place-items: center;
  }

  .hero__card {
    position: absolute; border-radius: var(--r-lg);
    background: #fff; padding: 18px;
    box-shadow: var(--shadow-xl);
    animation: floatY 6s ease-in-out infinite;
  }

  .hero__card img { width: 100%; height: 100%; object-fit: contain; }

  .hero__card.hc1 {
    width: 220px; height: 220px;
    top: 20px; left: 20px;
    animation-delay: 0s;
  }

  .hero__card.hc2 {
    width: 180px; height: 180px;
    bottom: 20px; right: 20px;
    animation-delay: -2s;
  }

  .hero__card.hc3 {
    width: 130px; height: 130px;
    top: 50%; left: 50%;
    transform: translate(-50%, -50%);
    animation-delay: -4s;
  }

  @keyframes floatY {
    0%, 100% { transform: translateY(0); }
    50% { transform: translateY(-14px); }
  }

  /* ============================================================
     DEAL STRIP
     ============================================================ */
  .deal-strip {
    background: linear-gradient(90deg, #b12704, #e8720c);
    color: #fff; padding: 14px 0; margin-bottom: 24px;
    position: relative; z-index: 5;
  }

  .deal-strip__inner {
    max-width: var(--max-w); margin: 0 auto; padding: 0 18px;
    display: flex; align-items: center; justify-content: space-between;
    gap: 20px; flex-wrap: wrap;
  }

  .deal-strip__text {
    display: flex; align-items: center; gap: 12px;
    font-weight: 700; font-size: 0.98rem;
  }

  .deal-strip__pulse {
    width: 10px; height: 10px; border-radius: 50%;
    background: #fff; box-shadow: 0 0 12px #fff;
    animation: pulseDot 1.5s ease-in-out infinite;
  }

  @keyframes pulseDot {
    0%, 100% { opacity: 1; transform: scale(1); }
    50% { opacity: 0.5; transform: scale(0.8); }
  }

  .deal-strip__timer {
    display: flex; gap: 8px; align-items: center;
    font-weight: 800; font-size: 0.95rem;
  }

  .timer-box {
    background: rgba(0,0,0,0.35);
    padding: 6px 10px; border-radius: var(--r-sm);
    min-width: 42px; text-align: center;
    font-variant-numeric: tabular-nums;
  }

  /* ============================================================
     TRUST BAR
     ============================================================ */
  .trust {
    display: grid; grid-template-columns: repeat(4, 1fr);
    gap: 14px; margin: 24px 0 32px;
    position: relative; z-index: 6;
  }

  .trust__item {
    background: var(--surface);
    border: 1px solid var(--border);
    border-radius: var(--r-md);
    padding: 18px 16px;
    display: flex; align-items: center; gap: 13px;
    transition: all var(--t-base);
  }

  .trust__item:hover {
    transform: translateY(-3px);
    box-shadow: var(--shadow-md);
    border-color: #c8cfcf;
  }

  .trust__icon {
    width: 44px; height: 44px; border-radius: 12px;
    display: grid; place-items: center;
    background: #fff4e5; color: var(--amz-orange);
    flex-shrink: 0;
  }

  .trust__item:nth-child(2) .trust__icon { background: #e8f5f0; color: var(--amz-green); }
  .trust__item:nth-child(3) .trust__icon { background: #e7f2f8; color: var(--amz-link); }
  .trust__item:nth-child(4) .trust__icon { background: #fdecec; color: var(--amz-red); }

  .trust__title { font-size: 0.92rem; font-weight: 800; }
  .trust__sub { font-size: 0.78rem; color: var(--text-muted); }

  /* ============================================================
     CATEGORY CIRCLES
     ============================================================ */
  .cat-section {
    background: var(--surface);
    border-radius: var(--r-lg);
    padding: 22px 24px 26px;
    margin-bottom: 24px;
    box-shadow: var(--shadow-sm);
    border: 1px solid var(--border);
  }

  .cat-section__head {
    display: flex; align-items: center; justify-content: space-between;
    margin-bottom: 20px;
  }

  .cat-section__head h2 {
    font-size: 1.35rem; font-weight: 800;
    letter-spacing: -0.02em;
  }

  .cat-section__head a {
    color: var(--amz-link); font-weight: 600; font-size: 0.88rem;
    transition: color var(--t-fast);
  }

  .cat-section__head a:hover { color: var(--amz-link-hover); text-decoration: underline; }

  .cat-circles {
    display: grid;
    grid-template-columns: repeat(auto-fit, minmax(110px, 1fr));
    gap: 16px;
  }

  .cat-circle {
    display: flex; flex-direction: column; align-items: center; gap: 10px;
    cursor: pointer; padding: 8px;
    border-radius: var(--r-md);
    transition: all var(--t-base);
  }

  .cat-circle:hover { background: var(--surface-2); transform: translateY(-3px); }

  .cat-circle__img {
    width: 92px; height: 92px; border-radius: 50%;
    background: linear-gradient(145deg, #f9fafb, #eef1f5);
    display: grid; place-items: center;
    overflow: hidden; padding: 14px;
    border: 2px solid var(--border);
    transition: border-color var(--t-base), box-shadow var(--t-base);
  }

  .cat-circle:hover .cat-circle__img {
    border-color: var(--amz-orange);
    box-shadow: 0 0 0 4px rgba(255, 153, 0, 0.15);
  }

  .cat-circle__img img { width: 100%; height: 100%; object-fit: contain; }

  .cat-circle__label {
    font-size: 0.84rem; font-weight: 700;
    text-align: center; color: var(--text);
  }

  /* ============================================================
     TOOLBAR / FILTERS
     ============================================================ */
  .toolbar {
    display: flex; align-items: center; justify-content: space-between;
    gap: 16px; margin: 26px 0 20px; flex-wrap: wrap;
  }

  .section-head { display: flex; flex-direction: column; gap: 3px; }

  .section-head h2 {
    font-size: 1.5rem; font-weight: 800;
    letter-spacing: -0.02em;
    display: flex; align-items: center; gap: 10px;
  }

  .section-head h2::before {
    content: ''; width: 5px; height: 24px;
    border-radius: var(--r-full);
    background: var(--amz-orange);
  }

  .section-head span {
    color: var(--text-muted); font-size: 0.88rem;
    padding-left: 15px;
  }

  .toolbar__controls {
    display: flex; align-items: center; gap: 10px; flex-wrap: wrap;
  }

  .chips {
    display: flex; gap: 8px; overflow-x: auto;
    padding-bottom: 3px; scrollbar-width: none;
  }

  .chips::-webkit-scrollbar { display: none; }

  .chip {
    padding: 9px 18px; border-radius: var(--r-full);
    background: var(--surface); border: 1.5px solid var(--border);
    font-size: 0.86rem; font-weight: 700; color: var(--text-muted);
    white-space: nowrap; transition: all var(--t-fast);
  }

  .chip:hover { border-color: var(--amz-orange); color: var(--amz-link-hover); }

  .chip.is-active {
    background: var(--amz-orange); border-color: var(--amz-orange);
    color: var(--amz-dark);
    box-shadow: 0 6px 16px rgba(255, 153, 0, 0.35);
  }

  .select {
    height: 44px; padding: 0 40px 0 16px;
    border-radius: var(--r-md);
    border: 1.5px solid var(--border);
    background: var(--surface) url("data:image/svg+xml;utf8,<svg xmlns='http://www.w3.org/2000/svg' width='14' height='14' viewBox='0 0 24 24' fill='none' stroke='%23565959' stroke-width='2.5' stroke-linecap='round' stroke-linejoin='round'><polyline points='6 9 12 15 18 9'/></svg>") no-repeat right 16px center;
    font-size: 0.88rem; font-weight: 700; color: var(--text);
    appearance: none; cursor: pointer; outline: none;
    transition: all var(--t-fast);
  }

  .select:hover { border-color: var(--border-dark); }
  .select:focus { border-color: var(--amz-orange); box-shadow: 0 0 0 3px rgba(255,153,0,0.2); }

  /* ============================================================
     PRODUCT GRID (Amazon-style)
     ============================================================ */
  .grid {
    display: grid;
    grid-template-columns: repeat(auto-fill, minmax(230px, 1fr));
    gap: 18px; padding-bottom: 60px;
  }

  .card {
    background: var(--surface);
    border-radius: var(--r-md);
    border: 1px solid var(--border);
    overflow: hidden;
    display: flex; flex-direction: column;
    transition: all var(--t-base);
    position: relative;
    animation: cardIn 0.4s var(--ease) both;
  }

  @keyframes cardIn {
    from { opacity: 0; transform: translateY(14px); }
    to   { opacity: 1; transform: translateY(0); }
  }

  .card:hover {
    transform: translateY(-4px);
    box-shadow: var(--shadow-lg);
    border-color: #c8cfcf;
  }

  .card__media {
    position: relative;
    aspect-ratio: 1 / 1;
    background: #fff;
    display: grid; place-items: center;
    overflow: hidden; cursor: pointer;
    padding: 20px;
    border-bottom: 1px solid #f2f2f2;
  }

  .card__media img {
    width: 88%; height: 88%; object-fit: contain;
    transition: transform var(--t-slow);
  }

  .card:hover .card__media img { transform: scale(1.08); }

  /* Badges */
  .tag-sale, .tag-new, .tag-choice {
    position: absolute; top: 12px; left: 12px;
    padding: 4px 10px; border-radius: var(--r-sm);
    font-size: 0.7rem; font-weight: 800;
    letter-spacing: 0.04em; text-transform: uppercase;
    z-index: 3;
  }

  .tag-sale { background: var(--amz-red); color: #fff; }
  .tag-new { background: var(--amz-green); color: #fff; }
  .tag-choice {
    background: var(--amz-dark); color: #fff;
    display: flex; align-items: center; gap: 4px;
  }

  .tag-choice::before {
    content: '✓';
    background: var(--amz-orange); color: var(--amz-dark);
    width: 13px; height: 13px; border-radius: 3px;
    display: grid; place-items: center;
    font-size: 0.6rem; font-weight: 900;
  }

  /* Wishlist heart */
  .wish {
    position: absolute; top: 12px; right: 12px;
    width: 36px; height: 36px; border-radius: var(--r-full);
    background: rgba(255,255,255,0.95);
    display: grid; place-items: center;
    color: var(--text-muted);
    box-shadow: var(--shadow-sm);
    transition: all var(--t-fast); z-index: 3;
    border: 1px solid var(--border);
  }

  .wish:hover { color: var(--amz-red); transform: scale(1.12); }
  .wish.is-active { color: var(--amz-red); background: #fff; }
  .wish.is-active svg { fill: currentColor; }

  /* Card body */
  .card__body {
    padding: 14px 16px 18px;
    display: flex; flex-direction: column;
    flex: 1; gap: 8px;
  }

  .card__title {
    font-size: 0.95rem; font-weight: 500;
    line-height: 1.4; color: var(--text);
    display: -webkit-box; -webkit-line-clamp: 2;
    -webkit-box-orient: vertical; overflow: hidden;
    min-height: 2.8em; cursor: pointer;
    transition: color var(--t-fast);
  }

  .card__title:hover { color: var(--amz-link-hover); }

  .rating {
    display: flex; align-items: center; gap: 6px;
    font-size: 0.8rem; color: var(--text-muted);
  }

  .stars { display: flex; gap: 1px; color: var(--amz-orange); }
  .rating__count { color: var(--amz-link); font-weight: 600; }

  /* Price */
  .price { display: flex; align-items: baseline; gap: 8px; flex-wrap: wrap; }
  .price__now {
    font-size: 1.28rem; font-weight: 800;
    letter-spacing: -0.02em;
  }
  .price__now .sup { font-size: 0.75em; vertical-align: super; font-weight: 700; }
  .price__was { font-size: 0.8rem; color: var(--text-muted); text-decoration: line-through; }
  .price__save { font-size: 0.78rem; color: var(--amz-red); font-weight: 700; }

  /* Delivery info */
  .delivery {
    font-size: 0.78rem; color: var(--text-muted);
    display: flex; align-items: center; gap: 5px;
    flex-wrap: wrap;
  }

  .delivery strong { color: var(--text); font-weight: 700; }
  .delivery .prime {
    color: var(--amz-link); font-weight: 800;
    font-size: 0.74rem; letter-spacing: 0.02em;
  }

  /* Add button */
  .btn-add {
    margin-top: auto;
    height: 40px;
    border-radius: var(--r-full);
    background: linear-gradient(180deg, #ffd814, #f7ca00);
    color: var(--amz-dark);
    font-weight: 700; font-size: 0.88rem;
    display: flex; align-items: center; justify-content: center;
    gap: 8px;
    box-shadow: 0 2px 5px rgba(213, 217, 217, 0.5);
    border: 1px solid #f0c14b;
    transition: all var(--t-fast);
  }

  .btn-add:hover { background: linear-gradient(180deg, #f7ca00, #eeb800); box-shadow: 0 3px 8px rgba(0,0,0,0.12); }
  .btn-add:active { transform: scale(0.98); }
  .btn-add.is-added {
    background: linear-gradient(180deg, #0ea56d, #067d62);
    color: #fff; border-color: #067d62;
  }

  /* Empty state */
  .empty {
    grid-column: 1 / -1; text-align: center;
    padding: 90px 20px; color: var(--text-muted);
    background: var(--surface); border-radius: var(--r-lg);
    border: 1px solid var(--border);
  }

  .empty svg { margin: 0 auto 18px; color: #c8cfcf; }
  .empty h3 { color: var(--text); font-size: 1.3rem; margin-bottom: 8px; font-weight: 800; }
  .empty p { font-size: 0.94rem; }

  /* ============================================================
     PRODUCT DETAIL MODAL
     ============================================================ */
  .modal-overlay {
    position: fixed; inset: 0;
    background: rgba(15, 23, 42, 0.6);
    backdrop-filter: blur(5px);
    z-index: 300;
    display: flex; align-items: flex-start; justify-content: center;
    padding: 20px; padding-top: 40px;
    opacity: 0; visibility: hidden;
    transition: opacity var(--t-base), visibility var(--t-base);
    overflow-y: auto;
  }

  .modal-overlay.is-open { opacity: 1; visibility: visible; }

  .modal {
    background: var(--surface);
    border-radius: var(--r-lg);
    max-width: 1080px; width: 100%;
    box-shadow: var(--shadow-xl);
    transform: scale(0.94) translateY(20px);
    transition: transform var(--t-slow);
    position: relative;
    margin-bottom: 40px;
    overflow: hidden;
  }

  .modal-overlay.is-open .modal { transform: scale(1) translateY(0); }

  .modal__close {
    position: absolute; top: 16px; right: 16px;
    width: 40px; height: 40px; border-radius: var(--r-full);
    background: rgba(255,255,255,0.98);
    display: grid; place-items: center;
    color: var(--text); z-index: 10;
    box-shadow: var(--shadow-md);
    border: 1px solid var(--border);
    transition: all var(--t-fast);
  }

  .modal__close:hover { background: var(--amz-red); color: #fff; transform: rotate(90deg); }

  .modal__grid { display: grid; grid-template-columns: 1.05fr 1fr; }

  .modal__media {
    background: #fff;
    display: flex; flex-direction: column;
    padding: 40px; gap: 20px;
    border-right: 1px solid var(--border);
    position: sticky; top: 0;
  }

  .modal__main-img {
    flex: 1; display: grid; place-items: center;
    min-height: 340px;
  }

  .modal__main-img img {
    width: 100%; max-width: 380px; object-fit: contain;
    transition: transform var(--t-slow);
  }

  .modal__main-img:hover img { transform: scale(1.06); }

  .modal__thumbs {
    display: flex; gap: 10px; justify-content: center;
  }

  .thumb {
    width: 56px; height: 56px;
    border-radius: var(--r-sm);
    background: #fff; padding: 6px;
    border: 2px solid var(--border
