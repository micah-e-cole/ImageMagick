#!/bin/zsh
# I am using zsh as my bash interpreter, if you are using bash change
# that line to /bin/bash

# Wildcard search - If using bash, change the line on 6 to: shopt -s nullglob
setopt nullglob

# Create a new folder for the resized images
mkdir -p resized_images

# Place the image(s) you want resized here
input_dir="./input"

# This is the folder where the output(s) will be
output_dir="./output"

# If the input or output folders do not already exist

mkdir -p "$input_dir"
mkdir -p "$output_dir"

# Checks for any JPG or PNG files regardless of capitals
for file in "$input_dir"/*.jpg "$input_dir"/*.png; do
	filename=$(basename "${file%.*}") # Get filename without the extension
	extension="${file##*.}"           # Get the extension

	echo "Re-sizing $file"            # Outputs message, states which file is in use

	for ((i=100; i<=500; i+=10));     # Loop to increase image size up to 500x the current size in increments of 10%
		output_file="${output_dir}/${filename}_${i}.${extension}"  # Output filename format
		# Re-size image command
		magick "$file" -resize ${i}% -filter Lanczos -define filter:blur=0.75 -unsharp 0x0.75+0.75+0.008 "$output_file"
		echo "Created $output_file
	done
done
