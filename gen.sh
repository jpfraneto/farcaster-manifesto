#!/bin/bash
set -euo pipefail

KEY="AIzaSyDMTzkdGQm9o0DvDCtNclw13-JyYADLtpU"
DIR="/Users/kithkui/Desktop/client_work/farcaster/manifesto/public/images"
MODEL="gemini-2.5-flash-image"
URL="https://generativelanguage.googleapis.com/v1beta/models/${MODEL}:generateContent?key=${KEY}"
ARCHES_B64=$(base64 -i "$DIR/farcaster-arches.jpg")

gen() {
  local name="$1" prompt="$2" aspect="$3"
  echo ">>> Generating $name ..."

  local payload
  payload=$(jq -n \
    --arg p "$prompt" \
    --arg img "$ARCHES_B64" \
    --arg ar "$aspect" \
    '{
      contents: [{
        parts: [
          { inline_data: { mime_type: "image/jpeg", data: $img } },
          { text: $p }
        ]
      }],
      generationConfig: {
        responseModalities: ["TEXT","IMAGE"],
        imageConfig: { aspectRatio: $ar }
      }
    }')

  local resp
  resp=$(curl -s -m 120 -X POST "$URL" \
    -H "Content-Type: application/json" \
    -d "$payload")

  local err
  err=$(echo "$resp" | jq -r '.error.message // empty')
  if [ -n "$err" ]; then
    echo "ERROR ($name): $err"
    return 1
  fi

  local imgdata
  imgdata=$(echo "$resp" | jq -r '[.candidates[0].content.parts[] | select(.inlineData)] | .[0].inlineData.data // empty')
  if [ -z "$imgdata" ]; then
    echo "ERROR ($name): No image in response"
    echo "$resp" | jq '.' > "$DIR/${name%.png}_debug.json"
    return 1
  fi

  echo "$imgdata" | base64 -d > "$DIR/$name"
  local sz
  sz=$(wc -c < "$DIR/$name" | tr -d ' ')
  echo "OK: $DIR/$name ($sz bytes)"
}

echo "=== Starting generation ==="

gen "icon.png" \
  "Using this Farcaster arches logo as the primary design element, create a polished app icon. Keep the white arches/gateway symbol centered and prominent. Background: rich purple radial gradient from #7D65C1 center to #1a1233 edges. Add a very subtle glow behind the arches. Minimal, clean, no text. Must look sharp at small sizes. Square icon format." \
  "1:1"

gen "splash.png" \
  "Using the Farcaster arches from this reference image, create a minimal loading screen icon. The white arches symbol centered perfectly on a flat solid purple (#7D65C1) background. Crisp clean edges. No gradients, no glow, no text, no extra effects. Just the white arches on flat purple. Must be instantly recognizable at tiny sizes." \
  "1:1"

gen "embed.png" \
  "Create a dramatic social card image for 'Farcaster Manifesto'. Dark gradient background from #110d22 (top) to #3d2e6e (bottom). Place the Farcaster arches symbol (from reference) in white at top center, small. Below it, large bold white sans-serif text: 'The Protocol Is Ours Now.' Below that in lighter gray: 'Farcaster Manifesto — The People Who Stayed'. Near the bottom, a thin glowing purple (#c4b3e8) horizontal line with small bright dots suggesting network nodes. Subtle grain texture. Cinematic, moody. Landscape." \
  "3:2"

gen "og.png" \
  "Create an Open Graph image for the Farcaster Manifesto. Dark background gradient #110d22 to #3d2e6e left to right. Left-aligned: the white Farcaster arches (from reference) top-left, moderate size. Below: large bold white text 'Farcaster Manifesto'. Below that, lighter weight text 'The People Who Stayed' in gray. A thin glowing purple line separates from bottom text 'manifesto.farcaster.lat' in small monospace. Right side: a giant faded arches watermark at ~8% opacity. Grain texture. Wide cinematic." \
  "16:9"

gen "hero.png" \
  "Create an atmospheric cinematic illustration. A vast dark purple ocean (color #1a1233) stretching to a far horizon. The sky transitions from deep violet #3d2e6e at top to soft lavender #c4b3e8 at the horizon. On the horizon line, a small cluster of warm golden-white lights like a distant settlement. Above the lights in the sky, the Farcaster arches symbol (from reference) appears formed by connected glowing stars/constellation points, subtle and ethereal. The water reflects purple light. Painterly digital art, contemplative, hopeful. No text." \
  "3:2"

gen "screenshot1.png" \
  "Create a mobile app screenshot mockup. Dark purple gradient background #7D65C1 with darker edges. Top center: the white Farcaster arches logo (from reference) ~60px. Below: a small rounded pill badge 'A DOCUMENT FOR THE PEOPLE WHO STAYED' in tiny uppercase. Large white headline: 'The protocol is ours now.' with 'ours now.' in extra bold. Below: lighter gray paragraph text about this not being a product manual. Below: a white rounded-rectangle button 'Read the story'. Clean mobile UI, Inter font, centered. Portrait mobile format." \
  "9:16"

gen "screenshot2.png" \
  "Create a mobile app screenshot of a dark-themed content page. Background #1a1233. At top: small purple-glow label 'PART IV'. Below: white heading 'The most powerful number you will ever own on the internet.' Below: stacked dark card components (rgba(26,18,51,0.7) backgrounds with thin borders). Cards have white titles: 'Your Name', 'Your Messages', 'Your Keys', 'Your Graph' with gray description text. The Farcaster arches from the reference appear faintly as a large background watermark. Clean dark mobile UI, Inter font. Portrait." \
  "9:16"

gen "screenshot3.png" \
  "Create a mobile app screenshot of a token distribution page. Dark background #1a1233. At top: small purple label 'PART VIII'. White heading: 'The case for \$FARCASTER.' Below: a horizontal stacked bar chart — segments from left: 35% light purple #c4b3e8, 20% medium #9b85d6, 20% purple #7D65C1, 10% dark #6550a8, 5% deeper #3d2e6e, 10% darkest #1a1233. Below the bar: legend with small colored squares and labels: Community Retroactive, Builder Fund, Protocol DAO, Liquidity, Node Operators, Future Contributors. Farcaster arches watermark in background. Dark mobile UI, Inter font. Portrait." \
  "9:16"

echo ""
echo "=== Done ==="
ls -la "$DIR"/*.png 2>/dev/null
