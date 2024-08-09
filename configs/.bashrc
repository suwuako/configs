#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='ls --color=auto'
alias grep='grep --color=auto'
alias dl='yt-dlp --extract-audio --audio-format mp3'

eval "$(thefuck --alias)"
eval "$(zoxide init --cmd cd bash)"

# python
VIRTUAL_ENV_DISABLE_PROMPT=1 . ~/projects/py-venv/bin/activate

# from https://gist.github.com/Cacodaimon/feebd053e35ba6653621
color_black_black='\[\e[0;30m\]'
color_black_red='\[\e[0;31m\]'
color_black_green='\[\e[0;32m\]'
color_black_yellow='\[\e[0;33m\]'
color_black_blue='\[\e[0;34m\]'
color_black_magenta='\[\e[0;35m\]'
color_black_cyan='\[\e[0;36m\]'
color_black_white='\[\e[0;37m\]'

color_red_black='\[\e[30;41m\]'
color_red_red='\[\e[31;41m\]'
color_red_green='\[\e[32;41m\]'
color_red_yellow='\[\e[33;41m\]'
color_red_blue='\[\e[34;41m\]'
color_red_magenta='\[\e[35;41m\]'
color_red_cyan='\[\e[36;41m\]'
color_red_white='\[\e[37;41m\]'

color_green_black='\[\e[30;42m\]'
color_green_red='\[\e[31;42m\]'
color_green_green='\[\e[32;42m\]'
color_green_yellow='\[\e[33;42m\]'
color_green_blue='\[\e[34;42m\]'
color_green_magenta='\[\e[35;42m\]'
color_green_cyan='\[\e[36;42m\]'
color_green_white='\[\e[37;42m\]'

color_yellow_black='\[\e[30;43m\]'
color_yellow_red='\[\e[31;43m\]'
color_yellow_green='\[\e[32;43m\]'
color_yellow_yellow='\[\e[33;43m\]'
color_yellow_blue='\[\e[34;43m\]'
color_yellow_magenta='\[\e[35;43m\]'
color_yellow_cyan='\[\e[36;43m\]'
color_yellow_white='\[\e[37;43m\]'

color_blue_black='\[\e[30;44m\]'
color_blue_red='\[\e[31;44m\]'
color_blue_green='\[\e[32;44m\]'
color_blue_yellow='\[\e[33;44m\]'
color_blue_blue='\[\e[34;44m\]'
color_blue_magenta='\[\e[35;44m\]'
color_blue_cyan='\[\e[36;44m\]'
color_blue_white='\[\e[37;44m\]'

color_magenta_black='\[\e[30;45m\]'
color_magenta_red='\[\e[31;45m\]'
color_magenta_green='\[\e[32;45m\]'
color_magenta_yellow='\[\e[33;45m\]'
color_magenta_blue='\[\e[34;45m\]'
color_magenta_magenta='\[\e[35;45m\]'
color_magenta_cyan='\[\e[36;45m\]'
color_magenta_white='\[\e[37;45m\]'

color_cyan_black='\[\e[30;46m\]'
color_cyan_red='\[\e[31;46m\]'
color_cyan_green='\[\e[32;46m\]'
color_cyan_yellow='\[\e[33;46m\]'
color_cyan_blue='\[\e[34;46m\]'
color_cyan_magenta='\[\e[35;46m\]'
color_cyan_cyan='\[\e[36;46m\]'
color_cyan_white='\[\e[37;46m\]'

color_reset='\[\033[0m\]'
separator=''
top_left_box='┌─'
bottom_left_box='└─'
box_extender='──'
box_end='┤'

PS1=""
# username + host
PS1+="$top_left_box$color_blue_white$separator"
PS1+="$color_blue_black${color_blue_black} \u ${color_green_blue}$separator"
PS1+="${color_green_black} \h $color_black_green$color_red_green$separator"
PS1+="$color_red_black \w $color_black_red$separator$color_reset"
PS1+="\n$bottom_left_box$box_extender$box_end$ "
