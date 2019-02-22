#!/usr/bin/env bash

set -xeuo pipefail

# Install or update
if [ -e "${HOME}/.dotfiles" ]; then
    echo "~> .dotfiles folder already found in ${HOME}. Updating..."
    git -C ~/.dotfiles pull
else
    echo "~> Installing .dotfiles folder in ${HOME}..."
    git clone https://github.com/leogr/dotfiles ~/.dotfiles
fi

# Stow packages
echo "~> Stow packages..."
bash stow.sh

# Install git-code
bash <(curl -fsSL https://leogr.github.io/git-code/install.sh)
