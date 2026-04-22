<!DOCTYPE html>
<html lang="en" class="scroll-smooth">
<head>
    <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0, viewport-fit=cover" />
    <title>LUMINA — Modern Marketplace</title>

    <link href="https://fonts.googleapis.com/css2?family=Inter:wght@300;400;500;600;700&family=Space+Grotesk:wght@500;700;900&display=swap" rel="stylesheet">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.0/css/all.min.css">

    <style>
        :root {
            --bg-base: #050505;
            --bg-surface: #121212;
            --bg-surface-hover: #1a1a1a;
            --text-main: #f8fafc;
            --text-muted: #94a3b8;
            --accent-primary: #8b5cf6;
            --accent-secondary: #06b6d4;
            --gradient-text: linear-gradient(135deg, #c084fc, #22d3ee);
            --gradient-glow: linear-gradient(135deg, rgba(139, 92, 246, 0.5), rgba(6, 182, 212, 0.5));
            --border-color: rgba(255, 255, 255, 0.08);
            --border-hover: rgba(255, 255, 255, 0.2);
            --radius-lg: 24px;
            --radius-md: 16px;
            --radius-sm: 8px;
            --transition: all 0.3s cubic-bezier(0.4, 0, 0.2, 1);
        }

        * {
            margin: 0;
            padding: 0;
            box-sizing: border-box;
        }

        body {
            background-color: var(--bg-base);
            font-family: 'Inter', sans-serif;
            color: var(--text-main);
            overflow-x: hidden;
            -webkit-font-smoothing: antialiased;
        }

        ::selection {
            background: var(--accent-primary);
            color: white;
        }

        /* Custom Scrollbar */
        ::-webkit-scrollbar { width: 8px; }
        ::-webkit-scrollbar-track { background: var(--bg-base); }
        ::-webkit-scrollbar-thumb { background: #333; border-radius: 4px; }
        ::-webkit-scrollbar-thumb:hover { background: var(--accent-primary); }

        .container {
            max-width: 1300px;
            margin: 0 auto;
            padding: 0 24px;
        }

        h1, h2, h3, .brand-logo {
            font-family: 'Space Grotesk', sans-serif;
        }

        /* --- Header --- */
        .glass-header {
            position: sticky;
            top: 0;
            z-index: 100;
            background: rgba(5, 5, 5, 0.6);
            backdrop-filter: blur(20px);
            -webkit-backdrop-filter: blur(20px);
            border-bottom: 1px solid var(--border-color);
            transition: var(--transition);
        }

        .header-flex {
            display: flex;
            align-items: center;
            justify-content: space-between;
            height: 80px;
        }

        .brand-logo {
            font-size: 1.8rem;
            font-weight: 900;
            background: var(--gradient-text);
            -webkit-background-clip: text;
            background-clip: text;
            color: transparent;
            letter-spacing: -0.05em;
            display: flex;
            align-items: center;
            gap: 8px;
        }

        .nav-links {
            display: flex;
            gap: 32px;
        }

        .nav-links a {
            text-decoration: none;
            color: var(--text-muted);
            font-weight: 500;
            font-size: 0.95rem;
            transition: var(--transition);
            position: relative;
        }

        .nav-links a:hover {
            color: var(--text-main);
        }

        .nav-links a::after {
            content: '';
            position: absolute;
            bottom: -4px;
            left: 0;
            width: 0;
            height: 2px;
            background: var(--gradient-text);
            transition: var(--transition);
        }

        .nav-links a:hover::after {
            width: 100%;
        }

        .actions-wrapper {
            display: flex;
            align-items: center;
            gap: 16px;
        }

        .search-wrapper {
            display: flex;
            align-items: center;
            background: var(--bg-surface);
            border: 1px solid var(--border-color);
            border-radius: 100px;
            padding: 8px 16px;
            transition: var(--transition);
        }

        .search-wrapper:focus-within {
            border-color: var(--accent-secondary);
            box-shadow: 0 0 15px rgba(6, 182, 212, 0.15);
        }

        .search-wrapper input {
            border: none;
            background: transparent;
            color: var(--text-main);
            padding: 4px 8px;
            width: 180px;
            outline: none;
            font-size: 0.9rem;
        }

        .search-wrapper input::placeholder {
            color: var(--text-muted);
        }

        .icon-btn {
            background: var(--bg-surface);
            border: 1px solid var(--border-color);
            width: 44px;
            height: 44px;
            border-radius: 50%;
            display: flex;
            align-items: center;
            justify-content: center;
            color: var(--text-main);
            cursor: pointer;
            transition: var(--transition);
            position: relative;
        }

        .icon-btn:hover {
            background: var(--bg-surface-hover);
            border-color: var(--border-hover);
            transform: translateY(-2px);
        }

        .cart-badge {
            position: absolute;
            top: -5px;
            right: -5px;
            background: var(--gradient-text);
            color: #000;
            font-size: 12px;
            font-weight: 700;
            min-width: 20px;
            height: 20px;
            border-radius: 10px;
            display: flex;
            align-items: center;
            justify-content: center;
            padding: 0 6px;
            box-shadow: 0 0 10px rgba(139, 92, 246, 0.5);
        }

        /* --- Hero Section --- */
        .hero-section {
            position: relative;
            padding: 120px 0;
            overflow: hidden;
            text-align: center;
        }

        /* Ambient Background Glows */
        .hero-section::before, .hero-section::after {
            content: '';
            position: absolute;
            width: 500px;
            height: 500px;
            border-radius: 50%;
            filter: blur(120px);
            z-index: -1;
            opacity: 0.4;
        }
        .hero-section::before {
            background: var(--accent-primary);
            top: -200px;
            left: -100px;
        }
        .hero-section::after {
            background: var(--accent-secondary);
            bottom: -200px;
            right: -100px;
        }

        .badge {
            display: inline-flex;
            align-items: center;
            gap: 8px;
            background: rgba(255, 255, 255, 0.05);
            border: 1px solid var(--border-color);
            padding: 8px 16px;
            border-radius: 100px;
            font-size: 0.85rem;
            font-weight: 600;
            color: var(--text-main);
            margin-bottom: 24px;
            backdrop-filter: blur(10px);
        }

        .hero-section h1 {
            font-size: clamp(3rem, 6vw, 5.5rem);
            line-height: 1.1;
            font-weight: 900;
            margin-bottom: 24px;
            letter-spacing: -0.03em;
        }

        .hero-section p {
            font-size: 1.2rem;
            color: var(--text-muted);
            max-width: 600px;
            margin: 0 auto 40px;
            line-height: 1.6;
        }

        .btn-group {
            display: flex;
            gap: 16px;
            justify-content: center;
        }

        .btn {
            padding: 16px 32px;
            border-radius: 100px;
            font-weight: 600;
            font-size: 1rem;
            cursor: pointer;
            transition: var(--transition);
            display: flex;
            align-items: center;
            gap: 8px;
            border: none;
        }

        .btn-primary {
            background: var(--gradient-text);
            color: #000;
            box-shadow: 0 4px 20px rgba(6, 182, 212, 0.3);
        }

        .btn-primary:hover {
            transform: translateY(-2px) scale(1.02);
            box-shadow: 0 8px 25px rgba(139, 92, 246, 0.5);
        }

        .btn-outline {
            background: rgba(255, 255, 255, 0.05);
            color: var(--text-main);
            border: 1px solid var(--border-color);
            backdrop-filter: blur(10px);
        }

        .btn-outline:hover {
            background: rgba(255, 255, 255, 0.1);
            border-color: var(--text-main);
            transform: translateY(-2px);
        }

        /* --- Sections Common --- */
        .section-header {
            margin-bottom: 40px;
            display: flex;
            justify-content: space-between;
            align-items: flex-end;
        }

        .section-title {
            font-size: 2.5rem;
            font-weight: 700;
            margin-bottom: 8px;
            letter-spacing: -0.02em;
        }

        .section-subtitle {
            color: var(--text-muted);
            font-size: 1.1rem;
        }

        /* --- Categories --- */
        .categories-grid {
            display: grid;
            grid-template-columns: repeat(auto-fit, minmax(180px, 1fr));
            gap: 20px;
            margin-bottom: 80px;
        }

        .category-card {
            background: var(--bg-surface);
            border: 1px solid var(--border-color);
            border-radius: var(--radius-lg);
            padding: 32px 24px;
            text-align: center;
            cursor: pointer;
            transition: var(--transition);
            position: relative;
            overflow: hidden;
        }

        .category-card::before {
            content: '';
            position: absolute;
            top: 0; left: 0; width: 100%; height: 100%;
            background: var(--gradient-text);
            opacity: 0;
            transition: var(--transition);
            z-index: 0;
        }

        .category-card:hover {
            transform: translateY(-8px);
            border-color: var(--accent-primary);
        }

        .category-card:hover::before {
            opacity: 0.05;
        }

        .category-icon {
            font-size: 2.5rem;
            margin-bottom: 16px;
            background: var(--gradient-text);
            -webkit-background-clip: text;
            background-clip: text;
            color: transparent;
            position: relative;
            z-index: 1;
        }

        .category-card h4 {
            font-size: 1.1rem;
            font-weight: 600;
            position: relative;
            z-index: 1;
        }

        /* --- Products Grid --- */
        .product-grid {
            display: grid;
            grid-template-columns: repeat(auto-fill, minmax(300px, 1fr));
            gap: 32px;
            margin-bottom: 100px;
        }

        .product-card {
            background: var(--bg-surface);
            border: 1px solid var(--border-color);
            border-radius: var(--radius-lg);
            padding: 16px;
            transition: var(--transition);
            display: flex;
            flex-direction: column;
        }

        .product-card:hover {
            transform: translateY(-8px);
            border-color: var(--border-hover);
            box-shadow: 0 20px 40px rgba(0, 0, 0, 0.4);
        }

        .product-img-wrap {
            position: relative;
            border-radius: var(--radius-md);
            overflow: hidden;
            height: 280px;
            margin-bottom: 20px;
            background: #1a1a1a;
        }

        .product-img {
            width: 100%;
            height: 100%;
            object-fit: cover;
            transition: transform 0.6s cubic-bezier(0.4, 0, 0.2, 1);
        }

        .product-card:hover .product-img {
            transform: scale(1.08);
        }

        .product-badge {
            position: absolute;
            top: 16px; left: 16px;
            background: rgba(0, 0, 0, 0.8);
            backdrop-filter: blur(8px);
            color: #fff;
            padding: 6px 12px;
            border-radius: 100px;
            font-size: 0.75rem;
            font-weight: 700;
            text-transform: uppercase;
            letter-spacing: 1px;
            border: 1px solid rgba(255,255,255,0.1);
        }

        .product-info {
            display: flex;
            flex-direction: column;
            flex-grow: 1;
        }

        .product-title {
            font-size: 1.2rem;
            font-weight: 600;
            margin-bottom: 8px;
            line-height: 1.4;
        }

        .product-meta {
            display: flex;
            align-items: center;
            justify-content: space-between;
            margin-bottom: 20px;
        }

        .product-price {
            font-family: 'Space Grotesk', sans-serif;
            font-size: 1.4rem;
            font-weight: 700;
            color: var(--text-main);
        }

        .product-price-old {
            font-size: 1rem;
            color: var(--text-muted);
            text-decoration: line-through;
            margin-left: 8px;
            font-weight: 400;
        }

        .product-rating {
            color: #fbbf24;
            font-size: 0.9rem;
            display: flex;
            align-items: center;
            gap: 4px;
        }

        .add-to-cart {
            margin-top: auto;
            width: 100%;
            padding: 14px;
            background: rgba(255, 255, 255, 0.05);
            border: 1px solid var(--border-color);
            color: var(--text-main);
            border-radius: var(--radius-md);
            font-weight: 600;
            cursor: pointer;
            transition: var(--transition);
            display: flex;
            justify-content: center;
            align-items: center;
            gap: 8px;
        }

        .add-to-cart:hover {
            background: var(--text-main);
            color: var(--bg-base);
        }

        /* --- Flash Sale --- */
        .flash-sale {
            position: relative;
            background: linear-gradient(145deg, #111 0%, #1a1a2e 100%);
            border: 1px solid rgba(139, 92, 246, 0.3);
            border-radius: 32px;
            padding: 48px;
            margin-bottom: 100px;
            overflow: hidden;
            box-shadow: 0 20px 50px rgba(0, 0, 0, 0.5);
        }

        .flash-sale::before {
            content: '';
            position: absolute;
            top: 0; left: 0; width: 100%; height: 100%;
            background: radial-gradient(circle at top right, rgba(139, 92, 246, 0.15), transparent 50%);
            pointer-events: none;
        }

        .sale-grid {
            display: grid;
            grid-template-columns: 1fr 1fr;
            gap: 48px;
            align-items: center;
        }

        .sale-img-wrap {
            border-radius: var(--radius-lg);
            overflow: hidden;
            border: 1px solid var(--border-color);
        }

        .sale-img {
            width: 100%;
            display: block;
            object-fit: cover;
        }

        .timer-group {
            display: flex;
            gap: 16px;
            margin: 32px 0;
        }

        .time-box {
            background: rgba(0, 0, 0, 0.4);
            border: 1px solid var(--border-color);
            padding: 16px;
            border-radius: var(--radius-md);
            text-align: center;
            min-width: 80px;
            backdrop-filter: blur(10px);
        }

        .time-box span {
            display: block;
            font-family: 'Space Grotesk', sans-serif;
            font-size: 2rem;
            font-weight: 700;
            color: var(--accent-secondary);
        }

        .time-box small {
            color: var(--text-muted);
            font-size: 0.8rem;
            text-transform: uppercase;
            letter-spacing: 1px;
            margin-top: 4px;
            display: block;
        }

        /* --- Footer --- */
        .modern-footer {
            background: #000;
            border-top: 1px solid var(--border-color);
            padding: 80px 0 40px;
        }

        .footer-grid {
            display: grid;
            grid-template-columns: 2fr 1fr 1fr 1fr;
            gap: 48px;
            margin-bottom: 60px;
        }

        .footer-col h4 {
            color: var(--text-main);
            font-weight: 600;
            margin-bottom: 24px;
        }

        .footer-col ul {
            list-style: none;
        }

        .footer-col ul li {
            margin-bottom: 12px;
        }

        .footer-col ul li a {
            color: var(--text-muted);
            text-decoration: none;
            transition: var(--transition);
        }

        .footer-col ul li a:hover {
            color: var(--accent-secondary);
        }

        .newsletter-form {
            display: flex;
            gap: 8px;
            margin-top: 16px;
        }

        .newsletter-form input {
            flex-grow: 1;
            background: var(--bg-surface);
            border: 1px solid var(--border-color);
            padding: 12px 16px;
            border-radius: var(--radius-sm);
            color: #fff;
            outline: none;
        }
        
        .newsletter-form input:focus {
            border-color: var(--accent-primary);
        }

        .newsletter-form button {
            background: var(--gradient-text);
            border: none;
            padding: 0 24px;
            border-radius: var(--radius-sm);
            color: #000;
            font-weight: 600;
            cursor: pointer;
        }

        @media (max-width: 992px) {
            .sale-grid { grid-template-columns: 1fr; }
            .footer-grid { grid-template-columns: 1fr 1fr; }
        }

        @media (max-width: 768px) {
            .nav-links, .search-wrapper { display: none; }
            .hero-section h1 { font-size: 2.5rem; }
            .footer-grid { grid-template-columns: 1fr; }
        }
    </style>
</head>
<body>

<header class="glass-header">
    <div class="container header-flex">
        <a href="#" class="brand-logo" style="text-decoration:none;">
            <i class="fas fa-layer-group"></i> LUMINA
        </a>
        
        <nav class="nav-links">
            <a href="#">Explore</a>
            <a href="#trending">Collections</a>
            <a href="#deals">Drops</a>
            <a href="#">Archive</a>
        </nav>

        <div class="actions-wrapper">
            <div class="search-wrapper">
                <i class="fas fa-search" style="color:var(--text-muted);"></i>
                <input type="text" id="searchInput" placeholder="Search the vault...">
            </div>
            
            <button class="icon-btn">
                <i class="far fa-heart"></i>
            </button>
            
            <button class="icon-btn" id="cartIconBtn">
                <i class="fas fa-shopping-bag"></i>
                <span class="cart-badge" id="cartCount">0</span>
            </button>
        </div>
    </div>
</header>

<main>
    <section class="hero-section">
        <div class="container">
            <div class="badge">
                <i class="fas fa-bolt" style="color: var(--accent-secondary)"></i> 
                Season 04 Drop Now Live
            </div>
            <h1>Engineered for the<br>Modern Aesthetic.</h1>
            <p>Discover hyper-curated collections blending utilitarian design with premium materials. Elevate your everyday carry.</p>
            
            <div class="btn-group">
                <button class="btn btn-primary" id="shopNowBtn">
                    Shop Collection <i class="fas fa-arrow-right"></i>
                </button>
                <button class="btn btn-outline" id="discoverDealsBtn">
                    View Lookbook
                </button>
            </div>
        </div>
    </section>

    <section class="container">
        <div class="section-header">
            <div>
                <h2 class="section-title">The Archives</h2>
                <p class="section-subtitle">Curated by discipline</p>
            </div>
        </div>
        <div class="categories-grid" id="categoriesGrid"></div>
    </section>

    <section class="container" id="trending">
        <div class="section-header">
            <div>
                <h2 class="section-title">Latest Arrivals</h2>
                <p class="section-subtitle">High-performance essentials</p>
            </div>
        </div>
        <div class="product-grid" id="productsGrid"></div>
    </section>

    <section class="container" id="deals">
        <div class="flash-sale">
            <div class="sale-grid">
                <div class="sale-img-wrap">
                    <img class="sale-img" src="https://images.unsplash.com/photo-1611186871348-b1ce696e52c9?auto=format&fit=crop&w=800&q=80" alt="Aether Wireless Max">
                </div>
                
                <div>
                    <div class="badge" style="background: rgba(6, 182, 212, 0.1); border-color: rgba(6, 182, 212, 0.3); color: var(--accent-secondary);">
                        Zero Gravity Edition
                    </div>
                    <h2 class="section-title" style="margin-bottom: 16px;">Aether Pro Max</h2>
                    <p style="color: var(--text-muted); font-size: 1.1rem; line-height: 1.6;">
                        Studio-grade fidelity meets aerospace-grade aluminum. Featuring active noise cancellation and 40-hour spatial audio playback.
                    </p>
                    
                    <div class="timer-group" id="timerRoot">
                        <div class="time-box"><span id="dealDays">0</span><small>Days</small></div>
                        <div class="time-box"><span id="dealHours">00</span><small>Hours</small></div>
                        <div class="time-box"><span id="dealMinutes">00</span><small>Mins</small></div>
                        <div class="time-box"><span id="dealSeconds">00</span><small>Secs</small></div>
                    </div>
                    
                    <div style="display: flex; align-items: center; gap: 24px; margin-top: 32px;">
                        <div>
                            <span class="product-price" style="font-size: 2rem;">$249</span>
                            <span class="product-price-old" style="font-size: 1.2rem;">$399</span>
                        </div>
                        <button class="btn btn-primary" id="flashDealBtn" style="flex-grow: 1; justify-content: center;">
                            Secure Yours Now
                        </button>
                    </div>
                </div>
            </div>
        </div>
    </section>
</main>

<footer class="modern-footer">
    <div class="container">
        <div class="footer-grid">
            <div class="footer-col">
                <a href="#" class="brand-logo" style="text-decoration:none; margin-bottom: 24px; display:inline-flex;">
                    <i class="fas fa-layer-group"></i> LUMINA
                </a>
                <p style="color: var(--text-muted); line-height: 1.6; max-width: 250px;">
                    Designing the future of lifestyle commerce through radical aesthetics and zero compromises.
                </p>
            </div>
            <div class="footer-col">
                <h4>Platform</h4>
                <ul>
                    <li><a href="#">Collections</a></li>
                    <li><a href="#">Collaborations</a></li>
                    <li><a href="#">The Journal</a></li>
                    <li><a href="#">Store Locator</a></li>
                </ul>
            </div>
            <div class="footer-col">
                <h4>Support</h4>
                <ul>
                    <li><a href="#">Order Tracking</a></li>
                    <li><a href="#">Returns & Exchanges</a></li>
                    <li><a href="#">Warranty</a></li>
                    <li><a href="#">Contact Us</a></li>
                </ul>
            </div>
            <div class="footer-col">
                <h4>Insider Access</h4>
                <p style="color: var(--text-muted); font-size: 0.9rem;">Join the collective for early drops.</p>
                <form class="newsletter-form" id="newsletterForm">
                    <input type="email" id="newsEmail" placeholder="Enter email address" required>
                    <button type="submit"><i class="fas fa-arrow-right"></i></button>
                </form>
                <div id="newsMsg" style="margin-top: 12px; font-size: 0.85rem;"></div>
            </div>
        </div>
        
        <div style="border-top: 1px solid var(--border-color); padding-top: 24px; display: flex; justify-content: space-between; align-items: center; color: var(--text-muted); font-size: 0.9rem;">
            <p>&copy; 2025 LUMINA Studio. All rights reserved.</p>
            <div style="display: flex; gap: 16px; font-size: 1.2rem;">
                <i class="fab fa-twitter" style="cursor:pointer; transition: color 0.3s;" onmouseover="this.style.color='#fff'" onmouseout="this.style.color='var(--text-muted)'"></i>
                <i class="fab fa-instagram" style="cursor:pointer; transition: color 0.3s;" onmouseover="this.style.color='#fff'" onmouseout="this.style.color='var(--text-muted)'"></i>
                <i class="fab fa-discord" style="cursor:pointer; transition: color 0.3s;" onmouseover="this.style.color='#fff'" onmouseout="this.style.color='var(--text-muted)'"></i>
            </div>
        </div>
    </div>
</footer>

<script>
    // ---------- FIXED DATA ----------
    const CATEGORIES = [
        { id: "wear", name: "Streetwear", icon: "fa-ghost" },
        { id: "audio", name: "Audio Gear", icon: "fa-headphones-simple" },
        { id: "edc", name: "Tactical EDC", icon: "fa-compass" },
        { id: "sneakers", name: "Footwear", icon: "fa-shoe-prints" },
        { id: "access", name: "Minimalist", icon: "fa-fingerprint" },
        { id: "tech", name: "Hardware", icon: "fa-microchip" }
    ];

    const PRODUCTS = [
        { id: 101, title: "Orbit Sneakers 'Carbon'", price: 129, oldPrice: 189, rating: 4.8, reviews: 234, img: "https://images.unsplash.com/photo-1542291026-7eec264c27ff?auto=format&fit=crop&w=600&q=80", category: "sneakers", badge: "Hyped" },
        { id: 102, title: "Terra Backpack V2", price: 89, oldPrice: 129, rating: 4.7, reviews: 98, img: "https://images.unsplash.com/photo-1553062407-98eeb64c6a62?auto=format&fit=crop&w=600&q=80", category: "edc" },
        { id: 103, title: "Void Cancelling Buds", price: 199, oldPrice: 279, rating: 4.9, reviews: 456, img: "https://images.unsplash.com/photo-1590658268037-6bf12165a8df?auto=format&fit=crop&w=600&q=80", category: "audio", badge: "Best Seller" },
        { id: 104, title: "Chrono Stealth Watch", price: 245, oldPrice: 320, rating: 4.6, reviews: 123, img: "https://images.unsplash.com/photo-1524805444758-089113d48a6d?auto=format&fit=crop&w=600&q=80", category: "access" },
        { id: 105, title: "Neon Pixel Hoodie", price: 79, oldPrice: 99, rating: 4.9, reviews: 87, img: "https://images.unsplash.com/photo-1556821840-3a63f95609a7?auto=format&fit=crop&w=600&q=80", category: "wear" },
        { id: 106, title: "Mag-Charge Nexus", price: 49, rating: 4.5, reviews: 210, img: "https://images.unsplash.com/photo-1586953208448-b95a79798f07?auto=format&fit=crop&w=600&q=80", category: "tech", badge: "New" }
    ];

    let cartCount = 0;
    const cartCountSpan = document.getElementById('cartCount');

    function updateCartUI() {
        cartCountSpan.innerText = cartCount;
        // Small pop animation
        cartCountSpan.style.transform = 'scale(1.3)';
        setTimeout(() => cartCountSpan.style.transform = 'scale(1)', 200);
    }

    function addToCartHandler(productId) {
        const product = PRODUCTS.find(p => p.id === productId);
        if (!product) return;
        cartCount++;
        updateCartUI();
        
        const btn = document.querySelector(`.add-btn[data-id='${productId}']`);
        if (btn) {
            const originalHTML = btn.innerHTML;
            btn.innerHTML = '<i class="fas fa-check" style="color: #10b981;"></i> Acquired';
            btn.style.borderColor = '#10b981';
            btn.disabled = true;
            setTimeout(() => {
                btn.innerHTML = originalHTML;
                btn.style.borderColor = '';
                btn.disabled = false;
            }, 1200);
        }
    }

    function renderCategories() {
        const grid = document.getElementById('categoriesGrid');
        grid.innerHTML = '';
        CATEGORIES.forEach(cat => {
            const card = document.createElement('div');
            card.className = 'category-card';
            card.innerHTML = `
                <div class="category-icon"><i class="fas ${cat.icon}"></i></div>
                <h4>${cat.name}</h4>
            `;
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
            const card = document.createElement('div');
            card.className = 'product-card';
            card.innerHTML = `
                <div class="product-img-wrap">
                    ${p.badge ? `<div class="product-badge">${p.badge}</div>` : ''}
                    <img class="product-img" src="${p.img}" alt="${p.title}" loading="lazy">
                </div>
                <div class="product-info">
                    <div class="product-title">${p.title}</div>
                    <div class="product-meta">
                        <div class="product-rating">
                            <i class="fas fa-star"></i> ${p.rating}
                            <span style="color:var(--text-muted); font-size:12px; margin-left:4px;">(${p.reviews})</span>
                        </div>
                    </div>
                    <div style="margin-bottom: 20px;">
                        <span class="product-price">$${p.price}</span>
                        ${p.oldPrice ? `<span class="product-price-old">$${p.oldPrice}</span>` : ''}
                    </div>
                    <button class="add-to-cart add-btn" data-id="${p.id}">
                        <i class="fas fa-plus"></i> Add to Cart
                    </button>
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

    // Countdown Timer
    function initCountdown() {
        const targetDate = new Date();
        targetDate.setHours(targetDate.getHours() + 28);
        targetDate.setMinutes(targetDate.getMinutes() + 15);
        
        function update() {
            const diff = targetDate - new Date();
            if (diff <= 0) return;
            
            const days = Math.floor(diff / (1000 * 60 * 60 * 24));
            const hours = Math.floor((diff % (86400000)) / 3600000);
            const mins = Math.floor((diff % 3600000) / 60000);
            const secs = Math.floor((diff % 60000) / 1000);
            
            document.getElementById('dealDays').innerText = String(days).padStart(2, '0');
            document.getElementById('dealHours').innerText = String(hours).padStart(2, '0');
            document.getElementById('dealMinutes').innerText = String(mins).padStart(2, '0');
            document.getElementById('dealSeconds').innerText = String(secs).padStart(2, '0');
        }
        update();
        setInterval(update, 1000);
    }

    // Newsletter Setup
    function bindNewsletter() {
        const form = document.getElementById('newsletterForm');
        const msgDiv = document.getElementById('newsMsg');
        form.addEventListener('submit', (e) => {
            e.preventDefault();
            const email = document.getElementById('newsEmail').value.trim();
            if (!email || !email.includes('@')) return;
            
            msgDiv.innerHTML = '<span style="color: var(--accent-secondary);"><i class="fas fa-check-circle"></i> Access granted. Check your inbox.</span>';
            document.getElementById('newsEmail').value = '';
            setTimeout(() => msgDiv.innerHTML = '', 4000);
        });
    }

    // Init
    document.addEventListener('DOMContentLoaded', () => {
        renderCategories();
        renderProducts(PRODUCTS);
        initCountdown();
        bindNewsletter();

        const searchInputField = document.getElementById('searchInput');
        searchInputField.addEventListener('input', (e) => filterProducts(e.target.value));
        
        document.getElementById('shopNowBtn').addEventListener('click', () => document.getElementById('trending').scrollIntoView());
        document.getElementById('discoverDealsBtn').addEventListener('click', () => document.getElementById('deals').scrollIntoView());
        
        document.getElementById('flashDealBtn').addEventListener('click', (e) => {
            const originalText = e.target.innerText;
            cartCount++;
            updateCartUI();
            e.target.innerHTML = '<i class="fas fa-check"></i> Added to Cart';
            e.target.style.background = '#10b981';
            setTimeout(() => {
                e.target.innerText = originalText;
                e.target.style.background = '';
            }, 1500);
        });
    });
</script>
</body>
</html>
