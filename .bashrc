#
# ~/.bashrc
#
eval "$(/home/linuxbrew/.linuxbrew/bin/brew shellenv)"
eval $(opam env --switch=FSV)
# Source global definitions
if [ -f /etc/bashrc ]; then
    . /etc/bashrc
fi

#importing aliases
if [ -f ~/.bash_aliases ]; then
    . ~/.bash_aliases
fi

# Git prompt support
if [ -f /usr/share/git/completion/git-prompt.sh ]; then
    source /usr/share/git/completion/git-prompt.sh
fi

# User specific environment
if ! [[ "$PATH" =~ "$HOME/.local/bin:$HOME/bin:" ]]; then
    PATH="$HOME/.local/bin:$HOME/bin:$PATH"
fi
export PATH

if ! [[ "$XDG_CONFIG_HOME" ]]; then
    XDG_CONFIG_HOME="$HOME/.config/"
fi
export XDG_CONFIG_HOME

# Uncomment the following line if you don't like systemctl's auto-paging feature:
# export SYSTEMD_PAGER=

# User specific aliases and functions
if [ -d ~/.bashrc.d ]; then
    for rc in ~/.bashrc.d/*; do
        if [ -f "$rc" ]; then
            . "$rc"
        fi
    done
fi
unset rc

set -o vi

export EDITOR=nvim
export VISUAL=nvim
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"                   # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion" # This loads nvm bash_completion
#. "$HOME/.cargo/env"
export WEZTERM_CONFIG_FILE=$HOME/.wezterm.lua

# Load Angular CLI autocompletion.
# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='ls --color=auto'
alias grep='grep --color=auto'
PS1='[\u@\h \W]\$ '

eval "$(/home/linuxbrew/.linuxbrew/bin/brew shellenv)"

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"                   # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion" # This loads nvm bash_completion
. "$HOME/.cargo/env"
export PATH="$(ruby -e 'require "rubygems"; puts Gem.user_dir + "/bin"'):$PATH"

# User specific environment
if ! [[ "$PATH" =~ "$HOME/.local/bin:$HOME/bin:" ]]; then
    PATH="$HOME/.local/bin:$HOME/bin:$PATH"
fi
export PATH

if ! [[ "$XDG_CONFIG_HOME" ]]; then
    XDG_CONFIG_HOME="$HOME/.config/"
fi
export XDG_CONFIG_HOME

# Uncomment the following line if you don't like systemctl's auto-paging feature:
# export SYSTEMD_PAGER=

# Show user@host:path (branch)
# export PS1='\[\e[32m\]\u@\h\[\e[0m\]:\[\e[36m\]\w\[\e[0m\]$(__git_ps1 " (\[\e[33m\]%s\[\e[0m\])")\$ '
# export PS1='\[\e[36m\]\w\[\e[0m\]$(__git_ps1 " ( \[\e[33m\]%s\[\e[0m\])")\$ '
export PS1='\n\[\e[36m\]\w\[\e[0m\]$(__git_ps1 " ( \[\e[33m\]%s\[\e[0m\])")\$ '

# Enable bash completion (programmable completion)
if [ -f /usr/share/bash-completion/bash_completion ]; then
    . /usr/share/bash-completion/bash_completion
fi

# fzf fuzzy finder keybindings & completion (Ctrl-R, Ctrl-T, Alt-C)
# system-wide files are on Arch at /usr/share/fzf/...
if [ -f /usr/share/fzf/key-bindings.bash ]; then
    source /usr/share/fzf/key-bindings.bash
fi
if [ -f /usr/share/fzf/completion.bash ]; then
    source /usr/share/fzf/completion.bash
fi

# Optional: a small helper to show a subtle suggestion using history top match
# Press Ctrl-R to get fuzzy history via fzf; this is very helpful as "autosuggest"
eval "$(rbenv init -)"
export LANG=en_IN.UTF-8

# opencode
export PATH=/home/myos/.opencode/bin:$PATH
