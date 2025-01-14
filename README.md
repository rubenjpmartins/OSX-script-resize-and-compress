# Resize and Compress Scripts

This repository contains two shell scripts for resizing images to `1200x630` pixels and optionally compressing and managing the output files.

## Scripts

### 1. `resize_and_compress.sh`
- Resizes images from a source folder to `1200x630`.
- Saves the resized images to a destination folder.
- Compresses the destination folder into a `1200x630.zip` file.
- Deletes the resized images from the destination folder after zipping.

### 2. `resize_and_compress_no_delete.sh`
- Similar to `resize_and_compress.sh`, but does **not delete** the resized images from the destination folder.

## Usage

Make the scripts executable:
chmod +x resize_and_compress.sh resize_and_compress_no_delete.sh


Run the desired script:
./resize_and_compress.sh



### Prerequisites
- Ensure `ImageMagick` is installed. Install it using:
  ```bash
  brew install imagemagick


