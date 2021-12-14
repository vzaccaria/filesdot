# Author: Vittorio Zaccaria

# Linux 
# -----

if [[ `uname -s` = 'Linux' ]] 
then  
        if [[ `lsb_release -i -s` = 'Ubuntu' ]] 
        then 
             apt-get install -y git neovim tmux zsh stow curl nodejs fzf  \
                                coreutils man ripgrep less
             curl -sfL git.io/antibody | sh -s - -b /usr/local/bin
        else
                # this script assumes you have already installed Nix with a command like
                # curl -L https://nixos.org/nix/install | sh

                # source nix
                . ~/.nix-profile/etc/profile.d/nix.sh

                # install packages
                nix-env -iA \
                        nixpkgs.git \
                        nixpkgs.neovim \
                        nixpkgs.tmux \
                        nixpkgs.zsh \
                        nixpkgs.stow \
                        nixpkgs.curl \
                        nixpkgs.nodejs \
                        nixpkgs.fzf \
                        nixpkgs.antibody \
                        nixpkgs.coreutils \
                        nixpkgs.exa \
                        nixpkgs.man  \
                        nixpkgs.ripgrep \
                        nixpkgs.gnumake \
                        nixpkgs.diff-so-fancy \
                        nixpkgs.less
        fi
else 
        # 'Darwin'
        brew install git neovim tmux zsh stow curl nodejs fzf antibody coreutils exa diff-so-fancy grep
fi

stow git
stow neovim
curl -fLo ~/.config/nvim/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
stow zsh
stow tmux

if [[ `uname -s` = 'Linux' ]] 
then  
        antibody bundle < ~/.zsh_plugins_linux.txt > ~/.zsh_plugins.sh
else 
        antibody bundle < ~/.zsh_plugins_darwin.txt > ~/.zsh_plugins.sh
fi

# nstall neovim plugins
nvim --headless +PlugInstall +qall

