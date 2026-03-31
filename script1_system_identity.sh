#!/bin/bash
# Script 1: System Identity Report
# Author: Your Name
# Description: Displays basic system information

# --- Variables ---
STUDENT_NAME="Your Name"
SOFTWARE_CHOICE="Linux Kernel"

# --- System Info ---
KERNEL=$(uname -r)                     # Kernel version
USER_NAME=$(whoami)                   # Current user
HOME_DIR=$HOME                        # Home directory
UPTIME=$(uptime -p)                   # System uptime
DATE=$(date)                          # Current date and time
DISTRO=$(cat /etc/os-release | grep PRETTY_NAME | cut -d= -f2 | tr -d '"')

# --- Display Output ---
echo "========================================"
echo " Open Source Audit — $STUDENT_NAME"
echo "========================================"
echo "Software : $SOFTWARE_CHOICE"
echo "Distro   : $DISTRO"
echo "Kernel   : $KERNEL"
echo "User     : $USER_NAME"
echo "Home Dir : $HOME_DIR"
echo "Uptime   : $UPTIME"
echo "Date     : $DATE"
echo ""
echo "License  : Linux is licensed under GPL v2 (Free Software License)"
echo "========================================"