#!/bin/bash
# Script 1: System Identity Report
# Author: Sneha Mary Sam (24BCE10690) | Course: Open Source Software
# Purpose: Displays a welcome screen with system and user information.

# --- Variables ---
STUDENT_NAME="Sneha Mary Sam (24BCE10690)" 
SOFTWARE_CHOICE="Python" 

# --- System info ---
# Get the kernel release version
KERNEL=$(uname -r)
# Get the currently logged-in user
USER_NAME=$(whoami)
# Get the human-readable system uptime
UPTIME=$(uptime -p)
# Extract the distribution name from the os-release file
DISTRO=$(grep '^PRETTY_NAME=' /etc/os-release | cut -d '=' -f 2 | tr -d '"')
# Get the current date and time
CURRENT_DATE=$(date '+%A, %d %B %Y %T')

# --- Display ---
echo "================================================"
echo " Open Source Audit — $STUDENT_NAME"
echo "================================================"
echo "Chosen Software : $SOFTWARE_CHOICE"
echo "------------------------------------------------"
echo "OS Distribution : $DISTRO"
echo "Kernel          : $KERNEL"
echo "User            : $USER_NAME"
echo "Home Directory  : $HOME"
echo "Uptime          : $UPTIME"
echo "Current Date    : $CURRENT_DATE"
echo "------------------------------------------------"
# License message explaining the OS license
echo "License Note: This Linux operating system is primarily"
echo "distributed under the GNU General Public License (GPL v2)."
echo "================================================"