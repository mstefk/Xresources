#
# ~/.bash_profile
#

[[ -f ~/.bashrc ]] && . ~/.bashrc

export NNN_OPENER=~/opener
export NNN_USE_EDITOR=1
export VISUAL="kate"
export EDITOR="kate"
export BROWSER="firefox"

if [[ -z $DISPLAY ]] && [[ $(tty) = /dev/tty1 ]]; then exec startx; fi
