#!/bin/env zsh
source "${HOME}/.zgen/zgen.zsh"
# if the init scipt doesn't exist
if ! zgen saved; then
  echo "Creating a zgen save"

# plugins
  zgen oh-my-zsh plugins/sudo
  zgen oh-my-zsh plugins/git
  zgen oh-my-zsh plugins/sudo
  zgen oh-my-zsh plugins/colored-man-pages
  zgen oh-my-zsh plugins/pip
  zgen oh-my-zsh plugins/github
  zgen oh-my-zsh plugins/rsync
  zgen oh-my-zsh plugins/python
  zgen oh-my-zsh plugins/command-not-found
  zgen load jreese/zsh-titles
  zgen load david-treblig/locate-sublime-projects-cli
  zgen load zsh-users/zsh-syntax-highlighting
  zgen load zsh-users/zsh-completions src
  zgen load zsh-users/zsh-history-substring-search
  zgen load djui/alias-tips
  zgen load chrissicool/zsh-256color
  # prezto and module
  zgen prezto
  zgen prezto prompt theme 'agnoster'
  zgen save
fi
alias cc++='g++ -Wall -Wextra -pendantic -std=c++11 -Wconversion'
