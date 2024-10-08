
export XDG_CONFIG_HOME="$HOME/.config"
export XDG_DATA_HOME="$HOME/.local/share"
export XDG_CACHE_HOME="$HOME/.cache"

[ -f "$HOME/.bash_aliases" ] && source "$HOME/.bash_aliases" 
# Lines configured by zsh-newuser-install
HISTFILE=$HOME/.bash_history
HISTSIZE=5000
SAVEHIST=8000
bindkey -v
# End of lines configured by zsh-newuser-install
# The following lines were added by compinstall
zstyle :compinstall filename '/home/user/.zsh/.zshrc'

autoload -Uz compinit
compinit
# End of lines added by compinstall

setopt correct
setopt extendedglob
setopt nocaseglob
setopt nocheckjobs
setopt numericglobsort
setopt nobeep
setopt appendhistory
setopt histignoredups
setopt autocd

source $ZDOTDIR/config/functions

repos=(
    #marlonrichert/zsh-hist
    zsh-users/zsh-syntax-highlighting
    zsh-users/zsh-autosuggestions
    zsh-users/zsh-history-substring-search
    jeffreytse/zsh-vi-mode
)

# Loop through the list of repos and add plugins
for repo in "${repos[@]}"; do
    zsh_add_plugin "$repo"
done

# Cleanup
unset repos

# zsh-history-substring-search configuration
bindkey '^[[A' history-substring-search-up # or '\eOA'
bindkey '^[[B' history-substring-search-down # or '\eOB'
HISTORY_SUBSTRING_SEARCH_ENSURE_UNIQUE=1

autoload -Uz vcs_info
precmd_vcs_info() { vcs_info }
precmd_functions+=( precmd_vcs_info )
setopt prompt_subst
#zstyle ':vcs_info:*' enable git
zstyle ':vcs_info:git:*' formats '%b $ '

precmd() { print "" }
PROMPT="%B%{$fg[white]%}%1~%{$reset_color%}%  %(?:%{$fg_bold[green]%}➜ :%{$fg_bold[red]%}➜ )"

PROMPT+='${vcs_info_msg_0_}'
