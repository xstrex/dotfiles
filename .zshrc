# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH

# Path to your oh-my-zsh installation.
export ZSH="/home/$USER/.oh-my-zsh"

ZSH_THEME="morphx"

HYPHEN_INSENSITIVE="true"
DISABLE_UPDATE_PROMPT="true"
DISABLE_AUTO_TITLE="true"
ENABLE_CORRECTION="true"
COMPLETION_WAITING_DOTS="true"
DISABLE_UNTRACKED_FILES_DIRTY="true"
HIST_STAMPS="mm/dd/yyyy"
TERM="xterm-256color"
plugins=(git extract systemd sublime)

source $ZSH/oh-my-zsh.sh

# User configuration
export LANG=en_US.UTF-8

# ls Colors
LS_COLORS="ow=01;34:di=01;34"
export LS_COLORS

if [[ -n $SSH_CONNECTION ]]; then
  export EDITOR='vim'
else
  export EDITOR='mvim'
fi

# Aliases
alias python="python3"
alias c="clear"
alias myip='curl http://ipecho.net/plain; echo'

#if [[ -e /usr/local/bin/sonos ]]; then
#        alias sr="sonos 'Sonos Roam'"
#        alias sb="sonos Bedroom"
#        alias sb2="sonos 'Living Room'"
#else
#        echo "Sonos is not installed, check https://github.com/avantrec/soco-cli"
#fi

# Make and cd to new dir
mcd () {
 if [ -z "$1" ]; then
        echo "Make and change to new dir"
        return 1
 else
        mkdir -p "$1"
        cd "$1" || return
 fi
}

test -e "${HOME}/.iterm2_shell_integration.zsh" && source "${HOME}/.iterm2_shell_integration.zsh"
