#!/bin/env zsh
source "${HOME}/.zgen/zgen.zsh"
# if the init scipt doesn't exist
if ! zgen saved; then
  echo "Creating a zgen save"

# plugins
  zgen oh-my-zsh plugins/colored-man-pages
  zgen oh-my-zsh plugins/pip
  zgen oh-my-zsh plugins/github
  zgen oh-my-zsh plugins/python
  zgen oh-my-zsh plugins/command-not-found


  zgen load jreese/zsh-titles
  zgen load zsh-users/zsh-syntax-highlighting
  zgen load djui/alias-tips
  zgen load chrissicool/zsh-256color
  zgen load unixorn/autoupdate-zgen
  
  zgen prezto
  zgen prezto prompt theme 'agnoster'

  zgen save
fi
###### Startup shell ######
export CDPATH='~/Documents'
export EDITOR='vim'
# Vim stuff
export PAGER='less'
bindkey -v 
bindkey '^R' history-incremental-search-backward
export KEYTIMEOUT=1
# Aliases
alias cc++='g++ -time -Wall -Wextra -pedantic-errors -std=c++11 -Wconversion'
