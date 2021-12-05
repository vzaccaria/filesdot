# Created by newuser for 5.8

# This must be the first one
if [ -e ~/.nix-profile/etc/profile.d/nix.sh ]; then . ~/.nix-profile/etc/profile.d/nix.sh; fi

source ${HOME}/.zsh_plugins.sh

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh

bindkey -v

source ${HOME}/.common.zshrc
source ${HOME}/.git.zshrc

if [[ `uname` = 'Linux' ]]; then  
        source ${HOME}/.linux.zshrc; 
fi

if [[ `uname` = 'Darwin' ]]; then 
        source ${HOME}/.darwin.zshrc; 
fi

# Needed to start completion
autoload -U compinit; 
compinit;

