#!/bin/bash
# Remove existing dot files

if [[ -f ~/.bash_profile ]]; then
    rm ~/.bash_profile
fi

if [[ -f ~/.bashrc ]]; then
    rm ~/.bashrc
fi

if [[ -f ~/.gitconfig ]]; then
    rm ~/.gitconfig
fi

if [[ -f ~/.npmrc ]]; then
    rm ~/.npmrc
fi

if [[ -f ~/.bash_aliases ]]; then
    rm ~/.bash_aliases
fi

# Dotfiles
ln -s $(pwd)/.bashrc ~/.bashrc
ln -s $(pwd)/.bash_profile ~/.bash_profile
ln -s $(pwd)/.bash_aliases ~/.bash_aliases
ln -s $(pwd)/.gitconfig ~/.gitconfig
