#!/bin/bash
# Script 4: Log File Analyzer
# Usage: ./script4.sh /path/to/logfile keyword

LOGFILE=$1
KEYWORD=${2:-"error"}   # default keyword = error
COUNT=0

# --- Check file exists ---
if [ ! -f "$LOGFILE" ]; then
    echo "Error: File '$LOGFILE' not found or is not a regular file."
    echo "Usage: ./script4.sh /path/to/logfile [keyword]"
    exit 1
fi

# --- Check if file is empty ---
if [ ! -s "$LOGFILE" ]; then
    echo "Log file is empty. Please provide a valid file."
    exit 1
fi

# --- Count keyword occurrences ---
while IFS= read -r LINE; do
    if echo "$LINE" | grep -iq "$KEYWORD"; then
        COUNT=$((COUNT + 1))
    fi
done < "$LOGFILE"

echo "Keyword '$KEYWORD' found $COUNT times in $LOGFILE"

echo ""
echo "Last 5 matching lines:"
grep -i "$KEYWORD" "$LOGFILE" | tail -n 5