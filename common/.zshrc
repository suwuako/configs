export GPG_TTY=$TTY

#export LC_ALL=en_US.UTF-8
#export LANG=en.US.UTF-8
# End of lines added by compinstall
# Lines configured by zsh-newuser-install
HISTFILE=~/.zsh/histfile
HISTSIZE=1000000000
SAVEHIST=1000000000
unsetopt beep
bindkey -v
# End of lines configured by zsh-newuser-install

alias ls='ls --color=auto'
alias l='ls --color=auto -al'
alias screenshare='wf-recorder --muxer=v4l2 --codec=rawvideo --file=/dev/video0 -x yuv420p'
alias tbonsai="cbonsai -t 60 -S"

eval "$(zoxide init zsh --cmd cd)"
