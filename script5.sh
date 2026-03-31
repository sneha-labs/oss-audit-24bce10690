#!/bin/bash
# Script 5: Open Source Manifesto Generator
# Author: Sneha Mary Sam (24BCE10690)
# Purpose: Interactively generates a personalized open source philosophy statement.

echo "======================================"
echo " Open Source Manifesto Generator"
echo "======================================"
echo "Answer three questions to generate your manifesto."
echo ""

# Use read -p to prompt the user and store their answers in variables
read -p "1. Name one open-source tool you use every day: " TOOL
read -p "2. In one word, what does 'freedom' mean to you? " FREEDOM
read -p "3. Name one thing you would build and share freely: " BUILD

# Get the current date formatted nicely
DATE=$(date '+%d %B %Y')
# Set the output filename dynamically based on the current user
OUTPUT="manifesto_$(whoami).txt"

# --- Concept Demonstration: Aliases ---
# Aliases cannot normally be used inside scripts without shopt -s expand_aliases.
# Here is a comment demonstrating how one would look:
# alias success_msg="echo 'Manifesto successfully generated!'"

echo "--------------------------------------"
echo "Composing your manifesto..."
sleep 1 # Adds a 1-second pause for effect

# Write the answers into a structured paragraph and save it to the text file
# Using > to overwrite/create the file, and >> to append to it
echo "THE OPEN SOURCE MANIFESTO" > "$OUTPUT"
echo "Author: Sneha Mary Sam (24BCE10690)" >> "$OUTPUT"
echo "Date: $DATE" >> "$OUTPUT"
echo "--------------------------------------" >> "$OUTPUT"
echo "I believe that software should be a shared resource for humanity." >> "$OUTPUT"
echo "Every day, I rely on open-source foundations like $TOOL. It serves as a reminder" >> "$OUTPUT"
echo "that the best and most secure technology is built transparently." >> "$OUTPUT"
echo "To me, the essence of open source is $FREEDOM. It represents the right to" >> "$OUTPUT"
echo "inspect, learn, and adapt the digital tools that govern our lives." >> "$OUTPUT"
echo "If given the opportunity, I would build $BUILD and release it under a" >> "$OUTPUT"
echo "permissive license so others can stand on my shoulders, just as I have" >> "$OUTPUT"
echo "stood on the shoulders of the developers who came before me." >> "$OUTPUT"

echo "Manifesto saved to $OUTPUT"
echo "--------------------------------------"

# Display the final generated text file to the terminal
cat "$OUTPUT"