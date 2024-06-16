#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

# Rust diff
alias ls='eza -stype'

# open a file in a project directory with fd and fzy
alias nvimp='nvim $(fd | fzy -l15)'

# This should be default
HISTCONTROL=ignoredups

[ -d "$HOME/.local/bin" ] && PATH="$HOME/.local/bin:$PATH"
export PATH

# Bunch of stuff that makes bash life easier
shopt -s globstar histverify no_empty_cmd_completion

# Neovim is amazing
export EDITOR=nvim
export VISUAL=nvim

. "$HOME/.cargo/env"

eval "$(starship init bash)"

eval "$(ssh-agent -s >/dev/null)"

# export GDK_DPI_SCALE=1.25
