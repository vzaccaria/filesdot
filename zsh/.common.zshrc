# Aliases 
alias vi='NVIM_LISTEN_ADDRESS=/tmp/nvimsocket nvim'
alias ls=exa
alias l='exa -l'
alias ,s='git status'
alias mk='make -f makefile.mk'
alias make='gmake'

# Exports

export EDITOR=nvim
export GIT_EDITOR=nvim

# Functions

# Emacs starter
em() {
    TYPE=$(uname)
    if [ "${TYPE}" = "Linux" ]; then
        _P="/usr/bin/"
        _L=""
    elif [ "${TYPE}" = "Darwin" ]; then
        _P="/usr/local/bin/"
        _L="| spacemacsStart"
    else
        echo "Unsupported OS - ${TYPE}";
        _P=""
    fi
    if [ "$1" = "start" ]; then
            "${_P}emacs" --daemon 2>&1 >/dev/null ${_L}
    elif [ "$1" = "stop" ]; then
            "${_P}/emacsclient" -e "(kill-emacs)"
    elif [ "$1" = "restart" ]; then
        em stop
        sleep 2
        em start
    else
            "${_P}/emacsclient" -nw "$@" -c
    fi
}

