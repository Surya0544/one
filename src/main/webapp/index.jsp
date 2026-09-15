<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8" />
<meta name="viewport" content="width=device-width, initial-scale=1.0" />
<title>ShopHub - E-Commerce Store</title>
<style>
  * { margin: 0; padding: 0; box-sizing: border-box; }
  :root {
    --primary: #6366f1;
    --primary-dark: #4f46e5;
    --accent: #f59e0b;
    --text: #1f2937;
    --muted: #6b7280;
    --border: #e5e7eb;
    --bg: #f9fafb;
    --white: #fff;
    --danger: #ef4444;
    --success: #10b981;
    --radius: 12px;
    --shadow: 0 4px 12px rgba(0,0,0,0.08);
    --shadow-lg: 0 10px 25px rgba(0,0,0,0.12);
  }
  body {
    font-family: system-ui, -apple-system, 'Segoe UI', Roboto, sans-serif;
    background: var(--bg);
    color: var(--text);
    line-height: 1.6;
  }

  /* ===== HEADER ===== */
  .header {
    background: var(--white);
    box-shadow: 0 1px 3px rgba(0,0,0,0.06);
    position: sticky; top: 0; z-index: 100;
  }
  .header-inner {
    max-width: 1280px; margin: 0 auto;
    padding: 0 20px; height: 68px;
    display: flex; align-items: center; justify-content: space-between; gap: 16px;
  }
  .logo { font-size: 1.4rem; font-weight: 800; color: var(--primary); display: flex; align-items: center; gap: 8px; }
  .search-box { flex: 1; max-width: 420px; position: relative; }
  .search-box input {
    width: 100%; padding: 10px 40px 10px 16px;
    border: 1px solid var(--border); border-radius: var(--radius);
    font-size: 0.95rem; background: var(--bg); transition: 0.2s;
  }
  .search-box input:focus { outline: none; border-color: var(--primary); background: var(--white); box-shadow: 0 0 0 3px rgba(99,102,241,0.12); }
  .search-box::after { content: '🔍'; position: absolute; right: 14px; top: 50%; transform: translateY(-50%); opacity: 0.6; }
  .cart-btn {
    background: none; border: none; font-size: 1.5rem;
    cursor: pointer; position: relative; padding: 6px;
  }
  .cart-badge {
    position: absolute; top: 0; right: 0;
    background: var(--danger); color: white;
    font-size: 0.7rem; font-weight: 700;
    min-width: 20px; height: 20px; padding: 0 5px;
    border-radius: 50px; display: flex; align-items: center; justify-content: center;
  }

  /* ===== HERO ===== */
  .hero {
    background: linear-gradient(135deg, var(--primary), #8b5cf6);
    color: white; padding: 80px 20px; text-align: center;
  }
  .hero h1 { font-size: 2.8rem; font-weight: 800; margin-bottom: 12px; }
  .hero p { font-size: 1.15rem; opacity: 0.92; }

  /* ===== FILTERS ===== */
  .container { max-width: 1280px; margin: 0 auto; padding: 40px 20px; }
  .filters {
    display: flex; justify-content: space-between; align-items: center;
    flex-wrap: wrap; gap: 16px; margin-bottom: 28px;
  }
  .categories { display: flex; flex-wrap: wrap; gap: 8px; }
  .cat-btn {
    padding: 8px 18px; border: 1px solid var(--border);
    background: var(--white); border-radius: 50px;
    font-size: 0.9rem; font-weight: 500; cursor: pointer; transition: 0.2s;
  }
  .cat-btn:hover { border-color: var(--primary); color: var(--primary); }
  .cat-btn.active { background: var(--primary); color: white; border-color: var(--primary); }
  .sort-select {
    padding: 10px 16px; border: 1px solid var(--border);
    border-radius: var(--radius); background: var(--white);
    font-size: 0.9rem; cursor: pointer;
  }

  /* ===== PRODUCT GRID ===== */
  .grid {
    display: grid;
    grid-template-columns: repeat(auto-fill, minmax(260px, 1fr));
    gap: 24px;
  }
  .product-card {
    background: var(--white); border-radius: var(--radius);
    overflow: hidden; box-shadow: var(--shadow);
    transition: transform 0.25s, box-shadow 0.25s;
    display: flex; flex-direction: column;
  }
  .product-card:hover { transform: translateY(-4px); box-shadow: var(--shadow-lg); }
  .product-img {
    width: 100%; height: 220px; object-fit: cover;
    background: var(--bg); transition: transform 0.4s;
  }
  .product-card:hover .product-img { transform: scale(1.05); }
  .product-img-wrap { overflow: hidden; }
  .product-info { padding: 18px; display: flex; flex-direction: column; flex: 1; }
  .product-cat { font-size: 0.7rem; text-transform: uppercase; letter-spacing: 0.06em; color: var(--primary); font-weight: 700; }
  .product-name { font-size: 1.05rem; font-weight: 600; margin: 6px 0; }
  .product-desc { font-size: 0.85rem; color: var(--muted); margin-bottom: 10px; }
  .product-rating { color: var(--accent); font-size: 0.9rem; margin-bottom: 14px; }
  .product-footer { display: flex; justify-content: space-between; align-items: center; margin-top: auto; }
  .product-price { font-size: 1.2rem; font-weight: 700; }
  .add-btn {
    background: var(--primary); color: white; border: none;
    padding: 9px 18px; border-radius: 10px;
    font-weight: 600; cursor: pointer; transition: 0.2s;
  }
  .add-btn:hover { background: var(--primary-dark); }

  /* ===== CART SIDEBAR ===== */
  .overlay {
    position: fixed; inset: 0; background: rgba(0,0,0,0.5);
    opacity: 0; visibility: hidden; transition: 0.3s; z-index: 200;
  }
  .overlay.open { opacity: 1; visibility: visible; }
  .cart-sidebar {
    position: fixed; top: 0; right: 0; width: 420px; max-width: 100%;
    height: 100vh; background: var(--white);
    transform: translateX(100%); transition: transform 0.3s;
    z-index: 201; display: flex; flex-direction: column;
    box-shadow: -10px 0 30px rgba(0,0,0,0.1);
  }
  .cart-sidebar.open { transform: translateX(0); }
  .cart-header {
    display: flex; justify-content: space-between; align-items: center;
    padding: 20px; border-bottom: 1px solid var(--border);
  }
  .cart-header h2 { font-size: 1.2rem; }
  .close-btn { background: none; border: none; font-size: 1.7rem; cursor: pointer; color: var(--muted); line-height: 1; }
  .cart-items { flex: 1; overflow-y: auto; padding: 16px 20px; }
  .cart-item { display: flex; gap: 12px; padding: 14px 0; border-bottom: 1px solid #f3f4f6; }
  .cart-item img { width: 72px; height: 72px; object-fit: cover; border-radius: 8px; }
  .cart-item-info { flex: 1; }
  .cart-item-info h4 { font-size: 0.95rem; margin-bottom: 4px; }
  .cart-item-price { color: var(--primary); font-weight: 600; font-size: 0.9rem; }
  .qty-controls { display: flex; align-items: center; gap: 8px; margin-top: 8px; }
  .qty-btn {
    width: 28px; height: 28px; border: 1px solid var(--border);
    background: var(--white); border-radius: 6px; cursor: pointer;
    font-size: 1rem; display: flex; align-items: center; justify-content: center;
  }
  .qty-btn:hover { border-color: var(--primary); }
  .qty-val { min-width: 22px; text-align: center; font-weight: 600; }
  .cart-item-right { display: flex; flex-direction: column; justify-content: space-between; align-items: flex-end; }
  .cart-item-total { font-weight: 700; }
  .remove-btn { background: none; border: none; cursor: pointer; font-size: 1rem; opacity: 0.6; }
  .remove-btn:hover { opacity: 1; }
  .empty-cart {
    flex: 1; display: flex; flex-direction: column;
    align-items: center; justify-content: center; gap: 12px; color: var(--muted);
  }
  .empty-cart .icon { font-size: 4rem; opacity: 0.4; }
  .cart-footer { padding: 20px; border-top: 1px solid var(--border); }
  .cart-total { display: flex; justify-content: space-between; align-items: center; margin-bottom: 14px; font-size: 1.15rem; }
  .cart-total strong { font-size: 1.35rem; }
  .checkout-btn {
    width: 100%; background: var(--primary); color: white; border: none;
    padding: 14px; font-size: 1rem; font-weight: 600;
    border-radius: var(--radius); cursor: pointer; transition: 0.2s;
  }
  .checkout-btn:hover { background: var(--primary-dark); }

  /* ===== MODAL ===== */
  .modal {
    position: fixed; top: 50%; left: 50%;
    transform: translate(-50%, -50%);
    width: 92%; max-width: 520px; max-height: 90vh;
    overflow-y: auto; background: white;
    border-radius: 16px; padding: 28px;
    z-index: 202; box-shadow: var(--shadow-lg);
  }
  .modal h2 { margin-bottom: 20px; font-size: 1.4rem; }
  .modal-close {
    position: absolute; top: 16px; right: 20px;
    background: none; border: none; font-size: 1.7rem;
    cursor: pointer; color: var(--muted); line-height: 1;
  }
  .modal form { display: flex; flex-direction: column; gap: 12px; }
  .modal input {
    padding: 12px 14px; border: 1px solid var(--border);
    border-radius: 10px; font-size: 0.95rem; width: 100%;
  }
  .modal input:focus { outline: none; border-color: var(--primary); box-shadow: 0 0 0 3px rgba(99,102,241,0.12); }
  .form-row { display: grid; grid-template-columns: 1fr 1fr; gap: 12px; }
  .order-summary {
    background: var(--bg); padding: 16px;
    border-radius: 10px; margin-top: 8px;
    display: flex; flex-direction: column; gap: 8px; font-size: 0.92rem;
  }
  .order-summary > div { display: flex; justify-content: space-between; }
  .order-summary .grand { border-top: 1px solid var(--border); padding-top: 8px; margin-top: 4px; font-size: 1.05rem; font-weight: 700; }
  .modal .submit-btn {
    background: var(--primary); color: white; border: none;
    padding: 14px; font-size: 1rem; font-weight: 600;
    border-radius: 10px; cursor: pointer; margin-top: 8px;
  }
  .modal .submit-btn:hover { background: var(--primary-dark); }
  .modal .submit-btn:disabled { opacity: 0.6; cursor: wait; }

  /* ===== NOTIFICATION ===== */
  .notification {
    position: fixed; bottom: 24px; left: 50%;
    transform: translateX(-50%);
    background: var(--success); color: white;
    padding: 12px 24px; border-radius: 50px;
    font-weight: 600; box-shadow: var(--shadow-lg);
    z-index: 300; animation: slideUp 0.3s ease;
  }
  @keyframes slideUp {
    from { opacity: 0; transform: translate(-50%, 20px); }
    to { opacity: 1; transform: translate(-50%, 0); }
  }

  /* ===== FOOTER ===== */
  .footer {
    background: #1f2937; color: #d1d5db;
    padding: 40px 20px 20px; margin-top: 60px;
  }
  .footer-inner { max-width: 1280px; margin: 0 auto; text-align: center; }
  .footer-inner p { font-size: 0.9rem; opacity: 0.7; }

  /* ===== LOADING ===== */
  .loading, .no-results { text-align: center; padding: 60px 20px; color: var(--muted); }

  /* ===== RESPONSIVE ===== */
  @media (max-width: 640px) {
    .hero h1 { font-size: 1.9rem; }
    .header-inner { padding: 0 12px; }
    .search-box { max-width: none; }
    .cart-sidebar { width: 100%; }
    .form-row { grid-template-columns: 1fr; }
    .product-img { height: 180px; }
  }
</style>
</head>
<body>

<!-- HEADER -->
<header class="header">
  <div class="header-inner">
    <div class="logo">🛍️ ShopHub</div>
    <div class="search-box">
      <input type="text" id="searchInput" placeholder="Search products..." />
    </div>
    <button class="cart-btn" onclick="toggleCart(true)">
      🛒<span class="cart-badge" id="cartBadge" style="display:none">0</span>
    </button>
  </div>
</header>

<!-- HERO -->
<section class="hero">
  <h1>Welcome to ShopHub</h1>
  <p>Discover quality products at unbeatable prices</p>
</section>

<!-- PRODUCTS -->
<main class="container">
  <div class="filters">
    <div class="categories" id="categoryList"></div>
    <select class="sort-select" id="sortSelect">
      <option value="default">Sort: Default</option>
      <option value="price-low">Price: Low to High</option>
      <option value="price-high">Price: High to Low</option>
      <option value="rating">Top Rated</option>
    </select>
  </div>

  <div class="grid" id="productGrid"></div>
</main>

<!-- FOOTER -->
<footer class="footer">
  <div class="footer-inner">
    <p>© 2024 ShopHub — Demo E-Commerce App</p>
  </div>
</footer>

<!-- CART SIDEBAR -->
<div class="overlay" id="cartOverlay" onclick="toggleCart(false)"></div>
<aside class="cart-sidebar" id="cartSidebar">
  <div class="cart-header">
    <h2>Your Cart</h2>
    <button class="close-btn" onclick="toggleCart(false)">×</button>
  </div>
  <div class="cart-items" id="cartItems"></div>
  <div class="cart-footer" id="cartFooter" style="display:none">
    <div class="cart-total"><span>Total:</span><strong id="cartTotal">$0.00</strong></div>
    <button class="checkout-btn" onclick="openCheckout()">Proceed to Checkout</button>
  </div>
</aside>

<!-- CHECKOUT MODAL -->
<div class="overlay" id="modalOverlay" onclick="closeCheckout()"></div>
<div class="modal" id="checkoutModal" style="display:none">
  <button class="modal-close" onclick="closeCheckout()">×</button>
  <h2>Checkout</h2>
  <form id="checkoutForm" onsubmit="placeOrder(event)">
    <input required placeholder="Full Name" name="name" />
    <input required type="email" placeholder="Email" name="email" />
    <input required placeholder="Street Address" name="address" />
    <div class="form-row">
      <input required placeholder="City" name="city" />
      <input required placeholder="ZIP Code" name="zip" />
    </div>
    <input required placeholder="Card Number (16 digits)" maxlength="19" name="card" />
    <div class="form-row">
      <input required placeholder="MM/YY" maxlength="5" name="expiry" />
      <input required placeholder="CVV" maxlength="4" name="cvv" />
    </div>
    <div class="order-summary" id="orderSummary"></div>
    <button type="submit" class="submit-btn" id="payBtn">Pay Now</button>
  </form>
</div>

<!-- NOTIFICATION -->
<div class="notification" id="notification" style="display:none"></div>

<script>
/* ============================================================
   CONFIG — Change this to your AWS backend URL
   Example: const API_URL = 'https://api.yourdomain.com/api';
   For local demo we fall back to in-memory data.
   ============================================================ */
const API_URL = window.__API_URL__ || null;

/* ============================================================
   PRODUCT DATA (fallback for demo / static hosting)
   If backend is configured, products will be fetched from API.
   ============================================================ */
const FALLBACK_PRODUCTS = [
  { id: 1, name: 'Wireless Headphones', description: 'Premium noise-cancelling headphones', price: 79.99, image_url: 'https://images.unsplash.com/photo-1505740420928-5e560c06d30e?w=500', category: 'Electronics', rating: 4.5 },
  { id: 2, name: 'Smart Watch', description: 'Fitness tracker with heart-rate monitor', price: 199.99, image_url: 'https://images.unsplash.com/photo-1523275335684-37898b6baf30?w=500', category: 'Electronics', rating: 4.8 },
  { id: 3, name: 'Leather Backpack', description: 'Stylish leather backpack for daily use', price: 59.99, image_url: 'https://images.unsplash.com/photo-1553062407-98eeb64c6a62?w=500', category: 'Accessories', rating: 4.3 },
  { id: 4, name: 'Running Shoes', description: 'Comfortable athletic shoes for runners', price: 89.99, image_url: 'https://images.unsplash.com/photo-1542291026-7eec264c27ff?w=500', category: 'Sports', rating: 4.6 },
  { id: 5, name: 'Coffee Maker', description: 'Programmable coffee maker with timer', price: 49.99, image_url: 'https://images.unsplash.com/photo-1517668808822-9ebb02f2a0e6?w=500', category: 'Home', rating: 4.4 },
  { id: 6, name: 'Sunglasses', description: 'UV400 polarized designer sunglasses', price: 129.99, image_url: 'https://images.unsplash.com/photo-1572635196237-14b3f281503f?w=500', category: 'Accessories', rating: 4.7 },
  { id: 7, name: 'Gaming Mouse', description: 'RGB gaming mouse with programmable buttons', price: 39.99, image_url: 'https://images.unsplash.com/photo-1527864550417-7fd91fc51a46?w=500', category: 'Electronics', rating: 4.5 },
  { id: 8, name: 'Yoga Mat', description: 'Non-slip yoga mat for all fitness levels', price: 29.99, image_url: 'https://images.unsplash.com/photo-1601925260368-ae2f83cf8b7f?w=500', category: 'Sports', rating: 4.2 }
];

/* ============================================================
   STATE
   ============================================================ */
const state = {
  products: [],
  filtered: [],
  categories: [],
  cart: JSON.parse(localStorage.getItem('cart') || '[]'),
  filters: { search: '', category: 'All', sort: 'default' }
};

/* ============================================================
   API HELPERS
   ============================================================ */
async function fetchProducts(params = {}) {
  if (!API_URL) {
    // Demo mode: filter locally
    let items = [...FALLBACK_PRODUCTS];
    if (params.search) {
      const s = params.search.toLowerCase();
      items = items.filter(p => p.name.toLowerCase().includes(s) || p.description.toLowerCase().includes(s));
    }
    if (params.category && params.category !== 'All') {
      items = items.filter(p => p.category === params.category);
    }
    if (params.sort === 'price-low') items.sort((a, b) => a.price - b.price);
    if (params.sort === 'price-high') items.sort((a, b) => b.price - a.price);
    if (params.sort === 'rating') items.sort((a, b) => b.rating - a.rating);
    return items;
  }

  const qs = new URLSearchParams(params).toString();
  const res = await fetch(`${API_URL}/products${qs ? '?' + qs : ''}`);
  if (!res.ok) throw new Error('Failed to load products');
  return res.json();
}

async function submitOrderToServer(orderData) {
  if (!API_URL) {
    // Demo: simulate success
    return new Promise(resolve => setTimeout(() => resolve({ id: Date.now(), ...orderData }), 800));
  }
  const token = localStorage.getItem('token');
  const res = await fetch(`${API_URL}/orders`, {
    method: 'POST',
    headers: {
      'Content-Type': 'application/json',
      ...(token ? { Authorization: `Bearer ${token}` } : {})
    },
    body: JSON.stringify(orderData)
  });
  if (!res.ok) throw new Error('Order failed');
  return res.json();
}

/* ============================================================
   RENDERING
   ============================================================ */
async function loadProducts() {
  const grid = document.getElementById('productGrid');
  grid.innerHTML = '<div class="loading">Loading products...</div>';

  try {
    const items = await fetchProducts(state.filters);
    state.products = items;
    renderProducts(items);
    if (!state.categories.length) {
      const cats = [...new Set(items.map(p => p.category))].sort();
      state.categories = cats;
      renderCategories(cats);
    }
  } catch (err) {
    grid.innerHTML = `<div class="no-results">⚠️ ${err.message}</div>`;
  }
}

function renderProducts(items) {
  const grid = document.getElementById('productGrid');
  if (!items.length) {
    grid.innerHTML = '<div class="no-results">No products match your search</div>';
    return;
  }
  grid.innerHTML = items.map(p => `
    <div class="product-card">
      <div class="product-img-wrap">
        <img class="product-img" src="${p.image_url}" alt="${escapeHtml(p.name)}" loading="lazy" />
      </div>
      <div class="product-info">
        <span class="product-cat">${escapeHtml(p.category)}</span>
        <h3 class="product-name">${escapeHtml(p.name)}</h3>
        <p class="product-desc">${escapeHtml(p.description)}</p>
        <div class="product-rating">★ ${p.rating}</div>
        <div class="product-footer">
          <span class="product-price">$${Number(p.price).toFixed(2)}</span>
          <button class="add-btn" onclick="addToCart(${p.id})">Add</button>
        </div>
      </div>
    </div>
  `).join('');
}

function renderCategories(cats) {
  const el = document.getElementById('categoryList');
  el.innerHTML = ['All', ...cats].map(c =>
    `<button class="cat-btn ${state.filters.category === c ? 'active' : ''}" data-cat="${escapeHtml(c)}">${escapeHtml(c)}</button>`
  ).join('');

  el.querySelectorAll('.cat-btn').forEach(btn => {
    btn.addEventListener('click', () => {
      state.filters.category = btn.dataset.cat;
      renderCategories(state.categories);
      loadProducts();
    });
  });
}

/* ============================================================
   CART LOGIC
   ============================================================ */
function saveCart() {
  localStorage.setItem('cart', JSON.stringify(state.cart));
}

function addToCart(id) {
  const product = state.products.find(p => p.id === id)
                 || FALLBACK_PRODUCTS.find(p => p.id === id);
  if (!product) return;

  const existing = state.cart.find(i => i.id === id);
  if (existing) {
    existing.quantity++;
  } else {
    state.cart.push({ ...product, quantity: 1 });
  }
  saveCart();
  renderCart();
  showNotification(`${product.name} added to cart`);
}

function updateQty(id, delta) {
  const item = state.cart.find(i => i.id === id);
  if (!item) return;
  item.quantity += delta;
  if (item.quantity <= 0) {
    state.cart = state.cart.filter(i => i.id !== id);
  }
  saveCart();
  renderCart();
}

function removeItem(id) {
  state.cart = state.cart.filter(i => i.id !== id);
  saveCart();
  renderCart();
}

function renderCart() {
  const itemsEl = document.getElementById('cartItems');
  const footerEl = document.getElementById('cartFooter');
  const badge = document.getElementById('cartBadge');
  const totalEl = document.getElementById('cartTotal');

  const count = state.cart.reduce((s, i) => s + i.quantity, 0);
  const total = state.cart.reduce((s, i) => s + i.price * i.quantity, 0);

  badge.style.display = count > 0 ? 'flex' : 'none';
  badge.textContent = count;
  totalEl.textContent = `$${total.toFixed(2)}`;

  if (!state.cart.length) {
    itemsEl.innerHTML = `
      <div class="empty-cart">
        <div class="icon">🛒</div>
        <p>Your cart is empty</p>
      </div>`;
    footerEl.style.display = 'none';
    return;
  }

  footerEl.style.display = 'block';
  itemsEl.innerHTML = state.cart.map(item => `
    <div class="cart-item">
      <img src="${item.image_url}" alt="${escapeHtml(item.name)}" />
      <div class="cart-item-info">
        <h4>${escapeHtml(item.name)}</h4>
        <div class="cart-item-price">$${Number(item.price).toFixed(2)}</div>
        <div class="qty-controls">
          <button class="qty-btn" onclick="updateQty(${item.id}, -1)">−</button>
          <span class="qty-val">${item.quantity}</span>
          <button class="qty-btn" onclick="updateQty(${item.id}, 1)">+</button>
        </div>
      </div>
      <div class="cart-item-right">
        <span class="cart-item-total">$${(item.price * item.quantity).toFixed(2)}</span>
        <button class="remove-btn" onclick="removeItem(${item.id})">🗑️</button>
      </div>
    </div>
  `).join('');
}

/* ============================================================
   UI TOGGLES
   ============================================================ */
function toggleCart(open) {
  document.getElementById('cartSidebar').classList.toggle('open', open);
  document.getElementById('cartOverlay').classList.toggle('open', open);
}

function openCheckout() {
  if (!state.cart.length) return;
  toggleCart(false);
  renderOrderSummary();
  document.getElementById('checkoutModal').style.display = 'block';
  document.getElementById('modalOverlay').classList.add('open');
}

function closeCheckout() {
  document.getElementById('checkoutModal').style.display = 'none';
  document.getElementById('modalOverlay').classList.remove('open');
}

function renderOrderSummary() {
  const subtotal = state.cart.reduce((s, i) => s + i.price * i.quantity, 0);
  const shipping = subtotal > 50 ? 0 : 9.99;
  const tax = subtotal * 0.08;
  const grand = subtotal + shipping + tax;

  document.getElementById('orderSummary').innerHTML = `
    <div><span>Subtotal</span><span>$${subtotal.toFixed(2)}</span></div>
    <div><span>Shipping</span><span>${shipping === 0 ? 'FREE' : '$' + shipping.toFixed(2)}</span></div>
    <div><span>Tax (8%)</span><span>$${tax.toFixed(2)}</span></div>
    <div class="grand"><span>Total</span><span>$${grand.toFixed(2)}</span></div>
  `;
}

/* ============================================================
   PLACE ORDER
   ============================================================ */
async function placeOrder(event) {
  event.preventDefault();
  const btn = document.getElementById('payBtn');
  btn.disabled = true;
  btn.textContent = 'Processing...';

  const form = new FormData(event.target);
  const orderData = {
    items: state.cart.map(i => ({ id: i.id, quantity: i.quantity, price: i.price, name: i.name })),
    shippingAddress: {
      name: form.get('name'),
      email: form.get('email'),
      address: form.get('address'),
      city: form.get('city'),
      zip: form.get('zip')
    },
    total: state.cart.reduce((s, i) => s + i.price * i.quantity, 0)
  };

  try {
    await submitOrderToServer(orderData);
    state.cart = [];
    saveCart();
    renderCart();
    closeCheckout();
    event.target.reset();
    showNotification('🎉 Order placed successfully!');
  } catch (err) {
    showNotification('❌ ' + err.message);
  } finally {
    btn.disabled = false;
    btn.textContent = 'Pay Now';
  }
}

/* ============================================================
   UTILITIES
   ============================================================ */
function escapeHtml(str) {
  return String(str).replace(/[&<>"']/g, c => (
    { '&': '&amp;', '<': '&lt;', '>': '&gt;', '"': '&quot;', "'": '&#39;' }[c]
  ));
}

let notifyTimer;
function showNotification(msg) {
  const el = document.getElementById('notification');
  el.textContent = msg;
  el.style.display = 'block';
  clearTimeout(notifyTimer);
  notifyTimer = setTimeout(() => { el.style.display = 'none'; }, 2200);
}

/* ============================================================
   EVENT LISTENERS + INIT
   ============================================================ */
let searchTimer;
document.getElementById('searchInput').addEventListener('input', (e) => {
  clearTimeout(searchTimer);
  searchTimer = setTimeout(() => {
    state.filters.search = e.target.value.trim();
    loadProducts();
  }, 300);
});

document.getElementById('sortSelect').addEventListener('change', (e) => {
  state.filters.sort = e.target.value;
  loadProducts();
});

// Init
renderCart();
loadProducts();
</script>

</body>
</html>
