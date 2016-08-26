#!/bin/bash
# git, vim, zsh, tmux for dev environment, dkms for virtualbox guest permissions, sni-qt for insync
sudo apt install git vim zsh tmux dkms sni-qt
cd ~
git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
cd ~
ln -s $HOME/dotfiles/.vimrc $HOME/.vimrc
ln -s $HOME/dotfiles/.tmux.conf $HOME/.tmux.conf
ln -s $HOME/dotfiles/.zshrc $HOME/.zshrc
ln -s $HOME/dotfiles/.gitconfig $HOME/.gitconfig
vim +PluginInstall +qall
cd ~
git clone https://github.com/tarjoilija/zgen.git .zgen
sudo chsh -s $(which zsh)
cd ~
git clone https://github.com/powerline/fonts.git
cd ~
cd fonts
./install.sh
cd ~
# sudo mount -t vboxsf FOLDERNAME /PATH/OF/FOLDER
sudo apt update
sudo apt upgrade
