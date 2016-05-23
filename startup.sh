#!/bin/bash
# git, vim, zsh, tmux for dev environ, dkms for virtualbox guest permissions, sni-qt for insync
sudo apt install git vim zsh tmux dkms sni-qt
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
cd ~
git clone https://github.com/powerline/fonts.git
cd ~
cd fonts
./install.sh
cd ~
git config --global user.name "Cole Swingholm"
git config --global user.email "cole.swingholm@gmail.com"

