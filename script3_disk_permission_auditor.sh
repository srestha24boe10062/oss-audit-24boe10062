#!/bin/bash
# Script 3: Disk and Permission Auditor
# Description: Shows permissions and size of key directories

DIRS=("/etc" "/var/log" "/home" "/usr/bin" "/tmp")

echo "Directory Audit Report"
echo "----------------------"

for DIR in "${DIRS[@]}"; do
    if [ -d "$DIR" ]; then
        # Get permissions, owner, group
        PERMS=$(ls -ld $DIR | awk '{print $1, $3, $4}')
        
        # Get size
        SIZE=$(du -sh $DIR 2>/dev/null | cut -f1)
        
        echo "$DIR => Permissions: $PERMS | Size: $SIZE"
    else
        echo "$DIR does not exist"
    fi
done

echo ""
echo "Checking Linux config directory..."

# Example: check /boot (kernel related)
if [ -d "/boot" ]; then
    ls -ld /boot
else
    echo "/boot not found"
fi