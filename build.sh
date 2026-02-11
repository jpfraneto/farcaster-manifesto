#!/usr/bin/env bash
set -euo pipefail

# Convert manifesto.md → index.html using the template
pandoc manifesto.md \
  -f markdown \
  -t html \
  --wrap=none \
  -o index.html \
  --template=deploy/template.html

echo "Built index.html from manifesto.md"
