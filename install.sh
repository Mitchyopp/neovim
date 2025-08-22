#!/usr/bin/env bash
set -euo pipefail

if ! command -v git >/dev/null 2>&1; then
	echo "Error: git is not installed, please install git and try again." >&2
	exit 1
fi

NVIM_DIR="$HOME/.config/nvim"
TS="$(date +%s)"

if [ -d "$NVIM_DIR" ]; then
	echo "Old config found at $NVIM_DIR"
	echo "Backing up old config"
	mv "$NVIM_DIR" "$NVIM_DIR.bak.$TS"
	echo "Backup is located at: $NVIM_DIR.bak.$TS"
fi

echo "-------------------------------"
echo "Cloning new config into $NVIM_DIR ..."
git clone --depth 1 https://github.com/Mitchyopp/neovim.git "$NVIM_DIR"
echo "Done! Thankyou for trying out my config :D"
