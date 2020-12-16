tm() {
  [[ -n "$TMUX" ]] && change="switch-client" || change="attach-session"
  if [ $1 ]; then
    tmux $change -t "$1" 2>/dev/null || (tmux new-session -d -s $1 && tmux $change -t "1"); return
  fi
  session=$(tmux list-sessions -F "#{session_name}" 2>/dev/null | fzf --exit-0) && tmux $change -t "$session" || echo "No sessions found."
}


# Homebrew
export PATH="/usr/local/bin:$PATH"

#export PATH="/usr/local/opt/openssl/bin:$PATH"
#
#export PATH="$HOME/.cargo/bin:$PATH"
#
#export PATH="$HOME/osu/git/cs344/program4:$PATH"

export PS1="\[\033[36m\]\u\[\033[m\]@\[\033[32m\]\h:\[\033[33;1m\]\w\[\033[m\]\$ "
export CLICOLOR=1
export LSCOLORS=ExFxBxDxCxegedabagacad

export LDFLAGS="-L/usr/local/opt/openssl/lib"
export CPPFLAGS="-I/usr/local/opt/openssl/include"

alias osu='cd ~/osu'
alias tmux="TERM=screen-256color-bce tmux"
alias vi='vim'

# exa aliasing
alias ls="exa -F"
alias l="exa -a"
alias ll="exa -lgh"
alias la="exa -lagh"
alias lt="exa -T"
alias lg="exa -lagh --git"

[ -f ~/.fzf.bash ] && source ~/.fzf.bash

#stty erase '^?'
