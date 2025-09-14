# headers
header Content-Type text/html
end_headers

title="Paket Robux"

htmx_page <<EOF
<title>$title</title>

<h2>$title</h2>

<div class="card">
  <h3>400 Robux</h3><p>Rp72.000</p>
  <!-- tombol wa -->
  <a href="https://wa.me/628xxxxxxxxxx?text=Saya%20ingin%20beli%20400%20Robux" target="_blank">Beli via WA</a>
  <!-- tombol API (POST) -->
  <form hx-post="/api/buy">
    <input type="hidden" name="product" value="400">
    <input type="hidden" name="price" value="72000">
    <input type="text" name="buyer" placeholder="Nama/ID (untuk payout)">
    <button type="submit">Beli (via API)</button>
  </form>
  
</div>
EOF
