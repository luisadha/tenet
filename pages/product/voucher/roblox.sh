# headers
header Content-Type text/html
end_headers

title="Paket Robux"
htmx_page <<EOF
<h2>$title</h2>
<header class="hero">
<script src="https://cdn.tailwindcss.com"></script>
  <style>
    /* animasi custom untuk fade */
    .fade-out {
      opacity: 0;
      transition: opacity 1s ease;
    }
    .zoom-in {
      animation: zoomIn 1.5s ease;
    }
    @keyframes zoomIn {
      from { transform: scale(0.5); opacity: 0; }
      to { transform: scale(1); opacity: 1; }
    }
  </style>
</head>
<body class="h-screen w-screen overflow-hidden font-sans">

  <!-- Halaman utama -->

<div id="main" class="absolute inset-0 bg-cover bg-center bg-no-repeat flex flex-col items-center justify-center text-gray-800"
       style="background-image: url('./static/images/background.jpg'); z-index: 1;">

<div class="card">
  <h3>400 Robux Digital Card</h3><p>Rp 76.500</p>
  <!-- tombol wa -->
  <a href="https://wa.me/6283826266879?text=Saya%20ingin%20beli%20400%20Robux" target="_blank">Beli malalui WhatsApp</a>
  <!-- tombol API (POST) -->
  <form hx-post="/api/buy">
    <input type="hidden" name="product" value="400">
    <input type="hidden" name="price" value="72000">
    <input type="text" name="buyer" placeholder="E-Mail">
    <button type="submit">Beli</button>
  </form></div>
</div>

  <!-- Sambutan transparan di atas -->
  <div id="welcome" class="absolute inset-0 bg-black/60 flex flex-col items-center justify-center text-white z-10">
    <img src="./static/images/roblox-blue.png" alt="Logo Website" class="w-36 h-auto zoom-in">
    <h1 class="text-3xl font-bold mt-6 animate-fadeIn">Roblox Gift Card (IDR RBX)</h1>
    <h2 class="text-xl mt-2 animate-fadeIn">Roblox Corporation</h2>
  </div>

  <script>
    // Hilangkan sambutan setelah 3 detik
    setTimeout(() => {
      const welcome = document.getElementById("welcome");
      welcome.classList.add("fade-out");
      setTimeout(() => {
        welcome.style.display = "none";
      }, 1000); // delay untuk transisi
    }, 3000);
  </script>
</header>

EOF
