header Content-Type text/html
end_headers

title="Toko Luis Topup Robux"
body_props=(
  [class]="min-h-screen w-full overflow-x-hidden font-sans bg-[#fdf6ec]"
)
htmx_page <<EOF
<head>
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <title>Toko Luis Topup Robux</title>
</head>

<!-- Halaman utama -->
<div id="main"
     class="bg-cover bg-center bg-no-repeat flex flex-col items-center justify-start text-gray-800 p-6 space-y-8"
     style="background-image: url('/static/images/background.jpg'); z-index: 1;">

  <h1 class="text-4xl sm:text-5xl font-bold mt-8 mb-6">Populer</h1>
  <h1 class="text-4xl sm:text-5xl font-bold mb-6">Games</h1>

 <div class="grid grid-cols-1 sm:grid-cols-2 md:grid-cols-3 gap-6 w-full max-w-3xl">
  <a href="/product/diamond/mlbb"
       class="block bg-white/90 backdrop-blur-sm rounded-3xl shadow-lg hover:shadow-xl transform hover:scale-105 transition p-6 w-full text-center">
      <img src="/static/images/mlbb.png" alt="MLBB" class="w-24 mx-auto mb-5">
      <h2 class="text-xl font-semibold text-gray-800">Mobile Legends</h2>
      <p class="text-base text-gray-600 mt-2">Diamond & Top-Up Resmi Moonton</p>
    </a>
  </div> 
  
  <h1 class="text-4xl sm:text-5xl font-bold mb-10">Voucher</h1>

  <!-- Card kategori -->
  <div class="grid grid-cols-1 sm:grid-cols-2 md:grid-cols-3 gap-6 w-full max-w-3xl">
    <a href="/product/voucher/roblox"
       class="block bg-white/90 backdrop-blur-sm rounded-3xl shadow-lg hover:shadow-xl transform hover:scale-105 transition p-6 w-full text-center">
      <img src="/static/images/roblox-blue.png" alt="Roblox Games" class="w-24 mx-auto mb-5">
      <h2 class="text-xl font-semibold text-gray-800">Roblox Voucher</h2>
      <p class="text-base text-gray-600 mt-2">Roblox Gift Card (IDR RBX) Roblox Corporation</p>
    </a>

    <!-- Placeholder untuk game berikutnya 
    <a href="/product/diamond/mlbb"
       class="block bg-white/90 backdrop-blur-sm rounded-3xl shadow-lg hover:shadow-xl transform hover:scale-105 transition p-6 w-full text-center">
      <img src="/static/images/mlbb.png" alt="MLBB" class="w-24 mx-auto mb-5">
      <h2 class="text-xl font-semibold text-gray-800">Mobile Legends</h2>
      <p class="text-base text-gray-600 mt-2">Diamond & Top-Up Resmi Moonton</p>
    </a> -->
  </div>

  <div class="h-20"></div> <!-- Spacer agar tidak terlalu nempel di bawah -->
</div>
EOF
