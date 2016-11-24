# AutoDoodler

# Replace one color for another in an image
convert cactus-outline.png -fuzz 25% -fill red -opaque black result.png

# Replace white background with alpha layer
convert cactus-outline.png -fuzz 40% -fill red -opaque black result.png
