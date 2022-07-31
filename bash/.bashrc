#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

set -o vi

PATH="$PATH:/home/umbro/.local/bin"

# alias ls='ls --color=auto'
PS1='\e[0;31m[\e[1;33m\u\e[0;35m@\e[0;32m\h \e[1;34m\W\e[0;31m]\e[0m$ '

# macros
ydp() {
	arg1=$1
	yt-dlp -x --yes-playlist $arg1
}
