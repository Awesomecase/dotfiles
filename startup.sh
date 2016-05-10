#!/bin/bash

sudo apt install git vim zsh tmux 
cd ~
git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
cd ~
git clone https://github.com/Awesomecase/dotfiles.git
ln -s $HOME/dotfiles/.vimrc $HOME/.vimrc
ln -s $HOME/dotfiles/.tmux.conf $HOME/.tmux.conf
ln -s $HOME/dotfiles/.zshrc $HOME/.zshrc
vim +PluginInstall +qall
cd ~
git clone https://github.com/tarjoilija/zgen.git .zgen
sudo chsh -s $(which zsh)
zsh
source ~/.zshrc
cd ~
git clone https://github.com/powerline/fonts.git
cd ~
cd fonts
./install.sh
git config --global user.name "Cole Swingholm"
git config --global user.name "Cole Swingholm"

