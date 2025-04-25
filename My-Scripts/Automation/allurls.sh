#!/bin/bash

# Check if domain is provided
if [ -z "$1" ]; then
  echo "Usage: $0 domain.com"
  exit 1
fi

DOMAIN=$1
OUTPUT_DIR="target"
OUTPUT_FILE="$OUTPUT_DIR/$DOMAIN-urls.txt"

# Create the target directory if it doesn't exist
mkdir -p $OUTPUT_DIR

# Run waybackurls and gau, combine and dedupe
echo "[*] Gathering URLs for $DOMAIN..."
(waybackurls $DOMAIN; gau $DOMAIN) | sort -u > $OUTPUT_FILE

echo "[+] URLs saved to $OUTPUT_FILE"
