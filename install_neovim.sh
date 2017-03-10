#!/bin/bash
# Remove existing dot files

if [[ -d ~/.config/nvim ]]; then
    rm -rf ~/.config/nvim
fi

if [[ -d ~/.config/nvim/init.vim ]]; then
    rm -rf ~/.config/nvim/init.vim
fi
if [[ -d ~/.config/nvim/plugged ]]; then
    rm -rf ~/.config/nvim/plugged
fi

mkdir -p ~/.config/nvim/
ln -s $(pwd)/init.vim ~/.config/nvim/init.vim
