#!/bin/bash
# Script 4: Log File Analyzer
# Author: Sneha Mary Sam (24BCE10690)
# Purpose: Reads a log file, counts keyword occurrences, and displays recent matches.
# Usage: ./script4.sh /var/log/syslog "error" (or /var/log/messages depending on your distro)

# Assign command-line arguments to variables
LOGFILE=$1
# Default the keyword to 'error' if the user doesn't provide a second argument
KEYWORD=${2:-"error"} 
COUNT=0

# Check if the file exists and is a regular file
if [ ! -f "$LOGFILE" ]; then
    echo "Error: File '$LOGFILE' not found or permission denied (try running with sudo)."
    exit 1
fi

# Do-while style retry if the file is completely empty (size 0)
while [ ! -s "$LOGFILE" ]; do
    echo "Warning: '$LOGFILE' is currently empty."
    read -p "Press Enter to check again or type 'q' to quit: " USER_INPUT
    if [ "$USER_INPUT" == "q" ]; then
        echo "Exiting analyzer."
        exit 1
    fi
done

# Read the log file line by line
while IFS= read -r LINE; do
    # Pipe the line to grep, ignoring case (-i), quietly (-q) searching for the keyword
    if echo "$LINE" | grep -iq "$KEYWORD"; then
        COUNT=$((COUNT + 1)) # Increment counter if a match is found
    fi
done < "$LOGFILE"

echo "------------------------------------------------------"
echo "Keyword '$KEYWORD' found $COUNT times in $LOGFILE"
echo "------------------------------------------------------"

# Print the last 5 matching lines using tail and grep for context
if [ $COUNT -gt 0 ]; then
    echo "Here are the last 5 occurrences for context:"
    grep -i "$KEYWORD" "$LOGFILE" | tail -n 5
fi