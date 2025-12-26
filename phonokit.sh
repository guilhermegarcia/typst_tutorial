#!/bin/zsh

# NOTE: Function to generate PNGs figures using Phonokit
# Goal: export PNGs directly from Phonokit so you can use
# them elsewhere if you don't use Typst.
# Adjust Phonokit version and destination as needed
phonokit() {
  local code="$1"
  local timestamp=$(date +%Y%m%d_%H%M%S)
  local output="$HOME/Desktop/phonokit_output_${timestamp}.png"
  local tmp=$(mktemp /tmp/phonokit-XXXXXX.typ)

  cat >"$tmp" <<EOF
#import "@preview/phonokit:0.0.1": *
#set page(width: auto, height: auto, margin: 0.5em)
$code
EOF

  typst compile --ppi 500 "$tmp" "$output"
  rm "$tmp"

  echo "Saved to $output"
}
