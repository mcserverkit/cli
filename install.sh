#!/bin/sh

echo "Installing..."

# https://stackoverflow.com/questions/394230/how-to-detect-the-os-from-a-bash-script

if [[ "$OSTYPE" == "linux-gnu"* ]]; then
echo "You're on Linux"
elif [[ "$OSTYPE" == "darwin"* ]]; then
echo "You're on macOS"
else
echo ""
fi

