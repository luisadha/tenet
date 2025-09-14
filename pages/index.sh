# headers
header Content-Type text/html
end_headers

title="Toko Luis Topup Robux"
htmx_page <<EOF
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
    <h1 class="text-4xl font-bold mb-8">Topup Roblox</h1>

    <!-- Card kategori -->
    <a href="/produk" 
       class="block bg-white/90 backdrop-blur-sm rounded-2xl shadow-lg hover:shadow-xl transform hover:scale-105 transition p-6 w-64 text-center">
      <img src="./static/images/roblox-blue.png" alt="Roblox Games" class="w-20 mx-auto mb-4">
      <h2 class="text-lg font-semibold text-gray-800">Roblox Games</h2>
      <p class="text-sm text-gray-600 mt-2">Lihat semua paket topup</p>
    </a>
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
