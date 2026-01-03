#!/bin/bash

DIR="$HOME/Screenshots"
mkdir -p "$DIR"

FILENAME="screenshot_$(date +%Y%m%d_%H%M%S)_$RANDOM.png"
FILEPATH="$DIR/$FILENAME"

grim -g "$(slurp)" "$FILEPATH" && swappy -f "$FILEPATH" && \
notify-send "📸 Screenshot saved to $FILEPATH"
