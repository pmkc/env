#!/bin/bash

# Shells
ln -ns env/common/profile ~/.profile
ln -ns env/bash/rc ~/.bashrc
ln -ns env/zsh/env ~/.zshenv

# Vim
ln -ns env/vim/rc ~/.vimrc
ln -ns env/vim ~/.vim
mkdir -p ~/.cache/vim

# Tmux
ln -ns env/tmux/conf ~/.tmux.conf

# Awesome WM
ln -ns env/awesome ~/.config/awesome

# misc
ln -nst .config ~/env/misc/config/*
