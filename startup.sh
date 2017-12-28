#!/bin/bash
# git, vim, zsh, tmux for dev environment, dkms for virtualbox guest permissions, sni-qt for insync
sudo apt install git vim libevent-dev ncurses-dev zsh tmux dkms sni-qt g++ python-pip python3-pip python python3 cmake build-essential python-dev python3-dev sshpass xclip sshfs shellcheck checkinstall virtualbox-guest-utils nfs-common cifs-utils automake autotools-dev libtool default-jdk lastpass-cli ruby ruby-dev curl
cd ~ || exit
sudo usermod -G vboxsf -a "$USER"

#symlinking files

rm -f "$HOME/gitconfig" 
ln -s "$HOME/dotfiles/.vimrc" "$HOME/.vimrc"
ln -s "$HOME/dotfiles/.tmux.conf" "$HOME/.tmux.conf"
ln -s "$HOME/dotfiles/.zshrc" "$HOME/.zshrc"
ln -s "$HOME/dotfiles/.gitconfig" "$HOME/.gitconfig"
ln -s "$HOME/dotfiles/.spacemacs" "$HOME/.spacemacs"
ln -s "$HOME/dotfiles/.zshenv" "$HOME/.zshenv"
cd ~ || exit

#zsh
git clone https://github.com/tarjoilija/zgen.git .zgen
sudo chsh -s "$(which zsh)"
cd || exit


# sudo mount -t vboxsf FOLDERNAME /PATH/OF/FOLDER

#VIM

mkdir ~/.vim/backups/ ~/.vim/swaps/ ~/.vim/undo/
sudo chmod 750 ~/.vim/undo/ ~/.vim/backups/ ~/.vim/swaps/
sudo chown "$USER" ~/.vim/
curl -fLo ~/.vim/autoload/plug.vim --create-dirs \
    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
cd || exit

#fasd
git clone https://github.com/clvv/fasd
cd fasd || exit
sudo make install
cd || exit
#fonts

git clone https://github.com/longld/peda.git ~/peda
# clone
git clone https://github.com/powerline/fonts.git --depth=1
# install
cd fonts || exit
./install.sh
# clean-up a bit
cd || exit
rm -rf fonts

#GDB

if [ -e /home/cole/.gdbinit ]
then
  echo "source ~/peda/peda.py" >> ~/.gdbinit
else
  echo "source ~/peda/peda.py" > ~/.gdbinit
fi
echo 'DONE! debug your program with gdb and enjoy'
cd || exit

#installing gems

sudo gem install lastpass-ssh bropages

#installing python
curl -L https://raw.githubusercontent.com/pyenv/pyenv-installer/master/bin/pyenv-installer | bash
#pip install pytest pytest-cov pytest-sugar pytest-mock requests pdbpp ipython pylint pipreqs
#package dependencies
#pip install requests_mock requests

#update and upgrade

sudo apt update
sudo apt upgrade
