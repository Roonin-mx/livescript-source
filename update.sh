#!/bin/sh
# Update LiveScript source file
# usage:
#   ./update.sh [version]
# version should be tags in repo https://github.com/gkz/LiveScript.git

# exit whenever any command fails
set -e

version="$1"

# if no version passed, use the latest version
if [ -z "$version" ]; then
  echo "Version required!"
  echo "Available versions:"
  curl -sSL https://api.github.com/repos/gkz/LiveScript/git/refs/tags | grep '"ref":' | cut -d'"' -f4 | cut -d'/' -f3 | grep -v '^0.' | sort
  exit 1
fi

curl -SsL https://raw.githubusercontent.com/gkz/LiveScript/$version/browser/livescript.js --output lib/livescript/livescript.js
