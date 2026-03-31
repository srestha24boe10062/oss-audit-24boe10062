#!/bin/bash
# Script 2: FOSS Package Inspector
# Description: Checks if a package is installed and shows details

PACKAGE=$1   # Package name passed as argument

if [ -z "$PACKAGE" ]; then
    echo "Usage: ./script2.sh <package_name>"
    exit 1
fi

# --- Check installation ---
if dpkg -l | grep -qw $PACKAGE; then
    echo "$PACKAGE is installed."
    
    # Show version, summary, etc.
    dpkg -s $PACKAGE | grep -E 'Version|Maintainer|Description'
else
    echo "$PACKAGE is NOT installed."
fi

# --- Case Statement for philosophy ---
case $PACKAGE in
    apache2) echo "Apache: the web server that built the open internet" ;;
    mysql-server) echo "MySQL: open source database powering applications" ;;
    vlc) echo "VLC: plays anything, built by students and community" ;;
    firefox) echo "Firefox: browser fighting for an open web" ;;
    *) echo "FOSS: software built on openness and collaboration" ;;
esac