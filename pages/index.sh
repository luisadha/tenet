header Content-Type text/html
end_headers

title="Toko Luis Topup Robux"
body_props=(
  [class]="min-h-screen w-full overflow-x-hidden font-sans"
)
htmx_page <<EOF
<head>
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <title>Toko Luis Topup Robux</title>
</head>

<!-- Halaman utama -->
<div id="main"
     class="bg-cover bg-center bg-no-repeat flex flex-col items-center justify-center text-gray-800 p-4 space-y-6"
     style="background-image: url('/static/images/background.jpg'); z-index: 1;">

  <h1 class="text-3xl sm:text-4xl font-bold mb-4">Populer</h1>
  <h1 class="text-3xl sm:text-4xl font-bold mb-4">Games</h1>
  <h1 class="text-3xl sm:text-4xl font-bold mb-4">Voucher</h1>

  <!-- Card kategori -->
  <a href="/product/voucher/roblox"
     class="block bg-white/90 backdrop-blur-sm rounded-2xl shadow-lg hover:shadow-xl transform hover:scale-105 transition p-4 w-11/12 sm:w-64 text-center">
    <img src="/static/images/roblox-blue.png" alt="Roblox Games" class="w-16 sm:w-20 mx-auto mb-3">
    <h2 class="text-base sm:text-lg font-semibold text-gray-800">Roblox Voucher</h2>
    <p class="text-xs sm:text-sm text-gray-600 mt-1">Roblox Gift Card (IDR RBX) Roblox Corporation</p>
  </a>
</div>
EOF
