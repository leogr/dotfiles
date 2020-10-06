#!/usr/bin/env bash

stow=$(command -v stow)

$stow fonts
fc-cache -fv ~/.local/share/fonts/

$stow chrome
$stow gnupg
$stow user-dirs
$stow git
$stow kitty
$stow zsh
$stow vscode
$stow tmux