#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

set -o vi

PATH="$PATH:/home/umbro/.local/bin"

PS1='\[\e[0;31m\][\[\e[1;33m\]\u\[\e[0;35m\]@\[\e[0;32m\]\h \[\e[1;34m\]\W\[\e[0;31m\]]\[\e[0m\]$ '

# aliases
alias ls="ls --color=auto"
alias ydp="yt-dlp -x --yes-playlist"
alias e="nvim" # wszystko przez nvidie
alias cm="git pull origin main ; git add --all ; git commit ; git push"
alias poweroff="sudo shutdown now"
alias pd="dict -d fd-pol-deu"
alias dp="dict -d fd-deu-pol"
alias proton="~/.local/share/Steam/steamapps/common/Proton\ -\ Experimental/files/bin/wine64"
