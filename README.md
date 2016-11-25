# AutoDoodler

# Replace one color for another in an image
convert cactus-outline.png -fuzz 25% -fill red -opaque black result.png

# Replace white background with alpha layer
convert cactus-outline.png -fuzz 40% -fill red -opaque black result.png

# Search successfully: (See secret instructions.)
curl -v -X POST "https://api.cognitive.microsoft.com/bing/v5.0/images/search?q=lady" -H "Content-Type: multipart/form-data" -H "Ocp-Apim-Subscription-Key: ###SECRET###" --data-ascii "{}"

