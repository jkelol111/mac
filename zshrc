if type brew &>/dev/null; then
  FPATH=$(brew --prefix)/share/zsh/site-functions:$FPATH

  autoload -Uz compinit
  compinit
fi

PROMPT='%1~ %(?.%F{green}%#%f.%F{red}%#%f) '
