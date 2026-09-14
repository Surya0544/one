<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>LUMINA | modern e‑commerce</title>
  <link rel="preconnect" href="https://fonts.googleapis.com">
  <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
  <link href="https://fonts.googleapis.com/css2?family=Inter:opsz,wght@14..32,300;14..32,400;14..32,500;14..32,600;14..32,700&display=swap" rel="stylesheet">
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0-beta3/css/all.min.css">
  <style>
    * { margin: 0; padding: 0; box-sizing: border-box; }

    :root {
      --brand: #ff5e1a;
      --brand-soft: #fff7f2;
      --dark: #1e1e2f;
      --dark-2: #2d2d45;
      --text-muted: #5a5a78;
      --border: #e2e2ec;
      --surface: #ffffff;
      --bg: #f9fafc;
    }

    body {
      font-family: 'Inter', sans-serif;
      background: var(--bg);
      color: var(--dark);
      line-height: 1.5;
      display: flex;
      flex-direction: column;
      min-height: 100vh;
    }

    .app-wrapper {
      max-width: 1440px;
      margin: 0 auto;
      padding: 2rem 2rem 1rem;
      flex: 1;
      width: 100%;
    }

    /* ---------- HEADER ---------- */
    .header {
      display: flex;
      justify-content: space-between;
      align-items: center;
      margin-bottom: 2.5rem;
      flex-wrap: wrap;
      gap: 1.5rem;
      position: sticky;
      top: 0;
      background: rgba(249, 250, 252, 0.9);
      backdrop-filter: blur(12px);
      z-index: 40;
      padding: 0.5rem 0;
    }

    .logo {
      font-size: 1.8rem;
      font-weight: 700;
      letter-spacing: -0.02em;
      background: linear-gradient(135deg, #1e1e2f 0%, #3b3b5c 100%);
      -webkit-background-clip: text;
      -webkit-text-fill-color: transparent;
      background-clip: text;
      display: flex;
      align-items: center;
      gap: 0.4rem;
      cursor: pointer;
    }

    .logo i {
      background: linear-gradient(145deg, #ff7b2c, #ff5e1a);
      -webkit-background-clip: text;
      -webkit-text-fill-color: transparent;
      font-size: 2rem;
    }

    .nav-links {
      display: flex;
      gap: 2.5rem;
      font-weight: 500;
      color: #4a4a6a;
      font-size: 1rem;
    }

    .nav-links a {
      text-decoration: none;
      color: inherit;
      transition: color 0.2s;
      cursor: pointer;
    }

    .nav-links a:hover { color: var(--brand); }

    .header-actions {
      display: flex;
      gap: 1.8rem;
      align-items: center;
      color: #2b2b40;
      font-size: 1.3rem;
    }

    .header-actions i {
      cursor: pointer;
      transition: color 0.2s, transform 0.15s;
    }

    .header-actions i:hover { color: var(--brand); transform: translateY(-2px); }

    .cart-badge {
      position: relative;
    }

    .cart-badge::after {
      content: attr(data-count);
      position: absolute;
      top: -8px;
      right: -10px;
      background: var(--brand);
      color: white;
      font-size: 0.65rem;
      font-weight: 700;
      min-width: 18px;
      height: 18px;
      padding: 0 4px;
      border-radius: 9px;
      display: flex;
      align-items: center;
      justify-content: center;
      border: 2px solid var(--bg);
      transition: transform 0.2s;
    }

    .cart-badge.bump::after {
      animation: bump 0.35s ease;
    }

    @keyframes bump {
      0% { transform: scale(1); }
      50% { transform: scale(1.4); }
      100% { transform: scale(1); }
    }

    /* ---------- MAIN PRODUCT GRID ---------- */
    .product-main {
      display: grid;
      grid-template-columns: 1fr 1fr;
      gap: 3rem;
      background: var(--surface);
      border-radius: 2.5rem;
      box-shadow: 0 20px 40px -10px rgba(0, 0, 0, 0.08), 0 8px 20px -6px rgba(0, 0, 0, 0.02);
      padding: 2.5rem;
      margin-bottom: 3rem;
    }

    .gallery { display: flex; flex-direction: column; gap: 1.5rem; }

    .main-image {
      background: #f2f5fc;
      border-radius: 2rem;
      overflow: hidden;
      aspect-ratio: 1 / 1;
      display: flex;
      align-items: center;
      justify-content: center;
      transition: background 0.3s;
      box-shadow: inset 0 0 0 1px rgba(0,0,0,0.02);
    }

    .main-image img {
      width: 100%; height: 100%;
      object-fit: cover; display: block;
      transition: transform 0.4s ease;
    }

    .main-image:hover img { transform: scale(1.02); }

    .thumbnails { display: flex; gap: 1rem; justify-content: center; }

    .thumb {
      width: 80px; height: 80px;
      border-radius: 1.2rem;
      background: #f2f5fc;
      cursor: pointer;
      border: 2px solid transparent;
      transition: border 0.15s, transform 0.15s;
      overflow: hidden;
      display: flex; align-items: center; justify-content: center;
      box-shadow: 0 4px 8px rgba(0,0,0,0.02);
    }

    .thumb img { width: 100%; height: 100%; object-fit: cover; }
    .thumb.active { border-color: var(--brand); transform: scale(1.02); box-shadow: 0 8px 14px -6px rgba(255, 94, 26, 0.25); }
    .thumb:hover { transform: translateY(-2px); }

    .product-info { display: flex; flex-direction: column; gap: 1.2rem; }

    .badge {
      display: inline-block;
      background: #ffece2;
      color: #b23e0a;
      font-size: 0.8rem; font-weight: 600;
      letter-spacing: 0.02em;
      padding: 0.35rem 1rem;
      border-radius: 30px;
      width: fit-content;
      text-transform: uppercase;
    }

    .product-title {
      font-size: 2.4rem;
      font-weight: 700;
      line-height: 1.2;
      letter-spacing: -0.02em;
      color: #12121c;
    }

    .rating { display: flex; align-items: center; gap: 0.75rem; color: #f5b342; font-size: 1rem; margin: 0.2rem 0; }
    .rating span { color: #6b6b85; font-weight: 400; margin-left: 0.4rem; font-size: 0.95rem; }

    .price-section { display: flex; align-items: center; gap: 1.2rem; margin: 0.5rem 0 0.2rem; }
    .current-price { font-size: 2rem; font-weight: 700; color: var(--dark); letter-spacing: -0.02em; }
    .old-price { font-size: 1.2rem; color: #9a9ab0; text-decoration: line-through; font-weight: 400; }
    .discount { background: #e6f7ed; color: #0e7b4b; padding: 0.3rem 0.9rem; border-radius: 30px; font-size: 0.85rem; font-weight: 600; }

    .description { color: var(--text-muted); font-size: 1rem; line-height: 1.6; margin: 0.5rem 0; }

    .divider { height: 1px; background: #e9e9f0; margin: 0.6rem 0 1rem; }

    .selector-label {
      font-size: 0.95rem; font-weight: 600;
      text-transform: uppercase; letter-spacing: 0.03em;
      color: #3d3d60; margin-bottom: 0.7rem;
    }

    .color-options { display: flex; gap: 1rem; margin-bottom: 1rem; }

    .color-dot {
      width: 42px; height: 42px;
      border-radius: 50%; cursor: pointer;
      border: 2px solid transparent;
      transition: all 0.15s;
      box-shadow: 0 4px 10px rgba(0,0,0,0.04);
    }

    .color-dot.active { border-color: var(--brand); transform: scale(1.08); box-shadow: 0 8px 16px -4px rgba(255, 94, 26, 0.3); }
    .color-dot:hover { transform: scale(1.05); }

    .size-options { display: flex; gap: 0.8rem; flex-wrap: wrap; margin-bottom: 1.6rem; }

    .size-btn {
      background: white;
      border: 1.5px solid var(--border);
      color: #2b2b40; font-weight: 500; font-size: 0.95rem;
      width: 60px; height: 48px;
      border-radius: 14px;
      display: flex; align-items: center; justify-content: center;
      cursor: pointer; transition: all 0.15s;
      box-shadow: 0 2px 4px rgba(0,0,0,0.02);
    }

    .size-btn:hover { border-color: #b0b0cc; background: #f8f8fe; }
    .size-btn.active { border-color: var(--brand); background: var(--brand-soft); color: #b23e0a; font-weight: 600; box-shadow: 0 6px 12px -6px rgba(255, 94, 26, 0.3); }

    .action-row { display: flex; gap: 1.2rem; align-items: center; margin: 0.8rem 0 1rem; flex-wrap: wrap; }

    .quantity-selector {
      display: flex; align-items: center;
      border: 1.5px solid var(--border);
      border-radius: 60px; padding: 0.25rem;
      background: white;
      box-shadow: 0 2px 6px rgba(0,0,0,0.02);
    }

    .quantity-selector button {
      background: transparent; border: none;
      width: 44px; height: 44px;
      font-size: 1.3rem; font-weight: 500;
      color: #3d3d60; cursor: pointer;
      border-radius: 50%;
      transition: background 0.15s, color 0.15s;
      display: flex; align-items: center; justify-content: center;
    }

    .quantity-selector button:hover { background: #f1f1f8; color: var(--brand); }
    .quantity-selector span { font-weight: 600; width: 36px; text-align: center; font-size: 1.1rem; }

    .add-to-cart {
      background: var(--dark); border: none; color: white;
      font-weight: 600; font-size: 1.05rem;
      padding: 1rem 2.5rem; border-radius: 60px;
      display: flex; align-items: center; gap: 0.8rem;
      cursor: pointer;
      transition: background 0.2s, transform 0.15s, box-shadow 0.2s;
      box-shadow: 0 12px 20px -10px rgba(30, 30, 47, 0.3);
      flex: 1; justify-content: center;
      letter-spacing: 0.01em;
    }

    .add-to-cart:hover { background: var(--dark-2); transform: translateY(-2px); box-shadow: 0 20px 28px -12px rgba(30, 30, 47, 0.4); }
    .add-to-cart:active { transform: translateY(0); }
    .add-to-cart i { font-size: 1.1rem; }

    .wishlist-btn {
      background: #ffffff; border: 1.5px solid var(--border);
      width: 58px; height: 58px; border-radius: 50%;
      display: flex; align-items: center; justify-content: center;
      font-size: 1.5rem; color: #3d3d60;
      cursor: pointer; transition: all 0.15s;
      box-shadow: 0 6px 12px -6px rgba(0,0,0,0.05);
    }

    .wishlist-btn:hover { border-color: var(--brand); color: var(--brand); background: var(--brand-soft); transform: scale(1.03); }

    .delivery-info { display: flex; gap: 1.5rem; margin-top: 1rem; font-size: 0.9rem; color: var(--text-muted); flex-wrap: wrap; }
    .delivery-info i { color: var(--brand); margin-right: 0.5rem; width: 18px; }

    /* ---------- SECTION HEADERS ---------- */
    .section-head {
      display: flex;
      justify-content: space-between;
      align-items: flex-end;
      margin-bottom: 1.5rem;
      flex-wrap: wrap;
      gap: 1rem;
    }

    .rec-title {
      font-size: 1.5rem;
      font-weight: 700;
      letter-spacing: -0.02em;
      display: flex;
      align-items: center;
      gap: 0.6rem;
      color: var(--dark);
    }

    .rec-title i { color: var(--brand); }

    .view-all {
      font-size: 0.95rem;
      font-weight: 600;
      color: var(--brand);
      cursor: pointer;
      display: flex;
      align-items: center;
      gap: 0.4rem;
      transition: gap 0.2s;
    }

    .view-all:hover { gap: 0.7rem; }

    /* ---------- PRODUCT GRID ---------- */
    .rec-grid {
      display: grid;
      grid-template-columns: repeat(auto-fill, minmax(220px, 1fr));
      gap: 1.8rem;
      margin-bottom: 3rem;
    }

    .rec-card {
      background: white;
      border-radius: 1.8rem;
      padding: 1.2rem 1rem 1.4rem;
      display: flex;
      flex-direction: column;
      text-align: left;
      box-shadow: 0 10px 20px -8px rgba(0, 0, 0, 0.04), 0 2px 6px rgba(0,0,0,0.02);
      transition: transform 0.25s, box-shadow 0.25s;
      border: 1px solid #f0f0f8;
      position: relative;
      overflow: hidden;
    }

    .rec-card:hover { transform: translateY(-6px); box-shadow: 0 24px 32px -16px rgba(0, 0, 0, 0.12); }

    .rec-img {
      width: 100%;
      aspect-ratio: 1/1;
      border-radius: 1.3rem;
      background: #f2f5fc;
      display: flex; align-items: center; justify-content: center;
      margin-bottom: 1rem;
      overflow: hidden;
      position: relative;
    }

    .rec-img img { width: 100%; height: 100%; object-fit: cover; transition: transform 0.4s; }
    .rec-card:hover .rec-img img { transform: scale(1.06); }

    .quick-add {
      position: absolute;
      bottom: 12px; right: 12px;
      width: 42px; height: 42px;
      border-radius: 50%;
      background: var(--dark);
      color: white;
      border: none;
      display: flex; align-items: center; justify-content: center;
      font-size: 1rem;
      cursor: pointer;
      opacity: 0;
      transform: translateY(8px);
      transition: opacity 0.2s, transform 0.2s, background 0.2s;
      box-shadow: 0 8px 16px -6px rgba(0,0,0,0.3);
    }

    .rec-card:hover .quick-add { opacity: 1; transform: translateY(0); }
    .quick-add:hover { background: var(--brand); }

    .tag-pill {
      position: absolute;
      top: 12px; left: 12px;
      background: white;
      color: var(--brand);
      font-size: 0.7rem;
      font-weight: 700;
      padding: 0.3rem 0.7rem;
      border-radius: 30px;
      text-transform: uppercase;
      letter-spacing: 0.03em;
      box-shadow: 0 4px 10px rgba(0,0,0,0.06);
    }

    .rec-card h4 { font-weight: 600; font-size: 1rem; margin-bottom: 0.3rem; color: var(--dark); }
    .rec-cat { font-size: 0.8rem; color: #9a9ab0; margin-bottom: 0.5rem; }

    .rec-price-row { display: flex; align-items: center; gap: 0.6rem; margin-top: auto; }
    .rec-price { font-weight: 700; color: var(--dark); font-size: 1.05rem; }
    .rec-old { font-size: 0.85rem; color: #9a9ab0; text-decoration: line-through; }

    /* ---------- CART DRAWER ---------- */
    .overlay {
      position: fixed; inset: 0;
      background: rgba(20, 20, 35, 0.45);
      backdrop-filter: blur(2px);
      opacity: 0;
      pointer-events: none;
      transition: opacity 0.3s;
      z-index: 90;
    }

    .overlay.show { opacity: 1; pointer-events: auto; }

    .cart-drawer {
      position: fixed;
      top: 0; right: 0;
      width: 440px;
      max-width: 100%;
      height: 100vh;
      background: white;
      z-index: 100;
      transform: translateX(105%);
      transition: transform 0.35s cubic-bezier(0.4, 0, 0.2, 1);
      display: flex;
      flex-direction: column;
      box-shadow: -20px 0 50px -20px rgba(0,0,0,0.2);
    }

    .cart-drawer.open { transform: translateX(0); }

    .cart-head {
      padding: 1.8rem 1.8rem 1.2rem;
      display: flex;
      justify-content: space-between;
      align-items: center;
      border-bottom: 1px solid #f0f0f8;
    }

    .cart-head h3 { font-size: 1.3rem; font-weight: 700; letter-spacing: -0.01em; }
    .cart-head h3 span { color: #9a9ab0; font-weight: 500; font-size: 1rem; }

    .close-cart {
      background: #f4f4fa;
      border: none;
      width: 40px; height: 40px;
      border-radius: 50%;
      cursor: pointer;
      font-size: 1.1rem;
      color: #3d3d60;
      display: flex; align-items: center; justify-content: center;
      transition: background 0.15s, color 0.15s, transform 0.15s;
    }

    .close-cart:hover { background: #ffece2; color: var(--brand); transform: rotate(90deg); }

    .cart-body {
      flex: 1;
      overflow-y: auto;
      padding: 1.5rem 1.8rem;
      display: flex;
      flex-direction: column;
      gap: 1.2rem;
    }

    .cart-empty {
      text-align: center;
      color: #9a9ab0;
      padding: 4rem 1rem;
      display: flex;
      flex-direction: column;
      align-items: center;
      gap: 1rem;
    }

    .cart-empty i { font-size: 3rem; color: #dadae8; }
    .cart-empty p { font-size: 0.95rem; }

    .cart-item {
      display: flex;
      gap: 1rem;
      padding-bottom: 1.2rem;
      border-bottom: 1px solid #f4f4fa;
      animation: fadeIn 0.3s ease;
    }

    @keyframes fadeIn {
      from { opacity: 0; transform: translateY(8px); }
      to { opacity: 1; transform: translateY(0); }
    }

    .cart-item-img {
      width: 80px; height: 80px;
      border-radius: 1rem;
      background: #f2f5fc;
      overflow: hidden;
      flex-shrink: 0;
    }

    .cart-item-img img { width: 100%; height: 100%; object-fit: cover; }

    .cart-item-info { flex: 1; display: flex; flex-direction: column; gap: 0.2rem; }
    .cart-item-info h4 { font-size: 0.95rem; font-weight: 600; }
    .cart-item-meta { font-size: 0.8rem; color: #9a9ab0; }
    .cart-item-price { font-weight: 700; font-size: 1rem; margin-top: 0.2rem; }

    .cart-item-actions {
      display: flex;
      justify-content: space-between;
      align-items: center;
      margin-top: 0.5rem;
    }

    .mini-qty {
      display: flex; align-items: center;
      border: 1px solid var(--border);
      border-radius: 30px;
      overflow: hidden;
    }

    .mini-qty button {
      background: transparent; border: none;
      width: 28px; height: 28px;
      cursor: pointer;
      color: #3d3d60;
      font-size: 0.85rem;
      display: flex; align-items: center; justify-content: center;
      transition: background 0.15s;
    }

    .mini-qty button:hover { background: #f4f4fa; color: var(--brand); }
    .mini-qty span { font-size: 0.85rem; font-weight: 600; width: 24px; text-align: center; }

    .remove-item {
      background: none; border: none;
      color: #b0b0c4;
      font-size: 0.8rem;
      cursor: pointer;
      display: flex; align-items: center; gap: 0.3rem;
      transition: color 0.15s;
      font-weight: 500;
    }

    .remove-item:hover { color: #e74c3c; }

    .cart-foot {
      padding: 1.5rem 1.8rem 1.8rem;
      border-top: 1px solid #f0f0f8;
      background: #fdfdff;
    }

    .cart-row {
      display: flex;
      justify-content: space-between;
      font-size: 0.95rem;
      color: var(--text-muted);
      margin-bottom: 0.6rem;
    }

    .cart-row.total {
      font-size: 1.25rem;
      font-weight: 700;
      color: var(--dark);
      margin: 1rem 0 1.2rem;
      padding-top: 0.8rem;
      border-top: 1px dashed #e2e2ec;
    }

    .checkout-btn {
      width: 100%;
      background: var(--brand);
      color: white;
      border: none;
      padding: 1.1rem;
      border-radius: 60px;
      font-size: 1.05rem;
      font-weight: 700;
      cursor: pointer;
      display: flex; align-items: center; justify-content: center; gap: 0.6rem;
      transition: background 0.2s, transform 0.15s, box-shadow 0.2s;
      box-shadow: 0 14px 24px -10px rgba(255, 94, 26, 0.5);
    }

    .checkout-btn:hover { background: #e8500f; transform: translateY(-2px); box-shadow: 0 20px 28px -12px rgba(255, 94, 26, 0.6); }
    .checkout-btn:disabled { background: #dadae8; box-shadow: none; cursor: not-allowed; transform: none; }

    .continue-shopping {
      text-align: center;
      margin-top: 0.9rem;
      font-size: 0.9rem;
      font-weight: 500;
      color: var(--text-muted);
      cursor: pointer;
      transition: color 0.15s;
    }

    .continue-shopping:hover { color: var(--brand); }

    /* ---------- CHECKOUT MODAL ---------- */
    .modal-overlay {
      position: fixed; inset: 0;
      background: rgba(20, 20, 35, 0.55);
      backdrop-filter: blur(4px);
      z-index: 200;
      display: flex;
      align-items: center;
      justify-content: center;
      padding: 1.5rem;
      opacity: 0;
      pointer-events: none;
      transition: opacity 0.3s;
    }

    .modal-overlay.show { opacity: 1; pointer-events: auto; }

    .checkout-modal {
      background: white;
      border-radius: 2rem;
      width: 100%;
      max-width: 560px;
      max-height: 92vh;
      overflow-y: auto;
      padding: 2rem;
      transform: translateY(20px) scale(0.98);
      transition: transform 0.35s cubic-bezier(0.4, 0, 0.2, 1);
      box-shadow: 0 40px 80px -20px rgba(0,0,0,0.35);
    }

    .modal-overlay.show .checkout-modal { transform: translateY(0) scale(1); }

    .modal-head {
      display: flex;
      justify-content: space-between;
      align-items: center;
      margin-bottom: 1.5rem;
    }

    .modal-head h3 { font-size: 1.4rem; font-weight: 700; letter-spacing: -0.01em; }

    /* progress steps */
    .steps {
      display: flex;
      align-items: center;
      gap: 0.5rem;
      margin-bottom: 2rem;
    }

    .step {
      flex: 1;
      display: flex;
      flex-direction: column;
      align-items: center;
      gap: 0.4rem;
      position: relative;
    }

    .step-circle {
      width: 34px; height: 34px;
      border-radius: 50%;
      background: #f0f0f8;
      color: #9a9ab0;
      font-size: 0.85rem;
      font-weight: 700;
      display: flex; align-items: center; justify-content: center;
      transition: all 0.3s;
      z-index: 2;
    }

    .step.active .step-circle { background: var(--brand); color: white; box-shadow: 0 0 0 5px rgba(255, 94, 26, 0.15); }
    .step.done .step-circle { background: #0e7b4b; color: white; }

    .step-label { font-size: 0.75rem; font-weight: 600; color: #9a9ab0; text-transform: uppercase; letter-spacing: 0.03em; }
    .step.active .step-label { color: var(--brand); }
    .step.done .step-label { color: #0e7b4b; }

    .step:not(:last-child)::after {
      content: '';
      position: absolute;
      top: 17px; left: 60%;
      width: 80%;
      height: 2px;
      background: #f0f0f8;
      z-index: 1;
    }

    .step.done:not(:last-child)::after { background: #0e7b4b; }

    /* form */
    .form-group { margin-bottom: 1.1rem; }
    .form-group label {
      display: block;
      font-size: 0.85rem;
      font-weight: 600;
      color: #3d3d60;
      margin-bottom: 0.4rem;
    }

    .form-group input, .form-group select {
      width: 100%;
      padding: 0.85rem 1rem;
      border: 1.5px solid var(--border);
      border-radius: 14px;
      font-size: 0.95rem;
      font-family: inherit;
      color: var(--dark);
      background: white;
      transition: border 0.15s, box-shadow 0.15s;
      outline: none;
    }

    .form-group input:focus, .form-group select:focus {
      border-color: var(--brand);
      box-shadow: 0 0 0 4px rgba(255, 94, 26, 0.1);
    }

    .form-row { display: grid; grid-template-columns: 1fr 1fr; gap: 1rem; }

    /* payment methods */
    .pay-methods { display: flex; flex-direction: column; gap: 0.8rem; margin-bottom: 1.4rem; }

    .pay-method {
      display: flex;
      align-items: center;
      gap: 1rem;
      border: 1.5px solid var(--border);
      border-radius: 16px;
      padding: 1rem 1.2rem;
      cursor: pointer;
      transition: all 0.15s;
      background: white;
    }

    .pay-method:hover { border-color: #b0b0cc; background: #fafaff; }
    .pay-method.active { border-color: var(--brand); background: var(--brand-soft); box-shadow: 0 6px 16px -8px rgba(255, 94, 26, 0.4); }

    .pay-method i { font-size: 1.4rem; width: 28px; text-align: center; color: #3d3d60; }
    .pay-method.active i { color: var(--brand); }
    .pay-method .pay-info { flex: 1; }
    .pay-method .pay-info strong { display: block; font-size: 0.95rem; font-weight: 600; }
    .pay-method .pay-info small { color: #9a9ab0; font-size: 0.8rem; }

    .radio-dot {
      width: 20px; height: 20px;
      border-radius: 50%;
      border: 2px solid #d0d0e0;
      display: flex; align-items: center; justify-content: center;
      transition: border 0.15s;
      flex-shrink: 0;
    }

    .pay-method.active .radio-dot { border-color: var(--brand); }
    .pay-method.active .radio-dot::after {
      content: '';
      width: 10px; height: 10px;
      border-radius: 50%;
      background: var(--brand);
    }

    /* summary box */
    .summary-box {
      background: #f8f8fe;
      border-radius: 1.2rem;
      padding: 1.2rem;
      margin-bottom: 1.4rem;
    }

    .summary-box .cart-row { margin-bottom: 0.5rem; }
    .summary-box .cart-row.total { margin: 0.8rem 0 0; padding-top: 0.8rem; font-size: 1.1rem; }

    /* modal actions */
    .modal-actions { display: flex; gap: 1rem; margin-top: 1.5rem; }

    .btn-secondary {
      flex: 0 0 auto;
      padding: 1rem 1.6rem;
      border-radius: 60px;
      border: 1.5px solid var(--border);
      background: white;
      font-weight: 600;
      font-size: 0.95rem;
      color: #3d3d60;
      cursor: pointer;
      transition: all 0.15s;
    }

    .btn-secondary:hover { border-color: #b0b0cc; background: #f8f8fe; }

    .btn-primary {
      flex: 1;
      padding: 1rem 1.8rem;
      border-radius: 60px;
      border: none;
      background: var(--dark);
      color: white;
      font-weight: 700;
      font-size: 1rem;
      cursor: pointer;
      display: flex; align-items: center; justify-content: center; gap: 0.6rem;
      transition: all 0.2s;
      box-shadow: 0 12px 20px -10px rgba(30, 30, 47, 0.35);
    }

    .btn-primary:hover { background: var(--dark-2); transform: translateY(-2px); }
    .btn-primary.pay { background: var(--brand); box-shadow: 0 12px 20px -10px rgba(255, 94, 26, 0.5); }
    .btn-primary.pay:hover { background: #e8500f; }

    /* success screen */
    .success-screen {
      text-align: center;
      padding: 1.5rem 0.5rem 0
