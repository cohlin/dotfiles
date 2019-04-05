#!/bin/bash
# Remove existing dot files

if [ -f /home/chroh1/.bash_profile ]; then
    echo "rm ~/.bash_profile"
    rm /home/chroh1/.bash_profile
fi

if [ -f /home/chroh1/.bashrc ]; then
    echo "rm ~/.bashrc"
    rm /home/chroh1/.bashrc
fi

if [ -f /home/chroh1/.gitconfig ]; then
    echo "rm ~/.gitconfig"
    rm /home/chroh1/.gitconfig
fi

if [ -f /home/chroh1/.npmrc ]; then
    echo "rm ~/.npmrc"
    rm /home/chroh1/.npmrc
fi

if [ -f /home/chroh1/.bash_aliases ]; then
    echo "rm ~/.bash_aliases"
    rm /home/chroh1/.bash_aliases
fi

# Dotfiles
ln -s $(pwd)/.bashrc /home/chroh1/.bashrc
ln -s $(pwd)/.bash_profile /home/chroh1/.bash_profile
ln -s $(pwd)/.bash_aliases /home/chroh1/.bash_aliases
ln -s $(pwd)/.gitconfig /home/chroh1/.gitconfig
