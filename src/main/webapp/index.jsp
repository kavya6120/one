<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width,initial-scale=1">
<title>NexusShop</title>

<style>
*{box-sizing:border-box;margin:0}
body{font-family:Arial,sans-serif;background:#f7f8fc;color:#171a24}
header{background:#fff;padding:18px 6%;display:flex;align-items:center;justify-content:space-between;
       position:sticky;top:0;z-index:10;box-shadow:0 2px 10px #ddd}
.logo{font-size:25px;font-weight:bold;color:#5b4bff}
nav a{margin:0 12px;text-decoration:none;color:#333}
.search{padding:10px 15px;border:1px solid #ddd;border-radius:20px}
.cart{font-weight:bold;color:#5b4bff}

.hero{padding:70px 8%;background:linear-gradient(120deg,#eeeaff,#fff);
      display:flex;justify-content:space-between;align-items:center}
.hero h1{font-size:48px;margin-bottom:15px}
.hero p{color:#666;margin-bottom:25px}
.btn{border:0;padding:12px 22px;border-radius:8px;background:#5b4bff;color:white;cursor:pointer}
.hero img{width:380px;border-radius:20px}

section{padding:45px 7%}
h2{text-align:center;margin-bottom:25px}

.categories,.products{display:grid;gap:20px}
.categories{grid-template-columns:repeat(6,1fr)}
.category{background:white;padding:20px;text-align:center;border-radius:12px;cursor:pointer}
.category:hover,.product:hover{transform:translateY(-4px)}

.products{grid-template-columns:repeat(4,1fr)}
.product{background:white;border-radius:15px;padding:15px;transition:.2s;box-shadow:0 4px 15px #ddd}
.product img{width:100%;height:200px;object-fit:contain;border-radius:10px}
.product h3{margin:12px 0 6px}
.price{font-size:18px;font-weight:bold;color:#5b4bff}
.old{text-decoration:line-through;color:#999;font-size:13px;margin-left:5px}
.product button{width:100%;margin-top:12px}

.deal{background:#171a24;color:white;text-align:center;border-radius:20px;padding:40px}
.deal h2{color:white}
.timer{font-size:28px;margin:20px}

.newsletter{text-align:center;background:#fff;padding:35px;border-radius:15px}
.newsletter input{padding:12px;width:250px;border:1px solid #ddd;border-radius:8px}

footer{background:#171a24;color:white;padding:35px 7%;display:flex;justify-content:space-between}
footer p{color:#aaa;margin-top:8px}

@media(max-width:900px){
 .categories{grid-template-columns:repeat(3,1fr)}
 .products{grid-template-columns:repeat(2,1fr)}
 .hero img{width:300px}
}
@media(max-width:600px){
 nav{display:none}
 .hero{display:block;text-align:center}
 .hero h1{font-size:35px}
 .hero img{width:100%;margin-top:25px}
 .categories,.products{grid-template-columns:1fr 1fr}
 footer{display:block}
}
</style>
</head>

<body>

<header>
<div class="logo">NexusShop</div>
<nav>
<a href="#">Home</a>
<a href="#products">Shop</a>
<a href="#deals">Deals</a>
<a href="#about">About</a>
</nav>
<input class="search" id="search" placeholder="Search products...">
<div class="cart">🛒 <span id="cart">0</span></div>
</header>

<section class="hero">
<div>
<h1>Shop Smarter.<br>Live Better.</h1>
<p>Discover trending products at amazing prices.</p>
<button class="btn" onclick="location.href='#products'">Shop Now</button>
</div>
<img src="https://images.unsplash.com/photo-1607082349566-187342175e2f?auto=format&fit=crop&w=700&q=80">
</section>

<section>
<h2>Categories</h2>
<div class="categories" id="categories"></div>
</section>

<section id="products">
<h2>Popular Products</h2>
<div class="products" id="productList"></div>
</section>

<section id="deals">
<div class="deal">
<h2>🔥 Special Deal</h2>
<p>Get amazing discounts before the offer ends!</p>
<div class="timer" id="timer">24:00:00</div>
<button class="btn" onclick="addCart()">Grab Deal</button>
</div>
</section>

<section>
<div class="newsletter">
<h2>Stay Updated</h2>
<p>Get new arrivals and exclusive offers.</p><br>
<input id="email" type="email" placeholder="Enter your email">
<button class="btn" onclick="subscribe()">Subscribe</button>
<p id="message"></p>
</div>
</section>

<footer id="about">
<div>
<h3>NexusShop</h3>
<p>Simple. Modern. Affordable.</p>
</div>
<div>
<p>© <span id="year"></span> NexusShop</p>
</div>
</footer>

<script>
const products=[
["iPhone 14 Pro","Smartphones",999,"https://images.unsplash.com/photo-1592899677977-9c10ca588bbd?auto=format&fit=crop&w=500&q=80"],
["MacBook Air","Laptops",1099,"https://images.unsplash.com/photo-1517336714731-489689fd1ca8?auto=format&fit=crop&w=500&q=80"],
["Headphones","Gadgets",129,"https://images.unsplash.com/photo-1505740420928-5e560c06d30e?auto=format&fit=crop&w=500&q=80"],
["Sneakers","Footwear",89,"https://images.unsplash.com/photo-1542291026-7eec264c27ff?auto=format&fit=crop&w=500&q=80"],
["Smart Watch","Accessories",199,"https://images.unsplash.com/photo-1523275335684-37898b6baf30?auto=format&fit=crop&w=500&q=80"],
["T-Shirt","Clothing",39,"https://images.unsplash.com/photo-1521572163474-6864f9cf17ab?auto=format&fit=crop&w=500&q=80"]
];

let cart=0;

function show(list=products){
 productList.innerHTML=list.map(p=>`
 <div class="product">
  <img src="${p[3]}" alt="${p[0]}">
  <h3>${p[0]}</h3>
  <p>${p[1]}</p>
  <span class="price">$${p[2]}</span>
  <button class="btn" onclick="addCart()">Add to Cart</button>
 </div>`).join("");
}

function addCart(){
 cart++;
 document.getElementById("cart").textContent=cart;
}

categories.innerHTML=[...new Set(products.map(p=>p[1]))]
.map(c=>`<div class="category" onclick="show(products.filter(p=>p[1]=='${c}'))">${c}</div>`).join("");

search.oninput=e=>{
 let q=e.target.value.toLowerCase();
 show(products.filter(p=>p[0].toLowerCase().includes(q)||p[1].toLowerCase().includes(q)));
};

function subscribe(){
 message.textContent=email.value?"Thanks for subscribing!":"Enter a valid email.";
}

let end=Date.now()+86400000;
setInterval(()=>{
 let t=Math.max(0,end-Date.now()),h=Math.floor(t/3600000),
 m=Math.floor(t%3600000/60000),s=Math.floor(t%60000/1000);
 timer.textContent=`${String(h).padStart(2,"0")}:${String(m).padStart(2,"0")}:${String(s).padStart(2,"0")}`;
},1000);

year.textContent=new Date().getFullYear();
show();
</script>

</body>
</html>
