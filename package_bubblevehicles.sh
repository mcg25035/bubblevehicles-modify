#!/bin/bash

# Define the source directory to be zipped
# Define the output zip file name
rm -rf ./bvmodify.zip
OUTPUT_ZIP="bvmodify.zip"

# Define the items to be included in the zip
# These paths are relative to the current working directory (project root)
ITEMS_TO_ZIP="data pack.png pack.mcmeta"

# Check if the 'data' directory exists
if [ ! -d "data" ]; then
  echo "Error: 'data' directory not found."
  exit 1
fi

# Create the zip file from the project root
# -r for recursive, -q for quiet (no verbose output)
zip -r "$OUTPUT_ZIP" $ITEMS_TO_ZIP

echo "Successfully created $OUTPUT_ZIP in the project root with the specified structure."