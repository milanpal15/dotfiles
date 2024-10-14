# .bashrc

eval "$(/home/linuxbrew/.linuxbrew/bin/brew shellenv)"

# Source global definitions
if [ -f /etc/bashrc ]; then
    . /etc/bashrc
fi

#importing aliases 
if [ -f ~/.bash_aliases ]; then
    . ~/.bash_aliases
fi

# User specific environment
if ! [[ "$PATH" =~ "$HOME/.local/bin:$HOME/bin:" ]]; then
    PATH="$HOME/.local/bin:$HOME/bin:$PATH"
fi
export PATH

if ! [[ "$XDG_CONFIG_HOME"  ]]; then
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
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion
#. "$HOME/.cargo/env"
export WEZTERM_CONFIG_FILE=$HOME/.wezterm.lua


# Load Angular CLI autocompletion.
