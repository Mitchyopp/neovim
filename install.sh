#!/usr/bin/env bash
set -euo pipefall

if [ -d "$HOME/.config/nvim" ]; then
	echo "Old config found"
	echo "Backing up old config"
	mv "$HOME/.config/nvim" "$HOME/.config/nvim.bak.$(date +%s)"
	echo "New config is at $HOME/.config/nvim.bak.date..."
fi

echo "-------------------------------"
echo "Cloning new config..."
git clone https://github.com/Mitchyopp/neovim.git "$HOME/.config/nvim"
echo "Done! Thankyou for trying out my config :D"
