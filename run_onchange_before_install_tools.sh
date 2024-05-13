#!/bin/bash

brew bundle --no-lock --file=/dev/stdin <<EOF
cask "alacritty"
brew "eza"
brew "lazygit"
brew "ripgrep"
brew "fd"
brew "fzf"
brew "neovim"

EOF
rm -rf  ~/.config/zsh/powerlevel10k
git clone --depth=1 https://github.com/romkatv/powerlevel10k.git ~/.config/zsh/powerlevel10k 
