#!/usr/bin/env bash
# produk.sh — daftar paket & tombol beli (via WhatsApp / API)
cat <<'HTML'
Content-Type: text/html; charset=utf-8

<!doctype html>
<html lang="id">
<head><meta charset="utf-8"><meta name="viewport" content="width=device-width,initial-scale=1">
<title>Paket Robux</title>
<link rel="stylesheet" href="/static/style.css">
</head>
<body>
<h2>Paket Robux</h2>

<div class="card">
  <h3>400 Robux</h3><p>Rp72.000</p>
  <!-- tombol wa -->
  <a href="https://wa.me/628xxxxxxxxxx?text=Saya%20ingin%20beli%20400%20Robux" target="_blank">Beli via WA</a>
  <!-- tombol API (POST) -->
  <form method="post" action="/api/buy.sh">
    <input type="hidden" name="product" value="400">
    <input type="hidden" name="price" value="72000">
    <input type="text" name="buyer" placeholder="Nama/ID (untuk payout)">
    <button type="submit">Beli (via API)</button>
  </form>
</div>

</body></html>
HTML