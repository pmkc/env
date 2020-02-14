#!/bin/bash

# Cleanup
rm -f ~/.profile ~/.bashrc ~/.zshenv ~/.zshrc ~/.tmux.conf ~/.vimrc ~/.vim ~/.config/awesome ~/.config/user-dirs.dirs
mkdir -p ~/.cache ~/.config

# Shells
ln -nsf env/common/profile ~/.profile
ln -nsf env/bash/rc ~/.bashrc
ln -nsf env/zsh/env ~/.zshenv

# Vim
mkdir -p ~/.cache/vim
ln -nsf ~/env/vim/rc.vim ~/.vimrc
ln -nsf ~/env/vim ~/.vim

# Tmux
ln -nsf ~/env/tmux/conf ~/.tmux.conf

# Awesome WM
ln -nsf ~/env/awesome ~/.config/awesome

# misc
echo ~/env/config/* | xargs -n1 ln -nsft .config
