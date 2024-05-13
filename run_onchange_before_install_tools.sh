#!/bin/bash

brew bundle --no-lock --file=/dev/stdin <<EOF
brew "eza"
brew "neovim"
EOF
rm -rf  ~/.config/zsh/powerlevel10k
git clone --depth=1 https://github.com/romkatv/powerlevel10k.git ~/.config/zsh/powerlevel10k 
