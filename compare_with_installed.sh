#!/bin/bash


origin="/home/pablo/Code/nautilus-scripts"
destination="/home/pablo/.local/share/nautilus/scripts"


# Iterate over all files in $destination. If relative path does not exist in $origin, delete it.
find "$destination" -type f | while IFS= read -r file; do
    relative_path="${file#"$destination"/}"
    if [ ! -f "$origin/$relative_path" ]; then
        echo "Deleting $file"
        rm "$file"
    fi
done
    
meld "$origin" "$destination"