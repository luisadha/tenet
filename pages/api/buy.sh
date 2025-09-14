#!/usr/bin/env bash
# buy.sh — menerima form POST sederhana dan menyimpan ke data/orders.csv
# NOTE: sangat minimal; jangan pakai langsung di produksi tanpa validasi & rate-limit

# read body (application/x-www-form-urlencoded)
read -r BODY
# decode helper (very simple)
urldecode() { printf '%b' "${1//%/\\x}"; }

# parse k=v pairs
PRODUCT=$(printf "%s" "$BODY" | sed -n 's/.*product=\([^&]*\).*/\1/p' | sed 's/+/ /g' | xargs -0 printf "%s")
PRICE=$(printf "%s" "$BODY" | sed -n 's/.*price=\([^&]*\).*/\1/p' | sed 's/+/ /g' | xargs -0 printf "%s")
BUYER=$(printf "%s" "$BODY" | sed -n 's/.*buyer=\([^&]*\).*/\1/p' | sed 's/+/ /g' | xargs -0 printf "%s")

PRODUCT=$(urldecode "$PRODUCT")
PRICE=$(urldecode "$PRICE")
BUYER=$(urldecode "$BUYER")

# create data dir/file
mkdir -p ../../data
ORDERS_FILE=../../data/orders.csv
[ -f "$ORDERS_FILE" ] || echo "timestamp,product,price,buyer" > "$ORDERS_FILE"

TIMESTAMP=$(date -u +"%Y-%m-%dT%H:%M:%SZ")
echo "${TIMESTAMP},${PRODUCT},${PRICE},\"${BUYER}\"" >> "$ORDERS_FILE"

# response JSON
cat <<JSON
Content-Type: application/json; charset=utf-8

{"status":"ok","product":"$PRODUCT","price":"$PRICE","buyer":"$BUYER","note":"order saved"}
JSON