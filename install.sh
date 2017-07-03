#!/usr/bin/env bash

if [ -e "${HOME}/.dotfiles" ]; then
    echo "~> .dotfiles folder already found in ${HOME}. Updating..."
    git -C ~/.dotfiles pull
    exit
else
    echo "~> Installing .dotfiles folder in ${HOME}..."
    rm -Rf ~/.dotfiles
    git clone https://github.com/leogr/dotfiles ~/.dotfiles
fi


