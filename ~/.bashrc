#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='ls --color=auto'
#PS1=' \W \$ '
PS1='\e[0;36m\W\e[0m \$ '
alias shnow="shutdown -h now"

