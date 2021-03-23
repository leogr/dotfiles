#!/usr/bin/env bash

set -xeuo pipefail

# Install or update
if [ -e "${HOME}/.dotfiles" ]; then
    echo "~> .dotfiles folder already found in ${HOME}. Updating..."
    git -C $HOME/.dotfiles pull

    git -C $HOME/.dotfiles/zsh/.config/zsh/plugins/zsh-autosuggestions
else
    echo "~> Installing .dotfiles folder in ${HOME}..."
    git clone https://github.com/leogr/dotfiles $HOME/.dotfiles
    
    # Install tools
    git clone https://github.com/zsh-users/zsh-autosuggestions \
        ${HOME}/.dotfiles/zsh/.config/zsh/plugins/zsh-autosuggestions
fi


# Stow packages
echo "~> Stow packages..."
pushd $HOME/.dotfiles
bash stow.sh
popd

# Install (or update) git-code
bash <(curl -fsSL https://leogr.github.io/git-code/install.sh)
