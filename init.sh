#!/bin/bash

# Cleanup
rm -f ~/.profile ~/.bashrc ~/.zshenv ~/.zshrc ~/.tmux.conf ~/.vimrc ~/.vim ~/.config/awesome ~/.config/user-dirs.dirs
mkdir -p ~/.cache ~/.config ~/bin

# Shells
ln -nsf env/common/profile ~/.profile
ln -nsf env/zsh/env ~/.zshenv
touch ~/.bashrc
ln -nsf env/zsh/rc ~/.zshrc

# Vim
mkdir -p ~/.cache/vim
ln -nsf ~/env/vim/rc.vim ~/.vimrc
ln -nsf ~/env/vim ~/.vim

# Tmux
ln -nsf ~/env/tmux/conf ~/.tmux.conf

# Awesome WM
ln -nsf ~/env/awesome ~/.config/awesome

mkdir -p ~/.local/share/fonts
cp -r ~/env/fonts/* ~/.local/share/fonts
fc-cache ~/.local/share/fonts

# misc
echo ~/env/config/* | xargs -n1 ln -nsft ~/.config
