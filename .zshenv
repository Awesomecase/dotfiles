export PYENV_ROOT="$HOME/.pyenv"
export PATH="$PYENV_ROOT/bin:$PATH:/home/cole/.local/bin/:/home/cole/idea-IU-173.4301.25/"
export GTAGSLABEL=pygments
if command -v pyenv 1>/dev/null 2>&1; then
  eval "$(pyenv init -)"
fi
