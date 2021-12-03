# Author: Vittorio Zaccaria

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
        nixpkgs.exa

stow git
stow neovim
curl -fLo ~/.config/nvim/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
stow zsh
stow tmux

# bundle zsh plugins 
antibody bundle < ~/.zsh_plugins.txt > ~/.zsh_plugins.sh

# nstall neovim plugins
nvim --headless +PlugInstall +qall

