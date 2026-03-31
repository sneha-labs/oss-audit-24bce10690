#!/bin/bash
# Script 2: FOSS Package Inspector
# Author: Sneha Mary Sam (24BCE10690)
# Purpose: Checks if Python is installed and prints its FOSS philosophy.

# We use python3 as the package name for modern Linux environments
PACKAGE="python3" 

echo "Checking FOSS Package: $PACKAGE"
echo "--------------------------------------"

# Check if package is installed. 
# Note: dpkg is used for Debian/Ubuntu based systems. 
# If your lab uses RedHat/Fedora, replace 'dpkg -l' with 'rpm -q' and 'dpkg -s' with 'rpm -qi'
if dpkg -l "$PACKAGE" &>/dev/null; then
    echo "[Status] $PACKAGE is installed on this system."
    # Extract version and description details, piping into grep to filter output
    dpkg -s "$PACKAGE" | grep -E 'Version|Description'
else
    echo "[Warning] $PACKAGE is NOT installed on this system."
fi

echo "--------------------------------------"
echo "Philosophy Note:"

# Case statement to print a short description based on the package name
case $PACKAGE in
    python3) echo "Python: Empowering the world, from automation to AI, with readable, open code." ;;
    httpd)   echo "Apache: The web server that built the open internet." ;;
    mysql)   echo "MySQL: Open source at the heart of millions of apps." ;;
    firefox) echo "Firefox: A nonprofit browser fighting for a free and open web." ;;
    *)       echo "A vital component of the open-source ecosystem." ;;
esac