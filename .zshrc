#!/bin/env zsh
source "${HOME}/.zgen/zgen.zsh"
# if the init scipt doesn't exist
if ! zgen saved; then
  echo "Creating a zgen save"

# plugins
  zgen oh-my-zsh plugins/colored-man-pages
  zgen load jreese/zsh-titles

  zgen load djui/alias-tips
  zgen load chrissicool/zsh-256color
  zgen load unixorn/autoupdate-zgen
  zgen load desyncr/auto-ls
  zgen load Tarrasch/zsh-command-not-found
  zgen load zdharma/fast-syntax-highlighting
  zgen load zgen load supercrabtree/k
  
  zgen prezto
  zgen prezto utility
  zgen prezto git
  zgen prezto completion
  zgen prezto python

  zgen save
fi
###### Startup shell ######
export EDITOR='vim'
# Vim stuff
export PAGER='less'
bindkey -v 
bindkey '^R' history-incremental-search-backward
export KEYTIMEOUT=1
#prompt
autoload -Uz promptinit
promptinit
prompt giddie
# Aliases
# alias cc++='g++ -time -Wall -pedantic -Wextra -pedantic-errors -std=c++11 -Wconversion'
export PATH="/home/cole/anaconda3/bin:$PATH"
