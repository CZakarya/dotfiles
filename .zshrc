# Can be ignorespace ignoredups, or ignoreboth. https://www.gnu.org/software/bash/manual/html_node/Bash-History-Facilities.html
HISTCONTROL=ignoreboth
HISTFILE=~/.hist
HISTSIZE=1000
HISTFILESIZE=2000


bindkey -e


zstyle :compinstall filename '/home/zakarya/.zshrc'
autoload -Uz compinit
compinit


# Import custom keybinds
source $HOME/.config/shell/keys.zsh

# Import aliases
. ~/.config/shell/aliases.sh

# Custom color prompt
PROMPT='%F{green}[ %F{cyan}%n@%M%f %F{blue}%~%f %F{green}]%#%f '

# Import env
. $HOME/.config/shell/env.sh


command -v zoxide &> /dev/null && eval "$(zoxide init zsh)"


source /usr/share/zsh/plugins/zsh-autosuggestions/zsh-autosuggestions.zsh
source /usr/share/zsh/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
