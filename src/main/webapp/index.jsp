<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0, viewport-fit=cover" />
    <title>LUMINA — modern marketplace</title>

    <!-- Fonts & Icons -->
    <link href="https://fonts.googleapis.com/css2?family=Inter:opsz,wght@14..32,300;14..32,400;14..32,600;14..32,700;14..32,800&family=Space+Grotesk:wght@400;500;600;700&display=swap" rel="stylesheet">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.0/css/all.min.css">

    <style>
        * {
            margin: 0;
            padding: 0;
            box-sizing: border-box;
        }

        body {
            background: #fefaf5;
            font-family: 'Inter', sans-serif;
            color: #1e1e2a;
            overflow-x: hidden;
        }

        :root {
            --glow: #ff6b4a;
            --deep: #0f172a;
            --sand: #fff3e9;
            --gold: #fbbf24;
            --mint: #10b981;
            --lavender: #8b5cf6;
            --shadow-sm: 0 12px 30px rgba(0, 0, 0, 0.05);
            --shadow-hover: 0 25px 35px -12px rgba(0, 0, 0, 0.15);
            --border-radius: 2rem;
            --card-radius: 1.5rem;
        }

        .container {
            max-width: 1280px;
            margin: 0 auto;
            padding: 0 28px;
        }

        /* header glassmorph */
        .glass-header {
            position: sticky;
            top: 0;
            z-index: 100;
            background: rgba(255, 248, 242, 0.92);
            backdrop-filter: blur(14px);
            border-bottom: 1px solid rgba(0, 0, 0, 0.03);
            transition: all 0.2s ease;
        }

        .header-flex {
            display: flex;
            align-items: center;
            justify-content: space-between;
            gap: 20px;
            padding: 14px 0;
        }

        .brand-logo {
            font-family: 'Space Grotesk', monospace;
            font-size: 1.8rem;
            font-weight: 800;
            background: linear-gradient(135deg, #ff512f, #f09819);
            -webkit-background-clip: text;
            background-clip: text;
            color: transparent;
            letter-spacing: -0.02em;
        }

        .brand-logo i {
            background: none;
            -webkit-background-clip: unset;
            color: #ff6b4a;
            margin-right: 6px;
        }

        .nav-links {
            display: flex;
            gap: 28px;
            align-items: center;
        }

        .nav-links a {
            text-decoration: none;
            font-weight: 500;
            color: #2d2f3e;
            transition: 0.2s;
            font-size: 0.95rem;
        }

        .nav-links a:hover {
            color: #ff6b4a;
        }

        .search-wrapper {
            display: flex;
            align-items: center;
            background: white;
            border-radius: 60px;
            padding: 6px 16px;
            gap: 8px;
            box-shadow: 0 2px 6px rgba(0, 0, 0, 0.02);
            border: 1px solid #ffe3d6;
        }

        .search-wrapper input {
            border: none;
            background: transparent;
            padding: 8px 0;
            width: 220px;
            outline: none;
            font-size: 0.85rem;
        }

        .icon-circle {
            background: #fff0e8;
            width: 38px;
            height: 38px;
            display: inline-flex;
            align-items: center;
            justify-content: center;
            border-radius: 50%;
            transition: 0.2s;
            cursor: pointer;
            color: #1e1e2a;
        }

        .cart-badge {
            position: relative;
        }

        .cart-count-bubble {
            position: absolute;
            top: -6px;
            right: -8px;
            background: #ff6b4a;
            color: white;
            font-size: 11px;
            font-weight: bold;
            width: 20px;
            height: 20px;
            border-radius: 30px;
            display: flex;
            align-items: center;
            justify-content: center;
            box-shadow: 0 2px 6px rgba(0, 0, 0, 0.1);
        }

        /* hero */
        .hero-glow {
            background: linear-gradient(145deg, #fff1e6 0%, #ffe6d9 100%);
            border-radius: 0 0 48px 48px;
            margin-bottom: 2rem;
        }

        .hero-grid {
            display: flex;
            align-items: center;
            gap: 40px;
            padding: 48px 0 56px;
            flex-wrap: wrap;
        }

        .hero-text {
            flex: 1;
        }

        .hero-text .badge {
            background: rgba(255, 107, 74, 0.12);
            display: inline-block;
            padding: 6px 14px;
            border-radius: 60px;
            font-size: 0.75rem;
            font-weight: 600;
            color: #ff6b4a;
            margin-bottom: 18px;
        }

        .hero-text h1 {
            font-size: 3.2rem;
            font-weight: 800;
            line-height: 1.2;
            font-family: 'Space Grotesk', sans-serif;
            background: linear-gradient(to right, #1e293b, #ff6b4a);
            -webkit-background-clip: text;
            background-clip: text;
            color: transparent;
        }

        .hero-buttons {
            display: flex;
            gap: 16px;
            margin-top: 28px;
        }

        .btn-primary {
            background: #1e1e2a;
            border: none;
            padding: 12px 32px;
            border-radius: 40px;
            font-weight: 600;
            color: white;
            transition: 0.25s;
            cursor: pointer;
            font-size: 0.9rem;
            box-shadow: 0 8px 14px -6px rgba(0, 0, 0, 0.1);
        }

        .btn-primary:hover {
            background: #ff6b4a;
            transform: scale(0.98);
        }

        .btn-outline {
            background: transparent;
            border: 1px solid #1e1e2a;
            padding: 12px 32px;
            border-radius: 40px;
            font-weight: 600;
            cursor: pointer;
        }

        /* categories 3d style */
        .section-title {
            font-size: 1.8rem;
            font-weight: 700;
            margin-bottom: 8px;
            letter-spacing: -0.3px;
        }

        .grid-cats {
            display: grid;
            grid-template-columns: repeat(auto-fit, minmax(160px, 1fr));
            gap: 24px;
            margin: 32px 0;
        }

        .cat-card-modern {
            background: white;
            padding: 24px 12px;
            text-align: center;
            border-radius: 28px;
            transition: all 0.25s ease;
            box-shadow: var(--shadow-sm);
            border: 1px solid rgba(255, 107, 74, 0.1);
            cursor: pointer;
        }

        .cat-card-modern:hover {
            transform: translateY(-8px);
            box-shadow: var(--shadow-hover);
            border-color: #ff6b4a;
        }

        .cat-icon {
            font-size: 2.2rem;
            color: #ff6b4a;
            margin-bottom: 12px;
        }

        /* product grid */
        .product-grid {
            display: grid;
            grid-template-columns: repeat(auto-fill, minmax(270px, 1fr));
            gap: 28px;
            margin: 32px 0;
        }

        .product-card {
            background: white;
            border-radius: 28px;
            overflow: hidden;
            transition: all 0.3s cubic-bezier(0.2, 0.9, 0.4, 1.1);
            box-shadow: 0 10px 20px rgba(0, 0, 0, 0.02);
            border: 1px solid #ffefe6;
        }

        .product-card:hover {
            transform: translateY(-6px);
            box-shadow: 0 28px 34px -12px rgba(0, 0, 0, 0.12);
        }

        .product-img {
            width: 100%;
            height: 240px;
            object-fit: cover;
            transition: 0.5s;
        }

        .product-info {
            padding: 18px 18px 20px;
        }

        .product-title {
            font-weight: 700;
            font-size: 1.1rem;
        }

        .price-wrap {
            display: flex;
            align-items: baseline;
            gap: 12px;
            margin: 12px 0;
        }

        .current-price {
            font-weight: 800;
            font-size: 1.5rem;
            color: #1e1e2a;
        }

        .old-price-strike {
            color: #9ca3af;
            text-decoration: line-through;
            font-size: 0.9rem;
        }

        .rating-star {
            color: #fbbf24;
            font-size: 0.8rem;
            letter-spacing: 2px;
        }

        .add-to-cart {
            background: #1e1e2a;
            width: 100%;
            border: none;
            padding: 12px;
            border-radius: 40px;
            font-weight: 600;
            color: white;
            display: flex;
            align-items: center;
            justify-content: center;
            gap: 8px;
            cursor: pointer;
            transition: 0.2s;
        }

        .add-to-cart:hover {
            background: #ff6b4a;
        }

        /* flash sale premium */
        .flash-sale {
            background: linear-gradient(115deg, #0f172a 0%, #1e293b 100%);
            border-radius: 44px;
            padding: 40px;
            margin: 56px 0;
            color: white;
        }

        .sale-flex {
            display: flex;
            flex-wrap: wrap;
            gap: 40px;
            align-items: center;
        }

        .sale-img {
            flex: 1;
            border-radius: 28px;
            overflow: hidden;
            max-height: 280px;
            object-fit: cover;
            width: 100%;
        }

        .sale-content {
            flex: 1.2;
        }

        .timer-group {
            display: flex;
            gap: 18px;
            margin: 24px 0;
        }

        .time-card {
            background: rgba(255, 255, 255, 0.1);
            backdrop-filter: blur(4px);
            border-radius: 28px;
            padding: 12px 18px;
            text-align: center;
            min-width: 70px;
        }

        .time-number {
            font-size: 2rem;
            font-weight: 800;
        }

        /* testimonials */
        .testimonial-scroll {
            display: flex;
            gap: 28px;
            overflow-x: auto;
            padding: 16px 0 28px;
            scrollbar-width: thin;
        }

        .testi-card {
            min-width: 320px;
            background: white;
            padding: 24px;
            border-radius: 32px;
            box-shadow: var(--shadow-sm);
        }

        /* newsletter premium */
        .newsletter-modern {
            background: linear-gradient(120deg, #ffede3, #fff5ef);
            border-radius: 48px;
            padding: 52px 36px;
            text-align: center;
        }

        /* footer */
        .footer-distinct {
            background: #0f172a;
            margin-top: 56px;
            padding: 48px 0 24px;
            color: #cbd5e1;
            border-radius: 36px 36px 0 0;
        }

        @media (max-width: 780px) {
            .nav-links {
                display: none;
            }
            .hero-text h1 {
                font-size: 2.2rem;
            }
            .search-wrapper input {
                width: 140px;
            }
        }
    </style>
</head>
<body>

<div class="glass-header">
    <div class="container header-flex">
        <div class="brand-logo">
            <i class="fas fa-sparkle"></i> LUMINA
        </div>
        <div class="nav-links">
            <a href="#">Home</a>
            <a href="#trending">Shop</a>
            <a href="#deals">Flash Sale</a>
            <a href="#">Journal</a>
        </div>
        <div style="display: flex; gap: 14px; align-items: center;">
            <div class="search-wrapper">
                <i class="fas fa-search" style="color:#ff6b4a;"></i>
                <input type="text" id="searchInput" placeholder="Search for style...">
            </div>
            <div class="icon-circle cart-badge" id="cartIconBtn">
                <i class="fas fa-bag-shopping"></i>
                <span class="cart-count-bubble" id="cartCount">0</span>
            </div>
            <div class="icon-circle">
                <i class="far fa-user"></i>
            </div>
        </div>
    </div>
</div>

<main>
    <!-- Hero Section -->
    <div class="hero-glow">
        <div class="container hero-grid">
            <div class="hero-text">
                <div class="badge"><i class="fas fa-gem"></i> summer drop '25</div>
                <h1>Where style meets<br>unexpected edge</h1>
                <p style="margin-top: 20px; color:#4b5563; max-width: 460px;">Limited silhouettes, infinite expression. Shop curated drops & iconic pieces.</p>
                <div class="hero-buttons">
                    <button class="btn-primary" id="shopNowBtn">Explore collection <i class="fas fa-arrow-right"></i></button>
                    <button class="btn-outline" id="discoverDealsBtn">Flash deals <i class="fas fa-fire"></i></button>
                </div>
            </div>
            <div style="flex: 0.8; text-align: center;">
                <i class="fas fa-crown" style="font-size: 6rem; opacity: 0.2; color:#ff6b4a;"></i>
            </div>
        </div>
    </div>

    <!-- Categories -->
    <div class="container">
        <div style="margin-top: 32px;">
            <h2 class="section-title">Browse by mood</h2>
            <p style="color:#6b7280;">trending edits & core essentials</p>
        </div>
        <div class="grid-cats" id="categoriesGrid"></div>
    </div>

    <!-- Trending Products -->
    <div class="container" id="trending">
        <div style="display: flex; justify-content: space-between; align-items: baseline; flex-wrap: wrap;">
            <div><h2 class="section-title">🔥 Bestselling drops</h2><p style="color:#6b7280;">most loved by our community</p></div>
        </div>
        <div class="product-grid" id="productsGrid"></div>
    </div>

    <!-- Flash Sale premium -->
    <div class="container" id="deals">
        <div class="flash-sale">
            <div class="sale-flex">
                <img class="sale-img" src="https://images.unsplash.com/photo-1611186871348-b1ce696e52c9?auto=format&fit=crop&w=800&q=80" alt="luxury product">
                <div class="sale-content">
                    <span style="background:#ff6b4a; padding:5px 12px; border-radius: 60px; font-size:0.7rem; font-weight: bold;">⚡ limited offer</span>
                    <h2 style="font-size: 2rem; margin: 12px 0;">Aether Wireless Max</h2>
                    <p>High-fidelity studio sound, 40h battery life — now at special launch price.</p>
                    <div class="timer-group" id="timerRoot">
                        <div class="time-card"><span class="time-number" id="dealDays">0</span><br>Days</div>
                        <div class="time-card"><span class="time-number" id="dealHours">00</span><br>Hrs</div>
                        <div class="time-card"><span class="time-number" id="dealMinutes">00</span><br>Min</div>
                        <div class="time-card"><span class="time-number" id="dealSeconds">00</span><br>Sec</div>
                    </div>
                    <div class="price-wrap" style="margin: 12px 0;">
                        <span class="current-price" style="color:#fbbf24;">$249</span>
                        <span class="old-price-strike" style="color:#94a3b8;">$399</span>
                        <span style="background:#ff6b4a; padding:4px 12px; border-radius:40px; font-size:0.7rem;">-38%</span>
                    </div>
                    <button class="btn-primary" id="flashDealBtn" style="background:#ff6b4a;">Grab deal →</button>
                </div>
            </div>
        </div>
    </div>

    <!-- Testimonials -->
    <div class="container">
        <h2 class="section-title">❤️ loved by creators</h2>
        <div class="testimonial-scroll" id="testimonialList">
            <!-- dynamic or static but to keep vibe we add modern js injected but also fallback -->
        </div>
    </div>

    <!-- Newsletter -->
    <div class="container">
        <div class="newsletter-modern">
            <i class="fas fa-envelope-open-text" style="font-size: 2.5rem; color:#ff6b4a;"></i>
            <h3 style="margin: 12px 0;">Don’t miss the next drop</h3>
            <p style="margin-bottom: 24px;">Be first to access secret sales & exclusive edits</p>
            <form id="newsletterForm" style="display: flex; gap: 12px; justify-content: center; flex-wrap: wrap;">
                <input type="email" id="newsEmail" placeholder="Your email" style="padding: 14px 20px; border-radius: 60px; border: none; width: 280px; outline: none;">
                <button type="submit" class="btn-primary" style="background:#1e1e2a;">Subscribe →</button>
            </form>
            <div id="newsMsg" style="margin-top: 16px; font-size: 0.85rem;"></div>
        </div>
    </div>
</main>

<footer class="footer-distinct">
    <div class="container" style="display: flex; justify-content: space-between; flex-wrap: wrap; gap: 32px;">
        <div><i class="fas fa-sparkle"></i> LUMINA © 2025<br><span style="font-size: 0.8rem;">Radical e‑commerce experience</span></div>
        <div style="display: flex; gap: 48px;"><div>Shop<br>Studio<br>Archive</div><div>Support<br>Returns<br>Gift card</div></div>
    </div>
</footer>

<script>
    // ---------- DATA ----------
    const CATEGORIES = [
        { id: "wear", name: "Streetwear", icon: "fa-hoodie" },
        { id: "audio", name: "Audio gear", icon: "fa-headphones" },
        { id: "edc", name: "Everyday carry", icon: "fa-watch" },
        { id: "sneakers", name: "Sneakers", icon: "fa-shoe-prints" },
        { id: "access", name: "Minimalist", icon: "fa-glasses" },
        { id: "tech", name: "Gadgets", icon: "fa-microchip" }
    ];

    const PRODUCTS = [
        { id: 101, title: "Orbit sneakers 'carbon', price: 129, oldPrice: 189, rating: 4.8, reviews: 234, img: "https://images.unsplash.com/photo-1542291026-7eec264c27ff?auto=format&fit=crop&w=600&q=80", category: "sneakers", badge: "hot" },
        { id: 102, title: "Terra backpack V2", price: 89, oldPrice: 129, rating: 4.7, reviews: 98, img: "https://images.unsplash.com/photo-1553062407-98eeb64c6a62?auto=format&fit=crop&w=600&q=80", category: "edc" },
        { id: 103, title: "Noise cancelling buds", price: 199, oldPrice: 279, rating: 4.9, reviews: 456, img: "https://images.unsplash.com/photo-1590658268037-6bf12165a8df?auto=format&fit=crop&w=600&q=80", category: "audio", badge: "bestseller" },
        { id: 104, title: "Chrono slim watch", price: 245, oldPrice: 320, rating: 4.6, reviews: 123, img: "https://images.unsplash.com/photo-1524805444758-089113d48a6d?auto=format&fit=crop&w=600&q=80", category: "access" },
        { id: 105, title: "Retro pixel hoodie", price: 79, oldPrice: 99, rating: 4.9, reviews: 87, img: "https://images.unsplash.com/photo-1556821840-3a63f95609a7?auto=format&fit=crop&w=600&q=80", category: "wear" },
        { id: 106, title: "Magnetic charging dock", price: 49, rating: 4.5, reviews: 210, img: "https://images.unsplash.com/photo-1586953208448-b95a79798f07?auto=format&fit=crop&w=600&q=80", category: "tech" }
    ];

    let cartCount = 0;
    const cartCountSpan = document.getElementById('cartCount');

    function updateCartUI() {
        cartCountSpan.innerText = cartCount;
    }

    function addToCartHandler(productId) {
        const product = PRODUCTS.find(p => p.id === productId);
        if (!product) return;
        cartCount++;
        updateCartUI();
        const btn = document.querySelector(`.add-btn[data-id='${productId}']`);
        if (btn) {
            const originalHTML = btn.innerHTML;
            btn.innerHTML = '<i class="fas fa-check"></i> Added';
            btn.disabled = true;
            setTimeout(() => {
                btn.innerHTML = originalHTML;
                btn.disabled = false;
            }, 900);
        }
        // subtle alert-free feedback
    }

    function renderCategories() {
        const grid = document.getElementById('categoriesGrid');
        grid.innerHTML = '';
        CATEGORIES.forEach(cat => {
            const card = document.createElement('div');
            card.className = 'cat-card-modern';
            card.innerHTML = `<div class="cat-icon"><i class="fas ${cat.icon}"></i></div><h4>${cat.name}</h4><span style="font-size:12px;">shop now →</span>`;
            card.addEventListener('click', () => {
                document.getElementById('searchInput').value = cat.name;
                filterProducts(cat.name);
                document.getElementById('trending').scrollIntoView({ behavior: 'smooth' });
            });
            grid.appendChild(card);
        });
    }

    function filterProducts(query) {
        const q = query.trim().toLowerCase();
        if (!q) renderProducts(PRODUCTS);
        else {
            const filtered = PRODUCTS.filter(p => p.title.toLowerCase().includes(q) || p.category.toLowerCase().includes(q));
            renderProducts(filtered);
        }
    }

    function renderProducts(productsArray) {
        const container = document.getElementById('productsGrid');
        container.innerHTML = '';
        productsArray.forEach(p => {
            const stars = '★'.repeat(Math.floor(p.rating)) + (p.rating % 1 >= 0.5 ? '½' : '');
            const card = document.createElement('div');
            card.className = 'product-card';
            card.innerHTML = `
                <img class="product-img" src="${p.img}" alt="${p.title}" loading="lazy">
                <div class="product-info">
                    <div class="product-title">${p.title}</div>
                    <div class="rating-star">${stars} <span style="color:#6b7280; font-size:12px;">(${p.reviews})</span></div>
                    <div class="price-wrap">
                        <span class="current-price">$${p.price}</span>
                        ${p.oldPrice ? `<span class="old-price-strike">$${p.oldPrice}</span>` : ''}
                    </div>
                    <button class="add-to-cart add-btn" data-id="${p.id}"><i class="fas fa-shopping-bag"></i> Add to cart</button>
                </div>
            `;
            container.appendChild(card);
        });
        document.querySelectorAll('.add-btn').forEach(btn => {
            btn.addEventListener('click', (e) => {
                e.stopPropagation();
                const id = parseInt(btn.getAttribute('data-id'));
                addToCartHandler(id);
            });
        });
    }

    // countdown timer
    function initCountdown() {
        const targetDate = new Date();
        targetDate.setHours(targetDate.getHours() + 28);
        targetDate.setMinutes(targetDate.getMinutes() + 15);
        function update() {
            const diff = targetDate - new Date();
            if (diff <= 0) {
                document.getElementById('dealDays').innerText = '0';
                document.getElementById('dealHours').innerText = '00';
                document.getElementById('dealMinutes').innerText = '00';
                document.getElementById('dealSeconds').innerText = '00';
                return;
            }
            const days = Math.floor(diff / (1000 * 60 * 60 * 24));
            const hours = Math.floor((diff % (86400000)) / 3600000);
            const mins = Math.floor((diff % 3600000) / 60000);
            const secs = Math.floor((diff % 60000) / 1000);
            document.getElementById('dealDays').innerText = days;
            document.getElementById('dealHours').innerText = String(hours).padStart(2, '0');
            document.getElementById('dealMinutes').innerText = String(mins).padStart(2, '0');
            document.getElementById('dealSeconds').innerText = String(secs).padStart(2, '0');
        }
        update();
        setInterval(update, 1000);
    }

    // testimonials dynamic for style
    function loadTestimonials() {
        const container = document.getElementById('testimonialList');
        const testimonials = [
            { name: "Naomi Chen", text: "The quality is unreal — my third order already!", stars: 5, img: "https://randomuser.me/api/portraits/women/68.jpg" },
            { name: "Marcus V.", text: "Sleek UI and fast shipping. Absolutely love the audio gear.", stars: 5 },
            { name: "Elena R.", text: "Best design-forward store. Every piece feels special.", stars: 4 }
        ];
        container.innerHTML = testimonials.map(t => `
            <div class="testi-card">
                <div class="rating-star">${'★'.repeat(t.stars)}</div>
                <p style="margin:12px 0;">“${t.text}”</p>
                <div style="display:flex; gap:10px; align-items:center;"><i class="fas fa-user-circle" style="font-size:28px; color:#ff6b4a;"></i> <strong>${t.name}</strong></div>
            </div>
        `).join('');
    }

    // newsletter
    function bindNewsletter() {
        const form = document.getElementById('newsletterForm');
        const msgDiv = document.getElementById('newsMsg');
        form.addEventListener('submit', (e) => {
            e.preventDefault();
            const email = document.getElementById('newsEmail').value.trim();
            if (!email || !email.includes('@')) {
                msgDiv.innerHTML = '<span style="color:#e11d48;">✨ valid email please</span>';
                setTimeout(() => msgDiv.innerHTML = '', 2000);
                return;
            }
            msgDiv.innerHTML = '<span style="color:#10b981;">✔️ Subscribed — welcome to Lumina club!</span>';
            document.getElementById('newsEmail').value = '';
            setTimeout(() => msgDiv.innerHTML = '', 3000);
        });
    }

    // flash deal button
    document.addEventListener('DOMContentLoaded', () => {
        renderCategories();
        renderProducts(PRODUCTS);
        updateCartUI();
        initCountdown();
        loadTestimonials();
        bindNewsletter();

        const searchInputField = document.getElementById('searchInput');
        searchInputField.addEventListener('input', (e) => filterProducts(e.target.value));
        document.getElementById('shopNowBtn').addEventListener('click', () => document.getElementById('trending').scrollIntoView({ behavior: 'smooth' }));
        document.getElementById('discoverDealsBtn').addEventListener('click', () => document.getElementById('deals').scrollIntoView({ behavior: 'smooth' }));
        document.getElementById('flashDealBtn').addEventListener('click', () => {
            cartCount++;
            updateCartUI();
            alert('🔥 Flash deal added to cart!');
        });
        const cartBtn = document.getElementById('cartIconBtn');
        if (cartBtn) cartBtn.addEventListener('click', () => alert(`🛒 Cart total: ${cartCount} item(s). Checkout demo.`));
    });
</script>
</body>
</html>
