#!/bin/bash
# Script 3: Disk and Permission Auditor
# Author: Sneha Mary Sam (24BCE10690)
# Purpose: Loops through system directories to report size and permissions.

# Array of important system directories to audit
DIRS=("/etc" "/var/log" "/home" "/usr/bin" "/tmp")

echo "Directory Audit Report"
echo "------------------------------------------------"

# For loop to iterate through each directory in the array
for DIR in "${DIRS[@]}"; do
    # Check if the directory actually exists on the filesystem
    if [ -d "$DIR" ]; then
        # Use ls -ld and awk to extract permissions (field 1), owner (field 3), and group (field 4)
        PERMS=$(ls -ld "$DIR" | awk '{print $1, $3, $4}')
        # Use du -sh to get human-readable size, suppressing errors, and cut to get just the size
        SIZE=$(du -sh "$DIR" 2>/dev/null | cut -f1)
        echo "$DIR => Permissions/Owner: $PERMS | Size: $SIZE"
    else
        echo "$DIR does not exist on this system."
    fi
done

echo "------------------------------------------------"
echo "Python Configuration Directory Audit:"

# Check for Python's standard library/config directory
PYTHON_DIR="/usr/lib/python3"

# Verify if the Python directory exists and print its permissions
if [ -d "$PYTHON_DIR" ]; then
    PY_PERMS=$(ls -ld "$PYTHON_DIR" | awk '{print $1, $3, $4}')
    echo "[Found] $PYTHON_DIR exists."
    echo "Permissions/Owner: $PY_PERMS"
else
    echo "[Missing] Standard Python directory ($PYTHON_DIR) not found."
fi