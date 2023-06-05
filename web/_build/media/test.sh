#!/bin/bash

# Set the folder path where the JPG files are located
folder_path="."

# Create an array to store the HTML code
html_array=()

# Loop through each JPG file in the folder
for file_path in "$folder_path"/*.jpg; do
  # Extract the filename and remove the extension
  filename=$(basename "$file_path")
  filename_without_extension="${filename%.*}"
  
  # Generate the HTML code and add it to the array
  html="<div class='gallery'><a target='_blank' href='$file_path'><img src='$file_path' alt='© E.VanDeVijver' width='600' height='400'></a></div>"
  html_array+=("$html")
done

# Print the HTML code
for html in "${html_array[@]}"; do
  echo "$html"
done
 
