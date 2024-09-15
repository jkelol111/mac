eval "$(direnv hook zsh)"
if [ "$(arch)" = "arm64" ]; then
  eval "$(/opt/homebrew/bin/brew shellenv)"
else
  eval "$(/usr/local/bin/brew shellenv)"
fi
# export PROMPT="%1~ %(?.%F{green}%#%f.%F{red}%#%f) "
if type brew &>/dev/null; then
  FPATH=$(brew --prefix)/share/zsh/site-functions:$FPATH

  autoload -Uz compinit
  compinit
fi

eval "$(oh-my-posh init zsh)"
