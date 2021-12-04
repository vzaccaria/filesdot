export PATH=/usr/local/bin:$PATH

# Aliases
alias wk='pkill -f watchman org2pdf jslatex tikz2pdf chromix'
alias ,watchers-kill='pkill -f watchman org2pdf jslatex tikz2pdf chromix'

alias y='stty sane'
alias ,tty-restore='stty sane'

alias ,tx='tmuxinator'
alias mc='cd "/Users/zaccaria/development/github/org-institutional/materiale-corsi"'

alias ,kill-emacs="ps ux | grep '[e]macs' | tr -s ' ' | cut -d ' ' -f2 | xargs kill -9"

alias du="ncdu --color dark -rr -x --exclude .git --exclude node_modules"

,path-real() {
  grealpath "$1" | tr -d '\n' | pbcopy
}

alias rp=',path-real'


# Functions
fzo() {
  local out file key
  IFS=$'\n' out=("$(fzf-tmux --query="$1" --exit-0 --expect=ctrl-o,ctrl-e)")
  key=$(head -1 <<< "$out")
  file=$(head -2 <<< "$out" | tail -1)
  if [ -n "$file" ]; then
    [ "$key" = ctrl-o ] && ${EDITOR:-vim} "$file" ||  open "$file" 
  fi
}

alias ,fzf-open-file='fzo'

fzd() {
  local dir
  dir=$(find ${1:-.} -path '*/\.*' -prune \
                  -o -type d -print 2> /dev/null | fzf +m) &&
  open "$dir"
}

alias ,fzf-open-dir='fzd'

,tower-this() {
    /Applications/Tower.app/Contents/MacOS/gittower "$(git rev-parse --show-toplevel)"
}

# Create URL for various tasks through Gotty and the browser

ntmuxz() {
        directory=$(grealpath "$1" | tr -d '\n\')
        shellcomm="${@:2}"
        command="tmux new-session -c $directory zsh --interactive -c '$shellcomm'"
        ecommand=$(echo $command | jq -sRr @uri)
        echo "http://localhost:3005/?arg=-c&arg=($ecommand)"  | pbcopy
}

ntmuxc() {
        directory=$(grealpath "$1" | tr -d '\n\')
        shellcomm="${@:2}"
        command="tmux new-session -c $directory $shellcomm"
        ecommand=$(echo $command | jq -sRr @uri)
        echo "http://localhost:3005/?arg=-c&arg=($ecommand)"  | pbcopy
}

nemacs() {
        currentdir=$(pwd)
        file=$(grealpath "$1" | tr -d '\n\')
        command="/usr/local/bin/emacsclient -nw "$file" -c"
        ntmuxc $currentdir $command
}

nvi() {
        currentdir=$(pwd)
        file=$(grealpath "$1" | tr -d '\n\')
        command="nvim $file"
        ntmuxc $currentdir $command
}


ntmux() {
        ntmuxc $1 ""
}


# Change working directory to the top-most Finder window location
,cd-to-finder() { # short for `cdfinder`
  cd "$(osascript -e 'tell app "Finder" to POSIX path of (insertion location as alias)')" || exit
}

,mail-compose() {
    pbpaste | sed 's/^/> /' > ~/temp.md
    vi ~/temp.md 
    cat ~/temp.md | pbcopy
}

keynote2pdf() {
FILE_INPUT=`grealpath "$1"`
FILE_OUTPUT=`echo $FILE_INPUT | sed "s/\.key$/\.pdf/"`
    echo Exporting $FILE_INPUT to pdf
osascript << EOF
      tell application "System Events"
        tell application "Keynote"
          activate
          open POSIX file "${FILE_INPUT}"
          export front document to POSIX file "${FILE_OUTPUT}" as PDF
        end tell
        do shell script "killall Keynote"
      end tell
EOF
}
