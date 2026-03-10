#!/bin/bash
# Opens a generated Sysdig presentation in the default browser
# Usage: ./open-presentation.sh path/to/presentation.html

if [ -z "$1" ]; then
  echo "Usage: $0 <presentation.html>"
  exit 1
fi

if [ ! -f "$1" ]; then
  echo "Error: File '$1' not found"
  exit 1
fi

open "$1"
echo "Opened $1 in default browser"
echo "Press 'S' for speaker notes, 'F' for fullscreen, 'Esc' for overview"
