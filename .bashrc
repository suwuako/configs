#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='ls --color=auto'
alias grep='grep --color=auto'
alias dl='yt-dlp --extract-audio --audio-format mp3'
PS1='[\u@\h \W]\$ '

eval "$(thefuck --alias)"
eval "$(zoxide init --cmd cd bash)"
