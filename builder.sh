#!/bin/bash

if [ -z $1 ]; then
	echo "[-] oops: missing filename"
	exit 1
fi

BASENAME=$(basename "$1" ".png")

echo "[+] building 20pt icons (Notifications)"
convert -geometry 40x40 "$1" "$BASENAME-20-2x.png"
convert -geometry 60x60 "$1" "$BASENAME-20-3x.png"

echo "[+] building 29pt icons (Spotlight)"
convert -geometry 58x58 "$1" "$BASENAME-29-2x.png"
convert -geometry 87x87 "$1" "$BASENAME-29-3x.png"

echo "[+] building 40pt icons (Spotlight)"
convert -geometry 80x80 "$1" "$BASENAME-40-2x.png"
convert -geometry 120x120 "$1" "$BASENAME-40-3x.png"

echo "[+] building 60pt icons (App)"
convert -geometry 120x120 "$1" "$BASENAME-60-2x.png"
convert -geometry 180x180 "$1" "$BASENAME-60-3x.png"

echo "[+] building 1024pt icons (App Store)"
convert -geometry 1024x1024 "$1" "$BASENAME-1024.png"
