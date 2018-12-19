#!/bin/bash

# Cleanup
rm -f ~/.profile ~/.bashrc ~/.zshenv ~/.zshrc ~/.tmux.conf ~/.vimrc ~/.vim ~/.config/awesome ~/.config/user-dirs.dirs
mkdir -p ~/.cache ~/.config

# Shells
ln -ns env/common/profile ~/.profile
ln -ns env/bash/rc ~/.bashrc
ln -ns env/zsh/env ~/.zshenv

# Vim
mkdir -p ~/.cache/vim
ln -ns ~/env/vim/rc.vim ~/.vimrc
ln -ns ~/env/vim ~/.vim

# Tmux
ln -ns env/tmux/conf ~/.tmux.conf

# Awesome WM
ln -ns env/awesome ~/.config/awesome

# misc
ln -nst .config ~/env/misc/config/*
