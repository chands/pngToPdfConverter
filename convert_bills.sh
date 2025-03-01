#!/bin/bash
# Check if Python and Pillow are installed
if ! command -v python3 &> /dev/null; then echo "Python3 is required but not installed. Please install Python3 first."; exit 1; fi
python3 -m pip install Pillow &> /dev/null || { echo "Failed to install required Python package (Pillow). Please run: python3 -m pip install Pillow"; exit 1; }
cat << "EOF" > combine_images.py
from PIL import Image
import os
month_names = {"jan": "January", "feb": "February", "mar": "March", "apr": "April", "may": "May", "jun": "June", "jul": "July", "aug": "August", "sep": "September", "oct": "October", "nov": "November", "dec": "December"}
def combine_images_to_pdf(month_abbr):
    img1 = Image.open(f"{month_abbr}1.png")
    img2 = Image.open(f"{month_abbr}2.png")
    if img1.mode != "RGB": img1 = img1.convert("RGB")
    if img2.mode != "RGB": img2 = img2.convert("RGB")
    full_month = month_names[month_abbr]
    img1.save(f"{full_month}.pdf", "PDF", resolution=100.0, save_all=True, append_images=[img2])
    print(f"Created {full_month}.pdf")
months = ["mar", "apr", "may", "jun", "jul", "aug", "sep", "oct", "nov", "dec", "jan", "feb"]
for month in months:
    try:
        combine_images_to_pdf(month)
    except Exception as e:
        print(f"Error processing {month}: {str(e)}")
EOF
python3 combine_images.py
echo "Cleaning up temporary files..."
rm *.png combine_images.py
echo "Done! All PDFs have been created successfully."
