# Sources
source ~/.bash/alias.sh
source ~/.bash/macro.sh

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

#Bash display
export PS1="\[$(tput setaf 2)\]┌─╼ \[$(tput setaf 4)\][\w]\n\[$(tput setaf 2)\]\$(if [[ \$? == 0 ]]; then echo \"\[$(tput setaf 2)\]└────╼\"; else echo \"\[$(tput setaf 2)\]└╼\"; fi) \[$(tput setaf 7)\]"
