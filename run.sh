#!/bin/bash

# Specify the file to which random text will be added
FILE="index.md"

# Infinite loop to add random text and commit
while true; do
    # Generate a random line of text
    RANDOM_TEXT=$(shuf -n 1 /usr/share/dict/words)

    # Append the random text to the file
    echo "$RANDOM_TEXT" >> "$FILE"

    # Commit the changes
    git add "$FILE"
    git commit -m "Add random text: $RANDOM_TEXT"
    git push

    # Wait for 5 seconds
    sleep 5
done