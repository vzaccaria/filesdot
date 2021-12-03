# Created by newuser for 5.8

# This must be the first one
if [ -e ~/.nix-profile/etc/profile.d/nix.sh ]; then . ~/.nix-profile/etc/profile.d/nix.sh; fi

export TERM=xterm-256color
export GITSTATUS_LOG_LEVEL=DEBUG

source ${HOME}/.zsh_plugins.sh



# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh


# Aliases (just try to keep everything here)
alias vi=nvim
alias ls=exa
alias l='exa -l'
alias ,s='git status'

