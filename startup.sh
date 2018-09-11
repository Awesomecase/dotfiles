#!/bin/bash
# git, vim, zsh, tmux for dev environment, dkms for virtualbox guest permissions, sni-qt for insync
sudo apt install fish git libevent-dev ncurses-dev zsh tmux dkms sni-qt g++ python-pip python3-pip python python3 cmake build-essential python-dev python3-dev xclip sshfs shellcheck checkinstall virtualbox-guest-utils nfs-common cifs-utils automake autotools-dev libtool default-jdk 

#symlinking files

ln -fs "$HOME/dotfiles/.vimrc" "$HOME/.vimrc"
ln -fs "$HOME/dotfiles/.tmux.conf" "$HOME/.tmux.conf"
ln -fs "$HOME/dotfiles/.gitconfig" "$HOME/.gitconfig"
ln -fs "$HOME/dotfiles/.spacemacs" "$HOME/.spacemacs"
#ln -s "$HOME/dotfiles/.zshrc" "$HOME/.zshrc"
#ln -s "$HOME/dotfiles/.zshenv" "$HOME/.zshenv"
ln -fs "$HOME/dotfiles/.globalrc" "$HOME/.globalrc"
ln -fs "$HOME/dotfiles/config.fish" "$HOME/.config/fish/config.fish"
cd ~ || exit

#zsh
#git clone https://github.com/tarjoilija/zgen.git .zgen
#sudo chsh -s "$(which zsh)"
#cd || exit

#fish
curl -Lo ~/.config/fish/functions/fisher.fish --create-dirs https://git.io/fisher #fisher
sudo csh -s "$(which fish)"
fisher pyenv gretel/fasd
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

# clone
git clone https://github.com/powerline/fonts.git --depth=1
# install
cd fonts || exit
./install.sh
# clean-up a bit
cd || exit
rm -rf fonts

#installing python
curl -L https://raw.githubusercontent.com/pyenv/pyenv-installer/master/bin/pyenv-installer | bash
#pip install pytest pytest-cov pytest-sugar pytest-mock requests pdbpp ipython pylint pipreqs
#package dependencies
#pip install requests_mock requests

#update and upgrade

sudo apt update
sudo apt upgrade
