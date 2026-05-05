# If not running interactively, don't do anything
[[ $- != *i* ]] && return


# Can be ignorespace ignoredups, or ignoreboth. https://www.gnu.org/software/bash/manual/html_node/Bash-History-Facilities.html
HISTCONTROL=ignoreboth
HISTFILE=~/.hist
HISTSIZE=1000
HISTFILESIZE=2000

[ -r /usr/share/bash-completion/bash_completion ] && . /usr/share/bash-completion/bash_completion


use_color = true


# Import aliases
. $HOME/.config/shell/aliases.sh

# Custom color prompt
PS1='\[\e[32m\][\[\e[0m\] \[\e[36m\]\u\[\e[36m\]@\[\e[36m\]\H\[\e[0m\] \[\e[34m\]\w\[\e[0m\] \[\e[32m\]]\[\e[32m\]\$\[\e[0m\] '

# Import env
. $HOME/.config/shell/env.sh


command -v zoxide &> /dev/null && eval "$(zoxide init bash)"