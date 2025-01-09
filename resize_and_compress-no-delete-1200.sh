#!/bin/bash

# Fixed folder paths
FOLDER_A="/Users/rubenjpmartins/Desktop/temp/talho/FotosPromo"
FOLDER_B="/Users/rubenjpmartins/Desktop/temp/talho/1200x630"
ZIP_LOCATION="/Users/rubenjpmartins/Desktop/temp/talho"

# Create folder B if it doesn't exist
mkdir -p "$FOLDER_B"

# Loop through all images in folder A (supports common image formats)
for image in "$FOLDER_A"/*.{jpg,jpeg,png,gif,bmp,tiff}; do
  # Check if the image file exists
  if [[ -f "$image" ]]; then
    # Get the base name of the image
    base_name=$(basename "$image")
    # Append "-1200" before the file extension
    new_name="${base_name%.*}-1200.${base_name##*.}"
    new_image="$FOLDER_B/$new_name"
    
    # Resize the image to 1200x630 and save it in folder B with the new name
    magick "$image" -resize 1200x630\! "$new_image"
    echo "Resized: $new_name"
  fi
done

# Compress folder B into a zip file at the specified location
cd "$FOLDER_B" && zip -r "$ZIP_LOCATION/1200x630.zip" .

echo "Images resized and compressed to $ZIP_LOCATION/1200x630.zip"

# Final "Done" message
echo "Done"
