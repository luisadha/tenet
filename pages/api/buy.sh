# headers
header Content-Type application/json
end_headers

# buy.sh — menerima form POST sederhana dan menyimpan ke data/orders.csv
# NOTE: sangat minimal; jangan pakai langsung di produksi tanpa validasi & rate-limit

# post only
if [[ "$REQUEST_METHOD" != "POST" ]]; then
  return $(status_code 405)
fi

ORDERS_FILE=data/orders.csv
if [ ! -e "$ORDERS_FILE" ]; then
  echo "timestamp,product,price,buyer" > "$ORDERS_FILE"
fi
TIMESTAMP=$(date -u +"%Y-%m-%dT%H:%M:%SZ")
echo "${TIMESTAMP},${FORM_DATA[product]},${FORM_DATA[price]},\"${FORM_DATA[buyer]}\"" >> "$ORDERS_FILE"

cat <<JSON
{"status":"ok","product":"${FORM_DATA[product]}","price":"${FORM_DATA[price]}","buyer":"${FORM_DATA[buyer]}","note":"order saved"}
JSON
