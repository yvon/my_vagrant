# OhMyZSH

ZSH=$HOME/.oh-my-zsh
ZSH_THEME="daveverwer"
DISABLE_AUTO_UPDATE="true"
DISABLE_CORRECTION="true"

plugins=(git history-substring-search)

source $ZSH/oh-my-zsh.sh

# Rbenv

export PATH="$HOME/.rbenv/bin:$PATH"
eval "$(rbenv init -)"

# Stuff...

export PATH="$HOME/bin:$PATH"
export EDITOR=vim
setopt nobeep
