#!/bin/bash

if [ "$1" == "" ]; then
	echo "[-] missing filename"
	exit 1
fi

BASENAME=$(basename "$1" ".png")

echo "[+] building 29pt icons"
convert -geometry 58x58 "$1" "$BASENAME-29-2x.png"
convert -geometry 87x87 "$1" "$BASENAME-29-3x.png"

echo "[+] building 40pt icons"
convert -geometry 80x80 "$1" "$BASENAME-40-2x.png"
convert -geometry 120x120 "$1" "$BASENAME-40-3x.png"

echo "[+] building 60pt icons"
convert -geometry 120x120 "$1" "$BASENAME-60-2x.png"
convert -geometry 180x180 "$1" "$BASENAME-60-3x.png"

