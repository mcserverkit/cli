#!/bin/sh

echo "Installing..."

# https://stackoverflow.com/questions/394230/how-to-detect-the-os-from-a-bash-script

if [[ "$OSTYPE" == "linux-gnu"* ]]; then
echo "You're on Linux"
elif [[ "$OSTYPE" == "darwin"* ]]; then
echo "You're on macOS"
elif [[ "$OSTYPE" == "cygwin" || "$OSTYPE" == "msys" || "$OSTYPE" == "win32" ]]; then
echo "You're on Windows"
else
echo ""
fi

# https://askubuntu.com/questions/803596/cpu-architecture-scanning-using-bash

ARCH=$(uname -m)
if [[ "$ARCH" == x86_64* ]]; then
  echo "X64 Architecture"
elif [[ "$ARCH" == i*86 ]]; then
  echo "X32 Architecture"
elif  [[ "$ARCH" == arm* ]]; then
  echo "ARM Architecture"
fi