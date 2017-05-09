#!/bin/bash
# git, vim, zsh, tmux for dev environment, dkms for virtualbox guest permissions, sni-qt for insync
sudo apt install git vim libevent-dev ncurses-dev zsh tmux dkms sni-qt g++ python-pip python3-pip python python3 cmake build-essential python-dev python3-dev sshpass xclip sshfs shellcheck checkinstall exuberant-ctags flake8 virtualbox-guest-utils nfs-common cifs-utils
cd ~ || exit
git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
cd ~ || exit
sudo usermod -G vboxsf -a "$USER"
ln -s "$HOME/dotfiles/.vimrc" "$HOME/.vimrc"
ln -s "$HOME/dotfiles/.tmux.conf" "$HOME/.tmux.conf"
ln -s "$HOME/dotfiles/.zshrc" "$HOME/.zshrc"
ln -s "$HOME/dotfiles/.gitconfig" "$HOME/.gitconfig"
cd ~ || exit
rm -f "$HOME/gitconfig" 
ln -s "$HOME/dotfiles/.gitconfig" "$HOME/.gitconfig"
ln -s "$HOME/dotfiles/.zshenv" "$HOME/.zshenv"
cd ~ || exit
git clone https://github.com/tarjoilija/zgen.git .zgen
sudo chsh -s "$(which zsh)"
cd ~ || exit
git clone https://github.com/powerline/fonts.git
cd ~ || exit
cd fonts || exit
./install.sh
cd ~ || exit
rm -rf ~/fonts/
# sudo mount -t vboxsf FOLDERNAME /PATH/OF/FOLDER
mkdir ~/.vim/backups/ ~/.vim/swaps/ ~/.vim/undo/
sudo chmod 750 ~/.vim/undo/ ~/.vim/backups/ ~/.vim/swaps/
sudo chown "$USER" ~/.vim/
cd || exit
git clone https://github.com/longld/peda.git ~/peda
if [ -e /home/cole/.gdbinit ]
then
  echo "source ~/peda/peda.py" >> ~/.gdbinit
else
  echo "source ~/peda/peda.py" > ~/.gdbinit
fi
echo 'DONE! debug your program with gdb and enjoy'
sudo apt update
sudo apt upgrade
