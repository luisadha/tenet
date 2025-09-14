# headers
# header Content-Type text/html
# end_headers

title="Paket Robux"
htmx_page <<EOF
<h2>$title</h2>

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
  </form>
  
</div>
EOF
