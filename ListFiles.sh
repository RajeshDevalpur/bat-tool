#!/bin/bash
echo "Files in current directory:"
for file in *; do
    if [[ -f "$file" ]]; then
        echo "$file"
    fi
done

