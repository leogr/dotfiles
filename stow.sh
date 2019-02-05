#!/usr/bin/env bash

stow=$(command -v stow)

$stow fonts
fc-cache -fv ~/.local/share/fonts/

$stow git
$stow kitty
$stow zsh