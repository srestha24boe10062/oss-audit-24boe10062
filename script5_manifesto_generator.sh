#!/bin/bash
# Script 5: Open Source Manifesto Generator
# Description: Creates a personalized OSS philosophy statement

echo "Answer three questions to generate your manifesto."
echo ""

read -p "1. Name one open-source tool you use every day: " TOOL
read -p "2. In one word, what does 'freedom' mean to you? " FREEDOM
read -p "3. Name one thing you would build and share freely: " BUILD

DATE=$(date '+%d %B %Y')
OUTPUT="manifesto_$(whoami).txt"

# --- Generate manifesto ---
echo "On $DATE, I reflect on the power of open source." > $OUTPUT
echo "Using tools like $TOOL, I understand that software freedom means $FREEDOM." >> $OUTPUT
echo "I believe in building systems like $BUILD and sharing them with the world." >> $OUTPUT
echo "Open source is not just code—it is a philosophy of collaboration and trust." >> $OUTPUT

echo ""
echo "Manifesto saved to $OUTPUT"
echo ""
cat $OUTPUT