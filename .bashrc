#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

# Rust diff
alias ls=eza

# Convenience thing
#alias nvimfzf='nvim $(fzf)'

# just testing
alias nvimp='nvim $(fd | fzy -l15)'

# This should be default
HISTCONTROL=ignoredups

#[ -d "$HOME/.dotnet/tools" ] && PATH="$HOME/.dotnet/tools:$PATH"
[ -d "$HOME/.local/bin" ] && PATH="$HOME/.local/bin:$PATH"
export PATH

# Bunch of stuff that makes bash life easier
shopt -s globstar histverify no_empty_cmd_completion

# Neovim is amazing
export EDITOR=nvim
export VISUAL=nvim

. "$HOME/.cargo/env"

eval "$(starship init bash)"

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

[ -f "/home/penguin/.ghcup/env" ] && source "/home/penguin/.ghcup/env" # ghcup-env

eval "$(ssh-agent -s >/dev/null)"

export GDK_DPI_SCALE=1.25
