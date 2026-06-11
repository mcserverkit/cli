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
  exit 1
fi

# https://askubuntu.com/questions/803596/cpu-architecture-scanning-using-bash

ARCH=$(uname -m)
if [[ "$ARCH" == x86_64* ]]; then
  arch="x86_64"
elif [[ "$ARCH" == i*86 ]]; then
  echo "32-bit not supported"
  exit 1
elif  [[ "$ARCH" == arm* ]]; then
  arch="arm64"
fi