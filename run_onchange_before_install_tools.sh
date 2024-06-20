#!/bin/bash
# install tools
brew bundle --no-lock --file=/dev/stdin <<EOF
tap "homebrew/cask-fonts"
cask "font-meslo-lg-nerd-font"
cask "alacritty"
brew "eza"
brew "lazygit"
brew "ripgrep"
brew "fd"
brew "fzf"
brew "neovim"
brew "neofetch"
brew "zsh-syntax-highlighting"
brew "zoxide"
brew "tmux"
EOF

#install powerlevel10k
mv ~/.config/zsh/powerlevel10k{,.bak}
git clone --depth=1 https://github.com/romkatv/powerlevel10k.git ~/.config/zsh/powerlevel10k

#make alacritty look better
defaults write org.alacritty AppleFontSmoothing -int 0

# install zinit (zsh plugin manager)
mv ~/.config/zinit{,.bak}
git clone https://github.com/zdharma-continuum/zinit.git ~/.config/zinit/zinit.git

# Setup LazyVim
# required
mv ~/.config/nvim{,.bak}
# optional but recommended
mv ~/.local/share/nvim{,.bak}
mv ~/.local/state/nvim{,.bak}
mv ~/.cache/nvim{,.bak}

git clone https://github.com/LazyVim/starter ~/.config/nvim
rm -rf ~/.config/nvim/.git

# Setup TPM (Tmux plugin manager)
mv ~/.config/tmux/tpm{,.bak}
git clone https://github.com/tmux-plugins/tpm ~/.config/tmux/tpm

mv ~/.tmuxifier{,.bak}
git clone https://github.com/jimeh/tmuxifier.git ~/.tmuxifier
