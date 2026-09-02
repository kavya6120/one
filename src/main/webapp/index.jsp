<!doctype html>
<html lang="en">
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width,initial-scale=1">
    <title>NexusShop — Modern E-Commerce</title>

    <link href="https://fonts.googleapis.com/css2?family=Inter:wght@400;500;600;700;800&display=swap" rel="stylesheet">
    <link rel="stylesheet"
          href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.0/css/all.min.css">

    <style>
        :root {
            --bg: #f7f8fc;
            --surface: #ffffff;
            --surface-2: #f1f3f8;
            --text: #171a24;
            --muted: #73798a;
            --primary: #5b4bff;
            --primary-dark: #4435d6;
            --accent: #ff5a7a;
            --success: #16a36a;
            --border: #e8eaf1;
            --shadow: 0 12px 35px rgba(24, 28, 52, .08);
            --shadow-hover: 0 20px 45px rgba(24, 28, 52, .14);
            --radius: 18px;
            --container: 1240px;
        }

        * {
            box-sizing: border-box;
        }

        html {
            scroll-behavior: smooth;
        }

        body {
            margin: 0;
            font-family: Inter, system-ui, -apple-system, "Segoe UI",
                         Roboto, Arial, sans-serif;
            color: var(--text);
            background: var(--bg);
            line-height: 1.5;
        }

        a {
            color: inherit;
            text-decoration: none;
        }

        button,
        input {
            font: inherit;
        }

        button {
            cursor: pointer;
        }

        .container {
            width: 100%;
            max-width: var(--container);
            margin: auto;
            padding: 0 24px;
        }

        .muted {
            color: var(--muted);
        }

        /* ================= HEADER ================= */

        header {
            position: sticky;
            top: 0;
            z-index: 50;
            background: rgba(255, 255, 255, .94);
            border-bottom: 1px solid var(--border);
            backdrop-filter: blur(18px);
        }

        .header-inner {
            min-height: 76px;
            display: grid;
            grid-template-columns: auto 1fr auto;
            align-items: center;
            gap: 28px;
        }

        .brand {
            display: flex;
            align-items: center;
            gap: 10px;
            font-size: 22px;
            font-weight: 800;
            letter-spacing: -.04em;
        }

        .brand::before {
            content: "N";
            display: grid;
            place-items: center;
            width: 38px;
            height: 38px;
            border-radius: 12px;
            background: linear-gradient(135deg, var(--primary), #8a7dff);
            color: #fff;
            font-weight: 800;
            box-shadow: 0 8px 20px rgba(91, 75, 255, .25);
        }

        .brand .accent {
            color: var(--primary);
        }

        nav.main-nav ul {
            display: flex;
            justify-content: center;
            gap: 4px;
            list-style: none;
            margin: 0;
            padding: 0;
        }

        nav.main-nav li a {
            display: flex;
            align-items: center;
            gap: 7px;
            padding: 10px 13px;
            border-radius: 10px;
            color: #555b6e;
            font-size: 14px;
            font-weight: 600;
            transition: .2s;
        }

        nav.main-nav li a:hover {
            background: #f0efff;
            color: var(--primary);
        }

        .search {
            display: flex;
            align-items: center;
            gap: 8px;
            width: min(280px, 28vw);
            height: 44px;
            padding: 0 14px;
            background: var(--surface-2);
            border: 1px solid transparent;
            border-radius: 12px;
            transition: .2s;
        }

        .search:focus-within {
            background: #fff;
            border-color: #d9d5ff;
            box-shadow: 0 0 0 4px rgba(91, 75, 255, .08);
        }

        .search input {
            border: 0;
            outline: 0;
            background: transparent;
            width: 100%;
            font-size: 13px;
        }

        .icon-btn {
            border: 0;
            background: transparent;
            color: #555b6e;
            font-size: 17px;
            padding: 8px;
            border-radius: 10px;
            transition: .2s;
        }

        .icon-btn:hover {
            background: #f0efff;
            color: var(--primary);
        }

        .header-actions {
            display: flex;
            align-items: center;
            gap: 3px;
        }

        .cart {
            position: relative;
            display: inline-flex;
            padding: 9px;
            border-radius: 10px;
        }

        .cart-count {
            position: absolute;
            top: 0;
            right: 0;
            width: 18px;
            height: 18px;
            border-radius: 50%;
            display: grid;
            place-items: center;
            background: var(--accent);
            color: #fff;
            font-size: 10px;
            font-weight: 800;
        }

        .mobile-toggle {
            display: none;
            border: 0;
            background: transparent;
            font-size: 20px;
            color: var(--text);
        }

        /* ================= HERO ================= */

        .hero {
            min-height: 500px;
            margin: 20px auto 0;
            max-width: calc(var(--container) - 48px);
            border-radius: 28px;
            overflow: hidden;

            display: flex;
            align-items: center;

            background:
                linear-gradient(
                    90deg,
                    rgba(16,18,35,.88) 0%,
                    rgba(16,18,35,.62) 45%,
                    rgba(16,18,35,.18) 100%
                ),
                url("https://images.unsplash.com/photo-1555529669-e69e7aa0ba9a?auto=format&fit=crop&w=1600&q=85")
                center/cover;

            color: #fff;
        }

        .hero .container {
            max-width: 760px;
            margin-left: 0;
        }

        .hero h1 {
            max-width: 700px;
            margin: 0 0 18px;
            font-size: clamp(40px, 5vw, 68px);
            line-height: 1.04;
            letter-spacing: -.055em;
        }

        .hero p {
            max-width: 650px;
            margin: 0 0 28px;
            color: rgba(255,255,255,.82);
            font-size: 16px;
        }

        .btn {
            display: inline-flex;
            align-items: center;
            justify-content: center;
            gap: 9px;
            min-height: 46px;
            padding: 0 20px;
            border-radius: 12px;
            border: 1px solid transparent;
            font-weight: 700;
            font-size: 14px;
            transition: .2s;
        }

        .btn-primary {
            background: var(--primary);
            color: #fff;
            box-shadow: 0 10px 22px rgba(91,75,255,.24);
        }

        .btn-primary:hover {
            background: var(--primary-dark);
            transform: translateY(-2px);
        }

        .btn-ghost {
            margin-left: 8px;
            background: rgba(255,255,255,.1);
            border-color: rgba(255,255,255,.3);
            color: #fff;
        }

        .btn-ghost:hover {
            background: rgba(255,255,255,.18);
        }

        /* ================= SECTIONS ================= */

        .section {
            padding: 72px 0;
        }

        .title {
            margin-bottom: 30px;
        }

        .title h2 {
            margin: 0 0 7px;
            font-size: 30px;
            letter-spacing: -.035em;
        }

        .title p {
            margin: 0;
            font-size: 14px;
        }

        .grid {
            display: grid;
            gap: 18px;
        }

        /* ================= CATEGORIES ================= */

        .categories {
            grid-template-columns: repeat(6, 1fr);
        }

        .cat-card {
            background: var(--surface);
            border: 1px solid var(--border);
            border-radius: 16px;
            padding: 22px 12px;
            text-align: center;
            box-shadow: 0 5px 20px rgba(24,28,52,.035);
            transition: .22s;
            cursor: pointer;
        }

        .cat-card:hover {
            transform: translateY(-5px);
            border-color: #d9d5ff;
            box-shadow: var(--shadow);
        }

        .cat-card .icon {
            width: 52px;
            height: 52px;
            margin: 0 auto 12px;
            display: grid;
            place-items: center;
            border-radius: 15px;
            background: #f0efff;
            color: var(--primary);
            font-size: 21px;
        }

        .cat-card h4 {
            margin: 0;
            font-size: 14px;
        }

        .cat-card .muted {
            margin-top: 5px;
            font-size: 11px;
        }

        /* ================= PRODUCTS ================= */

        .products {
            grid-template-columns: repeat(4, 1fr);
        }

        .product {
            position: relative;
            background: var(--surface);
            border: 1px solid var(--border);
            border-radius: 18px;
            overflow: hidden;
            display: flex;
            flex-direction: column;
            transition: .25s;
            box-shadow: 0 5px 20px rgba(24,28,52,.035);
        }

        .product:hover {
            transform: translateY(-6px);
            box-shadow: var(--shadow-hover);
        }

        .product img {
            width: 100%;
            height: 235px;
            object-fit: cover;
            display: block;
            background: #f4f5f8;
        }

        .product-body {
            padding: 16px;
            display: flex;
            flex-direction: column;
            gap: 8px;
            flex: 1;
        }

        .product h5 {
            margin: 0;
            font-size: 15px;
            line-height: 1.35;
        }

        .product-body > .muted {
            text-transform: capitalize;
            font-size: 12px;
        }

        .price-row {
            display: flex;
            align-items: flex-end;
            justify-content: space-between;
            gap: 8px;
            margin-top: auto;
            padding-top: 8px;
        }

        .price {
            font-weight: 800;
            font-size: 18px;
        }

        .old-price {
            color: #a0a5b3;
            text-decoration: line-through;
            font-weight: 500;
            font-size: 12px;
            margin-left: 4px;
        }

        .rating {
            color: #f7a928;
            font-size: 12px;
            white-space: nowrap;
        }

        .product-footer {
            padding: 0 16px 16px;
            display: flex;
            gap: 8px;
        }

        .add-btn {
            flex: 1;
            background: var(--text);
            color: #fff;
            border: 0;
            padding: 11px;
            border-radius: 11px;
            font-weight: 700;
            font-size: 13px;
            transition: .2s;
        }

        .add-btn:hover {
            background: var(--primary);
        }

        .add-btn:disabled {
            opacity: .7;
        }

        .wish-btn {
            width: 42px;
            background: #fff;
            border: 1px solid var(--border);
            border-radius: 11px;
            color: #666c7b;
            transition: .2s;
        }

        .wish-btn:hover {
            color: var(--accent);
            border-color: #ffd0da;
            background: #fff5f7;
        }

        /* ================= FLASH SALE ================= */

        .deal {
            display: flex;
            gap: 0;
            background: #171a24;
            color: #fff;
            border-radius: 24px;
            overflow: hidden;
            align-items: stretch;
            box-shadow: var(--shadow);
        }

        .deal img {
            width: 50%;
            min-height: 340px;
            object-fit: cover;
            display: block;
        }

        .deal .content {
            padding: 42px;
            flex: 1;
            display: flex;
            flex-direction: column;
            justify-content: center;
        }

        .deal .content h3 {
            font-size: 32px;
            letter-spacing: -.04em;
            margin: 0 0 8px;
        }

        .deal .content .muted {
            color: #aeb3c2;
        }

        .timer {
            display: flex;
            gap: 9px;
            margin: 20px 0;
        }

        .time-box {
            background: #272b39;
            border: 1px solid #353a4a;
            color: #fff;
            padding: 10px 12px;
            border-radius: 10px;
            min-width: 68px;
            text-align: center;
        }

        .time-box > div:first-child {
            font-size: 20px;
            font-weight: 800;
        }

        .deal .price {
            font-size: 27px;
        }

        .deal .old-price {
            font-size: 14px;
            color: #949aaa;
        }

        .deal-discount {
            background: var(--accent) !important;
        }

        /* ================= TESTIMONIALS ================= */

        .testimonials {
            display: grid;
            grid-template-columns: repeat(2, 1fr);
            gap: 18px;
        }

        .testimonial {
            background: #fff;
            border: 1px solid var(--border);
            padding: 24px;
            border-radius: 18px;
            box-shadow: 0 5px 20px rgba(24,28,52,.035);
        }

        .testimonial p {
            color: #555b6e;
            line-height: 1.7;
        }

        /* ================= NEWSLETTER ================= */

        .newsletter {
            background: linear-gradient(135deg,#171a24,#292e42);
            color: #fff;
            border-radius: 24px;
            padding: 46px 24px;
            text-align: center;
            box-shadow: var(--shadow);
        }

        .newsletter h3 {
            font-size: 28px;
            margin: 0 0 6px;
        }

        .newsletter p {
            color: #bfc3cf;
        }

        .newsletter input {
            height: 46px;
            padding: 0 16px;
            border-radius: 11px;
            border: 0;
            width: 320px;
            max-width: 100%;
            outline: 0;
        }

        /* ================= FOOTER ================= */

        footer {
            margin-top: 10px;
            padding: 50px 0 24px;
            background: #fff;
            border-top: 1px solid var(--border);
            font-size: 13px;
        }

        /* ================= RESPONSIVE ================= */

        @media (max-width: 1100px) {

            .categories {
                grid-template-columns: repeat(3, 1fr);
            }

            .products {
                grid-template-columns: repeat(3, 1fr);
            }

            .header-inner {
                grid-template-columns: auto 1fr auto;
            }

            nav.main-nav {
                display: none;
            }

            .mobile-toggle {
                display: inline-block;
            }
        }

        @media (max-width: 760px) {

            .container {
                padding: 0 16px;
            }

            .header-inner {
                min-height: 68px;
                gap: 10px;
            }

            .search {
                width: auto;
                flex: 1;
                min-width: 0;
            }

            .header-actions .icon-btn:not(:last-child) {
                display: none;
            }

            .hero {
                margin: 12px;
                min-height: 500px;
                border-radius: 22px;
                background:
                    linear-gradient(
                        90deg,
                        rgba(16,18,35,.88),
                        rgba(16,18,35,.55)
                    ),
                    url("https://images.unsplash.com/photo-1555529669-e69e7aa0ba9a?auto=format&fit=crop&w=1000&q=80")
                    center/cover;
            }

            .hero .container {
                padding: 0 28px;
            }

            .hero h1 {
                font-size: 40px;
            }

            .hero p {
                font-size: 14px;
            }

            .products {
                grid-template-columns: repeat(2, 1fr);
            }

            .product img {
                height: 190px;
            }

            .deal {
                flex-direction: column;
            }

            .deal img {
                width: 100%;
                min-height: 230px;
                height: 230px;
            }

            .deal .content {
                padding: 28px 22px;
            }

            .testimonials {
                grid-template-columns: 1fr;
            }
        }

        @media (max-width: 520px) {

            .brand {
                font-size: 19px;
            }

            .brand::before {
                width: 34px;
                height: 34px;
                border-radius: 10px;
            }

            .search {
                max-width: 150px;
            }

            .hero h1 {
                font-size: 34px;
            }

            .hero .btn {
                width: 100%;
                margin: 5px 0 0;
            }

            .btn-ghost {
                margin-left: 0;
            }

            .categories {
                grid-template-columns: repeat(2, 1fr);
            }

            .products {
                grid-template-columns: 1fr;
            }

            .section {
                padding: 52px 0;
            }

            .title h2 {
                font-size: 25px;
            }

            .timer {
                gap: 6px;
            }

            .time-box {
                min-width: 58px;
                padding: 8px 5px;
            }

            .time-box > div:first-child {
                font-size: 17px;
            }
        }
    </style>
</head>

<body>

<header>
    <div class="container header-inner">

        <div style="display:flex;align-items:center;gap:12px;">
            <button
                class="mobile-toggle"
                id="mobileToggle"
                aria-label="Open menu">
                <i class="fas fa-bars"></i>
            </button>

            <a class="brand" href="#">
                <span>Nexus<span class="accent">Shop</span></span>
            </a>
        </div>

        <nav class="main-nav" id="mainNav">
            <ul>
                <li>
                    <a href="#">
                        <i class="fas fa-home"></i>
                        Home
                    </a>
                </li>

                <li>
                    <a href="#" id="catMenuBtn">
                        <i class="fas fa-th-large"></i>
                        Categories
                        <i class="fas fa-chevron-down"
                           style="font-size:11px;"></i>
                    </a>
                </li>

                <li>
                    <a href="#">
                        <i class="fas fa-fire"></i>
                        Trending
                    </a>
                </li>

                <li>
                    <a href="#deals">
                        <i class="fas fa-tag"></i>
                        Deals
                    </a>
                </li>

                <li>
                    <a href="#about">
                        <i class="fas fa-info-circle"></i>
                        About
                    </a>
                </li>
            </ul>
        </nav>

        <div style="display:flex;align-items:center;gap:10px;">

            <div class="search">
                <i class="fas fa-search muted"></i>

                <input
                    type="search"
                    id="searchInput"
                    placeholder="Search products..."
                    aria-label="Search products">

                <button
                    class="icon-btn"
                    id="searchBtn"
                    aria-label="Search">
                    <i class="fas fa-arrow-right"></i>
                </button>
            </div>

            <div class="header-actions">

                <a
                    class="icon-btn"
                    title="Account"
                    href="#">
                    <i class="far fa-user"></i>
                </a>

                <a
                    class="icon-btn"
                    title="Wishlist"
                    href="#">
                    <i class="far fa-heart"></i>
                </a>

                <a
                    class="cart icon-btn"
                    href="#"
                    id="cartBtn"
                    title="View cart">

                    <i class="fas fa-shopping-bag"></i>

                    <span
                        class="cart-count"
                        id="cartCount">0</span>
                </a>

            </div>
        </div>
    </div>

    <div
        id="mobileMenu"
        style="
            display:none;
            background:white;
            border-top:1px solid var(--border);
        ">

        <div class="container" style="padding:12px 16px;">

            <nav>
                <ul style="
                    list-style:none;
                    padding:0;
                    margin:0;
                    display:flex;
                    flex-direction:column;
                    gap:5px;
                ">

                    <li>
                        <a href="#">Home</a>
                    </li>

                    <li>
                        <a href="#">Categories</a>
                    </li>

                    <li>
                        <a href="#">Trending</a>
                    </li>

                    <li>
                        <a href="#deals">Deals</a>
                    </li>

                    <li>
                        <a href="#about">About</a>
                    </li>

                </ul>
            </nav>
        </div>
    </div>
</header>


<main>

    <!-- HERO -->

    <section class="hero">

        <div class="container">

            <h1>
                Elevate Your
                Everyday Style
            </h1>

            <p>
                Discover handpicked fashion, tech and accessories
                designed to make everyday shopping feel effortless.
                Enjoy limited-time offers and free shipping on
                selected items.
            </p>

            <div>

                <button
                    class="btn btn-primary"
                    id="shopNow">

                    Shop Now
                    <i class="fas fa-arrow-right"></i>

                </button>

                <button
                    class="btn btn-ghost"
                    id="exploreDeals">

                    Explore Deals

                </button>

            </div>

        </div>

    </section>


    <!-- CATEGORIES -->

    <section
        class="section container"
        aria-labelledby="cat-title">

        <div class="title" id="cat-title">

            <h2>
                Shop by Category
            </h2>

            <p class="muted">
                Browse through our wide range of products
                across curated categories.
            </p>

        </div>

        <div
            class="grid categories"
            id="categoriesGrid">
        </div>

    </section>


    <!-- PRODUCTS -->

    <section
        class="section container"
        aria-labelledby="prod-title">

        <div class="title" id="prod-title">

            <h2>
                Trending Products
            </h2>

            <p class="muted">
                Best sellers, fresh arrivals and customer favorites.
            </p>

        </div>

        <div
            class="grid products"
            id="productsGrid">
        </div>

    </section>


    <!-- DEAL -->

    <section
        id="deals"
        class="section container">

        <div class="title">

            <h2>
                Flash Sale
            </h2>

            <p class="muted">
                Grab the offer before the timer runs out.
            </p>

        </div>

        <div class="deal">

            <img
                src="https://images.unsplash.com/photo-1517336714731-489689fd1ca8?auto=format&fit=crop&w=1200&q=80"
                alt="MacBook Air">

            <div class="content">

                <h3>
                    MacBook Air M2
                </h3>

                <p class="muted">
                    Thin, light and powerful —
                    now with M2 performance.
                </p>


                <div class="timer">

                    <div class="time-box">
                        <div id="dealDays">0</div>
                        <div style="font-size:11px;opacity:.75;">
                            Days
                        </div>
                    </div>

                    <div class="time-box">
                        <div id="dealHours">00</div>
                        <div style="font-size:11px;opacity:.75;">
                            Hours
                        </div>
                    </div>

                    <div class="time-box">
                        <div id="dealMinutes">00</div>
                        <div style="font-size:11px;opacity:.75;">
                            Minutes
                        </div>
                    </div>

                    <div class="time-box">
                        <div id="dealSeconds">00</div>
                        <div style="font-size:11px;opacity:.75;">
                            Seconds
                        </div>
                    </div>

                </div>


                <div
                    style="
                        display:flex;
                        align-items:center;
                        gap:12px;
                        flex-wrap:wrap;
                    ">

                    <div class="price">
                        $999

                        <span class="old-price">
                            $1,199
                        </span>
                    </div>

                    <div
                        class="deal-discount"
                        style="
                            color:white;
                            padding:6px 10px;
                            border-radius:8px;
                            font-weight:700;
                        ">
                        -17%
                    </div>

                </div>


                <p>
                    Only <strong>12</strong>
                    items left at this price!
                </p>


                <div style="margin-top:18px;">

                    <button
                        class="btn btn-primary"
                        id="buyDeal">

                        Buy Now

                    </button>

                </div>

            </div>

        </div>

    </section>


    <!-- TESTIMONIALS -->

    <section
        class="section container"
        aria-labelledby="test-title">

        <div class="title" id="test-title">

            <h2>
                What our customers say
            </h2>

            <p class="muted">
                Real reviews from verified buyers.
            </p>

        </div>

        <div
            class="testimonials"
            id="testimonials">

            <div class="testimonial">

                <div class="rating">
                    ★★★★★
                </div>

                <p>
                    "Fast shipping and excellent customer
                    support. The product exceeded my expectations!"
                </p>

                <div
                    style="
                        display:flex;
                        align-items:center;
                        gap:10px;
                    ">

                    <img
                        src="https://images.unsplash.com/photo-1544005313-94ddf0286df2?auto=format&fit=crop&w=80&q=80"
                        alt="Ava Martin"
                        style="
                            width:42px;
                            height:42px;
                            border-radius:50%;
                            object-fit:cover;
                        ">

                    <div>

                        <div style="font-weight:700;">
                            Ava Martin
                        </div>

                        <div
                            class="muted"
                            style="font-size:12px;">
                            Verified buyer
                        </div>

                    </div>

                </div>

            </div>


            <div class="testimonial">

                <div class="rating">
                    ★★★★☆
                </div>

                <p>
                    "Great selection and the checkout was smooth.
                    Will shop again."
                </p>

                <div
                    style="
                        display:flex;
                        align-items:center;
                        gap:10px;
                    ">

                    <img
                        src="https://images.unsplash.com/photo-1546456073-6712f79251bb?auto=format&fit=crop&w=80&q=80"
                        alt="Michael Lee"
                        style="
                            width:42px;
                            height:42px;
                            border-radius:50%;
                            object-fit:cover;
                        ">

                    <div>

                        <div style="font-weight:700;">
                            Michael Lee
                        </div>

                        <div
                            class="muted"
                            style="font-size:12px;">
                            Frequent buyer
                        </div>

                    </div>

                </div>

            </div>

        </div>

    </section>


    <!-- NEWSLETTER -->

    <section class="section container">

        <div class="newsletter">

            <h3>
                Stay in the loop
            </h3>

            <p>
                Subscribe to get exclusive offers & new arrivals
            </p>

            <form
                id="newsletterForm"
                style="
                    display:flex;
                    justify-content:center;
                    gap:8px;
                    flex-wrap:wrap;
                ">

                <input
                    id="newsletterEmail"
                    type="email"
                    placeholder="Enter your email"
                    aria-label="Email address"
                    required>

                <button
                    class="btn btn-primary"
                    id="subscribeBtn">

                    Subscribe

                </button>

            </form>

            <div
                id="newsletterMsg"
                style="
                    margin-top:10px;
                    font-size:14px;
                    display:none;
                ">
            </div>

        </div>

    </section>

</main>


<!-- FOOTER -->

<footer id="about">

    <div
        class="container"
        style="
            display:flex;
            flex-wrap:wrap;
            gap:28px;
            align-items:flex-start;
            justify-content:space-between;
        ">

        <div style="max-width:360px;">

            <div
                style="
                    font-weight:800;
                    font-size:20px;
                ">
                Nexus<span style="color:var(--primary);">
                    Shop
                </span>
            </div>

            <p class="muted">
                A modern e-commerce experience built
                with HTML, CSS & JavaScript.
            </p>

            <div
                style="
                    margin-top:14px;
                    display:flex;
                    gap:8px;
                ">

                <a
                    class="icon-btn"
                    href="#"
                    title="Facebook">
                    <i class="fab fa-facebook"></i>
                </a>

                <a
                    class="icon-btn"
                    href="#"
                    title="Twitter">
                    <i class="fab fa-twitter"></i>
                </a>

                <a
                    class="icon-btn"
                    href="#"
                    title="Instagram">
                    <i class="fab fa-instagram"></i>
                </a>

            </div>

        </div>


        <div
            style="
                display:flex;
                gap:55px;
                flex-wrap:wrap;
            ">

            <div>

                <div style="font-weight:700;margin-bottom:10px;">
                    Company
                </div>

                <div
                    class="muted"
                    style="line-height:2;">
                    About<br>
                    Careers<br>
                    Press
                </div>

            </div>


            <div>

                <div style="font-weight:700;margin-bottom:10px;">
                    Support
                </div>

                <div
                    class="muted"
                    style="line-height:2;">
                    Help Center<br>
                    Shipping & Returns<br>
                    Contact
                </div>

            </div>

        </div>

    </div>


    <div
        style="
            text-align:center;
            margin-top:30px;
            padding-top:20px;
            border-top:1px solid var(--border);
            color:var(--muted);
            font-size:12px;
        ">

        ©
        <span id="year"></span>
        NexusShop. All rights reserved.

    </div>

</footer>


<script>

    /* ================= DATA ================= */

    const CATEGORIES = [
        {
            id: "phones",
            name: "Smartphones",
            icon: "fa-mobile-alt"
        },
        {
            id: "laptops",
            name: "Laptops",
            icon: "fa-laptop"
        },
        {
            id: "clothing",
            name: "Clothing",
            icon: "fa-tshirt"
        },
        {
            id: "gadgets",
            name: "Gadgets",
            icon: "fa-headphones"
        },
        {
            id: "footwear",
            name: "Footwear",
            icon: "fa-shoe-prints"
        },
        {
            id: "accessories",
            name: "Accessories",
            icon: "fa-watch"
        }
    ];


    const PRODUCTS = [

        {
            id: 1,
            title: "iPhone 14 Pro Max",
            price: 1099,
            oldPrice: 1199,
            rating: 5,
            reviews: 128,
            badge: "New",
            img: "https://images.unsplash.com/photo-1601784551446-20c9e07cdbdb?auto=format&fit=crop&w=600&q=80",
            category: "phones"
        },

        {
            id: 2,
            title: 'MacBook Pro 14"',
            price: 1999,
            rating: 4,
            reviews: 86,
            img: "https://images.unsplash.com/photo-1593642632823-8f785ba67e45?auto=format&fit=crop&w=600&q=80",
            category: "laptops"
        },

        {
            id: 3,
            title: "Apple Watch Series 8",
            price: 349,
            oldPrice: 399,
            rating: 5,
            reviews: 214,
            badge: "-25%",
            img: "https://images.unsplash.com/photo-1529374255404-311a2a4f1fd9?auto=format&fit=crop&w=600&q=80",
            category: "accessories"
        },

        {
            id: 4,
            title: "Nike Air Max 270",
            price: 150,
            rating: 4,
            reviews: 53,
            img: "https://images.unsplash.com/photo-1542272604-787c3835535d?auto=format&fit=crop&w=600&q=80",
            category: "footwear"
        },

        {
            id: 5,
            title: "Sony A7 IV Camera",
            price: 2499,
            rating: 5,
            reviews: 42,
            img: "https://images.unsplash.com/photo-1526170375885-4d8ecf77b99f?auto=format&fit=crop&w=600&q=80",
            category: "gadgets"
        },

        {
            id: 6,
            title: "Chanel No. 5",
            price: 120,
            rating: 5,
            reviews: 189,
            img: "https://images.unsplash.com/photo-1585386959984-a4155224a1ad?auto=format&fit=crop&w=600&q=80",
            category: "accessories"
        },

        {
            id: 7,
            title: "Travel Backpack",
            price: 79,
            oldPrice: 99,
            rating: 4,
            reviews: 67,
            img: "https://images.unsplash.com/photo-1551232864-3f0890e580d9?auto=format&fit=crop&w=600&q=80",
            category: "accessories"
        },

        {
            id: 8,
            title: "Sony WH-1000XM5",
            price: 399,
            rating: 5,
            reviews: 156,
            img: "https://images.unsplash.com/photo-1600185365483-26d7a4cc7519?auto=format&fit=crop&w=600&q=80",
            category: "gadgets"
        }

    ];


    /* ================= ELEMENTS ================= */

    const categoriesGrid =
        document.getElementById("categoriesGrid");

    const productsGrid =
        document.getElementById("productsGrid");

    const cartCountEl =
        document.getElementById("cartCount");

    const searchInput =
        document.getElementById("searchInput");

    let cartCount = 0;


    /* ================= CATEGORIES ================= */

    function renderCategories() {

        categoriesGrid.innerHTML = "";

        CATEGORIES.forEach(cat => {

            const el = document.createElement("div");

            el.className = "cat-card";

            el.innerHTML = `

                <div class="icon">
                    <i class="fas ${cat.icon}"></i>
                </div>

                <h4>
                    ${cat.name}
                </h4>

                <div class="muted">
                    Explore ${cat.name}
                </div>
            `;

            el.addEventListener("click", () => {

                searchInput.value = cat.name;

                filterProducts(cat.name);

                window.scrollTo({
                    top:
                        document
                        .getElementById("prod-title")
                        .offsetTop - 60,
                    behavior: "smooth"
                });

            });

            categoriesGrid.appendChild(el);

        });

    }


    /* ================= PRODUCTS ================= */

    function renderProducts(list) {

        productsGrid.innerHTML = "";

        if (list.length === 0) {

            productsGrid.innerHTML = `

                <div style="
                    grid-column:1/-1;
                    text-align:center;
                    padding:50px;
                    background:white;
                    border-radius:18px;
                    border:1px solid var(--border);
                ">

                    <i
                        class="fas fa-search"
                        style="
                            font-size:35px;
                            color:var(--muted);
                        ">
                    </i>

                    <h3>
                        No products found
                    </h3>

                    <p class="muted">
                        Try searching for another product.
                    </p>

                </div>

            `;

            return;
        }


        list.forEach(p => {

            const el = document.createElement("article");

            el.className = "product";


            const badge = p.badge
                ? `
                    <div style="
                        position:absolute;
                        top:12px;
                        left:12px;
                        z-index:2;
                    ">

                        <span style="
                            background:${
                                p.badge.startsWith("-")
                                ? "var(--accent)"
                                : "var(--success)"
                            };
                            color:white;
                            padding:6px 9px;
                            border-radius:8px;
                            font-weight:700;
                            font-size:11px;
                        ">
                            ${p.badge}
                        </span>

                    </div>
                `
                : "";


            el.innerHTML = `

                ${badge}

                <img
                    src="${p.img}"
                    alt="${escapeHtml(p.title)}">

                <div class="product-body">

                    <h5>
                        ${escapeHtml(p.title)}
                    </h5>

                    <div class="muted">
                        ${p.category}
                    </div>

                    <div class="price-row">

                        <div>

                            <div class="price">
                                $${p.price.toLocaleString()}
                            </div>

                            ${
                                p.oldPrice
                                ? `
                                    <span class="old-price">
                                        $${p.oldPrice.toLocaleString()}
                                    </span>
                                  `
                                : ""
                            }

                        </div>

                        <div class="rating">

                            ${"★".repeat(Math.round(p.rating))}

                            <span
                                style="
                                    font-size:11px;
                                    color:var(--muted);
                                    letter-spacing:0;
                                ">
                                (${p.reviews})
                            </span>

                        </div>

                    </div>

                </div>


                <div class="product-footer">

                    <button
                        class="add-btn"
                        data-id="${p.id}">

                        <i class="fas fa-shopping-bag"></i>
                        Add to Cart

                    </button>

                    <button
                        class="wish-btn"
                        aria-label="Add to wishlist">

                        <i class="far fa-heart"></i>

                    </button>

                </div>
            `;


            productsGrid.appendChild(el);

        });


        productsGrid
            .querySelectorAll(".add-btn")
            .forEach(btn => {

                btn.addEventListener("click", () => {

                    const id =
                        Number(btn.dataset.id);

                    addToCart(id);

                });

            });


        productsGrid
            .querySelectorAll(".wish-btn")
            .forEach(btn => {

                btn.addEventListener("click", () => {

                    const icon =
                        btn.querySelector("i");

                    icon.classList.toggle("far");
                    icon.classList.toggle("fas");

                });

            });

    }


    /* ================= UTILITIES ================= */

    function escapeHtml(text) {

        return String(text)
            .replace(/[&<>"']/g, s => ({
                "&": "&amp;",
                "<": "&lt;",
                ">": "&gt;",
                '"': "&quot;",
                "'": "&#39;"
            }[s]));

    }


    function addToCart(productId) {

        const p =
            PRODUCTS.find(x => x.id === productId);

        if (!p) return;

        cartCount++;

        updateCartCount();


        const btn =
            document.querySelector(
                `.add-btn[data-id="${productId}"]`
            );

        if (btn) {

            const original =
                btn.innerHTML;

            btn.innerHTML =
                `<i class="fas fa-check"></i> Added`;

            btn.disabled = true;

            setTimeout(() => {

                btn.innerHTML =
                    original;

                btn.disabled = false;

            }, 1200);

        }

    }


    function updateCartCount() {

        cartCountEl.textContent =
            cartCount;

    }


    /* ================= SEARCH ================= */

    function filterProducts(query) {

        const q =
            String(query || "")
            .trim()
            .toLowerCase();


        if (!q) {

            renderProducts(PRODUCTS);

            return;

        }


        const filtered =
            PRODUCTS.filter(p =>

                p.title
                    .toLowerCase()
                    .includes(q)

                ||

                p.category
                    .toLowerCase()
                    .includes(q)

            );


        renderProducts(filtered);

    }


    document
        .getElementById("searchBtn")
        .addEventListener("click", () => {

            filterProducts(
                searchInput.value
            );

        });


    searchInput
        .addEventListener("keydown", e => {

            if (e.key === "Enter") {

                filterProducts(
                    e.target.value
                );

            }

        });


    /* ================= MOBILE MENU ================= */

    const mobileToggle =
        document.getElementById("mobileToggle");

    const mobileMenu =
        document.getElementById("mobileMenu");


    mobileToggle.addEventListener(
        "click",
        () => {

            mobileMenu.style.display =
                mobileMenu.style.display === "none"
                ? "block"
                : "none";

        }
    );


    /* ================= CATEGORY MENU ================= */

    const catMenuBtn =
        document.getElementById("catMenuBtn");


    catMenuBtn.addEventListener(
        "click",
        e => {

            e.preventDefault();

            document
                .getElementById("cat-title")
                .scrollIntoView({
                    behavior: "smooth"
                });

        }
    );


    /* ================= NEWSLETTER ================= */

    document
        .getElementById("newsletterForm")
        .addEventListener("submit", e => {

            e.preventDefault();

            const email =
                document
                .getElementById("newsletterEmail")
                .value
                .trim();

            const msg =
                document
                .getElementById("newsletterMsg");


            if (!email || !email.includes("@")) {

                msg.style.display = "block";

                msg.style.color =
                    "#ff6b81";

                msg.textContent =
                    "Please enter a valid email address.";

                return;

            }


            msg.style.display = "block";

            msg.style.color =
                "#7ee8b6";

            msg.textContent =
                "Thanks! You are subscribed.";

            document
                .getElementById("newsletterEmail")
                .value = "";


            setTimeout(() => {

                msg.style.display = "none";

            }, 3000);

        });


    /* ================= DEAL TIMER ================= */

    (function setupDealTimer() {

        const now = new Date();

        const target =
            new Date(
                now.getTime()
                +
                (24 * 60 + 36)
                * 60
                * 1000
            );


        function tick() {

            const diff =
                target - new Date();


            const days =
                Math.floor(
                    diff /
                    (24 * 3600 * 1000)
                );


            const hours =
                Math.floor(
                    (diff %
                        (24 * 3600 * 1000))
                    /
                    (3600 * 1000)
                );


            const mins =
                Math.floor(
                    (diff %
                        (3600 * 1000))
                    /
                    (60 * 1000)
                );


            const secs =
                Math.floor(
                    (diff %
                        (60 * 1000))
                    /
                    1000
                );


            document.getElementById(
                "dealDays"
            ).textContent = days;


            document.getElementById(
                "dealHours"
            ).textContent =
                String(hours).padStart(2, "0");


            document.getElementById(
                "dealMinutes"
            ).textContent =
                String(mins).padStart(2, "0");


            document.getElementById(
                "dealSeconds"
            ).textContent =
                String(secs).padStart(2, "0");


            if (diff <= 0) {

                clearInterval(timer);

            }

        }


        tick();

        const timer =
            setInterval(tick, 1000);

    })();


    /* ================= HERO BUTTONS ================= */

    document
        .getElementById("shopNow")
        .addEventListener("click", () => {

            document
                .getElementById("prod-title")
                .scrollIntoView({
                    behavior: "smooth"
                });

        });


    document
        .getElementById("exploreDeals")
        .addEventListener("click", () => {

            document
                .getElementById("deals")
                .scrollIntoView({
                    behavior: "smooth"
                });

        });


    /* ================= BUY DEAL ================= */

    document
        .getElementById("buyDeal")
        .addEventListener("click", () => {

            cartCount++;

            updateCartCount();

            const btn =
                document.getElementById("buyDeal");

            btn.innerHTML =
                `<i class="fas fa-check"></i> Added to Cart`;

            setTimeout(() => {

                btn.innerHTML = "Buy Now";

            }, 1500);

        });


    /* ================= INITIALIZATION ================= */

    (function init() {

        renderCategories();

        renderProducts(PRODUCTS);

        updateCartCount();

        document.getElementById("year")
            .textContent =
            new Date().getFullYear();

    })();

</script>

</body>
</html>
