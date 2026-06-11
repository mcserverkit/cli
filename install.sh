#!/bin/bash

echo "Installing..."

# https://stackoverflow.com/questions/394230/how-to-detect-the-os-from-a-bash-script

if [[ "$OSTYPE" == "linux-gnu"* ]]; then
os="linux"
elif [[ "$OSTYPE" == "darwin"* ]]; then
os="macos"
elif [[ "$OSTYPE" == "cygwin" || "$OSTYPE" == "msys" || "$OSTYPE" == "win32" ]]; then
os="windows"
else
echo "$OSTYPE not supported"
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