#!/bin/bash
# Remove existing dot files

if [ -f ~/.bash_profile ]; then
    echo "rm ~/.bash_profile"
    rm ~/.bash_profile
fi

if [ -f ~/.bashrc ]; then
    echo "rm ~/.bashrc"
    rm ~/.bashrc
fi

if [ -f ~/.gitconfig ]; then
    echo "rm ~/.gitconfig"
    rm ~/.gitconfig
fi

if [ -f ~/.npmrc ]; then
    echo "rm ~/.npmrc"
    rm ~/.npmrc
fi

if [ -f ~/.bash_aliases ]; then
    echo "rm ~/.bash_aliases"
    rm ~/.bash_aliases
fi

# Dotfiles
ln -s $(pwd)/.bashrc ~/.bashrc
ln -s $(pwd)/.bash_profile ~/.bash_profile
ln -s $(pwd)/.bash_aliases ~/.bash_aliases
ln -s $(pwd)/.gitconfig ~/.gitconfig
