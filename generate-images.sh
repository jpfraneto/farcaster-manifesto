#!/bin/bash
set -e

IMAGES_DIR="/Users/kithkui/Desktop/client_work/farcaster/manifesto/public/images"
ARCHES="$IMAGES_DIR/farcaster-arches.jpg"
MODEL="gemini-2.5-flash-image"
API_URL="https://generativelanguage.googleapis.com/v1beta/models/${MODEL}:generateContent"

# Base64 encode the arches image
ARCHES_B64=$(base64 -i "$ARCHES")

generate_image() {
  local name="$1"
  local prompt="$2"
  local aspect="$3"
  local output="$IMAGES_DIR/$name"

  echo "=== Generating $name (aspect: $aspect) ==="

  local response
  response=$(curl -s -X POST "$API_URL" \
    -H "x-goog-api-key: $GEMINI_API_KEY" \
    -H "Content-Type: application/json" \
    -d "$(jq -n \
      --arg prompt "$prompt" \
      --arg arches "$ARCHES_B64" \
      --arg aspect "$aspect" \
      '{
        contents: [{
          parts: [
            {
              inline_data: {
                mime_type: "image/jpeg",
                data: $arches
              }
            },
            { text: $prompt }
          ]
        }],
        generationConfig: {
          responseModalities: ["TEXT", "IMAGE"],
          imageConfig: {
            aspectRatio: $aspect
          }
        }
      }')")

  # Check for errors
  local error
  error=$(echo "$response" | jq -r '.error.message // empty')
  if [ -n "$error" ]; then
    echo "ERROR generating $name: $error"
    echo "$response" | jq '.' > "$IMAGES_DIR/${name%.png}_error.json"
    return 1
  fi

  # Extract image data - find the part with inlineData
  local img_data
  img_data=$(echo "$response" | jq -r '.candidates[0].content.parts[] | select(.inlineData) | .inlineData.data // empty')

  if [ -z "$img_data" ]; then
    echo "ERROR: No image data in response for $name"
    echo "$response" | jq '.' > "$IMAGES_DIR/${name%.png}_error.json"
    return 1
  fi

  # Detect mime type
  local mime
  mime=$(echo "$response" | jq -r '.candidates[0].content.parts[] | select(.inlineData) | .inlineData.mimeType // "image/png"')

  local ext="png"
  if [ "$mime" = "image/jpeg" ]; then ext="jpg"; fi

  # Decode and save
  echo "$img_data" | base64 -d > "$output"
  echo "Saved: $output ($(wc -c < "$output" | tr -d ' ') bytes)"

  # Also capture any text response
  local text_resp
  text_resp=$(echo "$response" | jq -r '.candidates[0].content.parts[] | select(.text) | .text // empty')
  if [ -n "$text_resp" ]; then
    echo "Model note: $text_resp"
  fi

  echo ""
}

echo "Starting image generation with Gemini $MODEL..."
echo "Using Farcaster arches as reference image."
echo ""

# 1. App Icon (200x200, 1:1)
generate_image "icon.png" \
  "Using this Farcaster arches logo as the primary reference, create a miniapp icon. Keep the white arches symbol as the central element but make it slightly smaller. The background should be a rich deep-to-medium purple gradient (#1a1233 at edges to #7D65C1 at center) with a very subtle radial glow behind the arches. Add a faint, barely visible network grid pattern in the background to suggest decentralization. Clean, minimal, no text. The arches should feel iconic and bold at small sizes. Square format." \
  "1:1"

# 2. Splash Image (200x200, 1:1)
generate_image "splash.png" \
  "Using this Farcaster arches logo as reference, create a clean splash/loading screen icon. Place the white arches symbol perfectly centered on a solid flat purple (#7D65C1) background. The arches should be crisp, white, and exactly match the shape in the reference image. No gradients, no effects, no text — just the clean white arches on the flat purple. This must be readable at very small sizes. Square format." \
  "1:1"

# 3. Embed Image (1200x800, 3:2)
generate_image "embed.png" \
  "Create a dramatic social sharing card image for the Farcaster Manifesto. Use a dark moody gradient background from deep purple-black (#110d22) at the top to medium purple (#7D65C1) at the bottom. Place the white Farcaster arches symbol (from the reference image) at the top center, about 15% of the image height. Below it, render large bold white text reading 'The Protocol Is Ours Now.' in a clean sans-serif font (like Inter Black). Below that, smaller lighter text in rgba(255,255,255,0.6): 'Farcaster Manifesto'. At the very bottom, a thin glowing purple line (#c4b3e8) stretching across the width with small dots along it suggesting network nodes. Subtle noise/grain texture overlay across the whole image. Landscape 3:2 format." \
  "3:2"

# 4. OG Image (roughly 1200x630, use 16:9)
generate_image "og.png" \
  "Create an Open Graph sharing image for the Farcaster Manifesto. Dark background gradient from #110d22 (left) to #3d2e6e (right). Left-aligned layout: the white Farcaster arches symbol (from reference) in the top-left at moderate size. Below it, large bold white text 'Farcaster Manifesto' in Inter or similar clean sans-serif, weight 800. Below that, lighter text 'The People Who Stayed' in weight 300, color rgba(255,255,255,0.65). A thin horizontal glowing purple rule (#c4b3e8) separates this from the bottom where 'manifesto.farcaster.lat' appears in small monospace text. Right side of the image has a very subtle, large faded version of the arches as a watermark at 5% opacity. Grain texture overlay. Wide landscape 16:9 format." \
  "16:9"

# 5. Hero Image (1200x800, 3:2)
generate_image "hero.png" \
  "Create an atmospheric, cinematic hero illustration for the Farcaster Manifesto. A vast dark purple ocean (#1a1233 water) stretching to a distant horizon under a sky transitioning from deep violet (#3d2e6e) at the top to soft lavender (#c4b3e8) at the horizon line. On the horizon, a cluster of small warm white-golden lights grouped together — like a settlement of people who stayed and gathered. The water reflects faint purple light from the sky. Above the settlement, the Farcaster arches symbol (from the reference image) appears subtly in the sky as a constellation made of stars/nodes connected by faint lines, glowing softly in white. Painterly digital art style, contemplative and hopeful mood. No text. Landscape 3:2 format." \
  "3:2"

# 6. Screenshot 1 - Hero section (mobile, 9:16)
generate_image "screenshot1.png" \
  "Create a realistic mobile app screenshot mockup of the Farcaster Manifesto miniapp hero section. Dark purple gradient background (#7D65C1 base with darker edges). At the top center, the white Farcaster arches logo (from reference image) at about 60px size. Below it, a small pill-shaped badge with thin border reading 'A DOCUMENT FOR THE PEOPLE WHO STAYED' in tiny uppercase letters. Below that, a large headline in white: 'The protocol is ours now.' where 'ours now.' is in extra bold weight 800. Below that, a paragraph of lighter gray text: 'This is not a product manual. It is the truth about what Farcaster is, what happened to it, and why the most important chapter is the one we write together.' Below that, a white rounded button reading 'Read the story'. Clean mobile UI, Inter font, centered layout. Portrait 9:16 format." \
  "9:16"

# 7. Screenshot 2 - FID section (mobile, 9:16)
generate_image "screenshot2.png" \
  "Create a realistic mobile app screenshot of the Farcaster Manifesto miniapp showing the FID identity section. Dark purple background (#1a1233). At the top, small purple uppercase label 'PART IV', followed by a heading in white: 'The most powerful number you will ever own on the internet.' Below that, stacked card components with dark purple semi-transparent backgrounds (rgba(26,18,51,0.7)) and 1px borders. Cards titled: 'Your Name' with description about FID username, 'Your Messages' about signed messages on the network, 'Your Keys' about revocable permissions. Each card has white title and gray description text. Clean, minimal dark theme UI, Inter font. The Farcaster arches appear very faintly as a watermark in the background. Portrait 9:16 format." \
  "9:16"

# 8. Screenshot 3 - Token section (mobile, 9:16)
generate_image "screenshot3.png" \
  "Create a realistic mobile app screenshot of the Farcaster Manifesto miniapp showing the token distribution section. Dark purple background (#1a1233). At top, small purple label 'PART VIII', heading: 'The case for \$FARCASTER.' in white. Below, a horizontal stacked bar chart showing token allocation: 35% in light purple (#c4b3e8), 20% in medium purple (#9b85d6), 20% in purple (#7D65C1), 10% in dark purple (#6550a8), 5% in deep purple (#3d2e6e), 10% in near-black (#1a1233). Below the bar, a legend with colored squares and labels: 'Community Retroactive', 'Builder Fund', 'Protocol DAO', 'Liquidity', 'Node Operators', 'Future Contributors'. The Farcaster arches appear very faintly in the background. Clean dark theme UI, Inter font. Portrait 9:16 format." \
  "9:16"

echo "=== All images generated ==="
ls -la "$IMAGES_DIR"/*.png 2>/dev/null || echo "No PNG files found - check for errors"
