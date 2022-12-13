# Completion setup
autoload -Uz compinit

compinit
# No idea what this means, but apparently it's meant to menu completion
# I'll believe the Arch wiki and assume that it does
zstyle ':completion:*' menu select

# Sudo completion, this lets completion scripts run as sudo, so be careful with
# those
zstyle ':completion::complete:*' gain-privileges 1

# Alias completion, should've been on by default in my opinion
setopt COMPLETE_ALIASES

# Don't put duplicates in history, this is really nice because you dont need
# to up-arrow about 80 times to get to your last command
setopt histignorealldups

# $PATH stuff
# Apparently this discards duplicates from $PATH and $path
typeset -U PATH path

if [ -d "$HOME/.local/bin" ]; then
  path=("$HOME/.local/bin" "$path[@]")
fi
export PATH

# Finally, some config I can understand
# I wrote this all by myself, I'm proud
# Basically it's what is in my bashrc
#
# Vim keybinds
bindkey -v

# Rust diff
alias ls=exa

# Neovim is amazing
export EDITOR=nvim
export VISUAL=nvim

# FZF is amazing
#
# THIS KEYBINDING IS AMAZINGGG
# Should probably be using $VISUAL for this, but if it works it works
# Btw, this binds ctrl-/ as well as ctrl-_, apparently both send the same codes
# to the terminal, I use the ctrl-/ part of it
alias e='nvim $(fzf --preview="bat -fn --theme=gruvbox-dark {}" "--preview-window=up:60%")'
bindkey -s "^_" 'e^M'

export FZF_DEFAULT_COMMAND="rg --files"
export FZF_DEFAULT_OPTS="--cycle --layout=reverse-list --info=hidden"

export FZF_ALT_C_COMMAND="fd --type=directory"
# export FZF_ALT_C_OPTIONS="--border=rounded" # idek what this changes

export FZF_CTRL_T_COMMAND="rg --files"

# Since WSL autoclears tmp upon reboot, store tmux tmp files somewhere else
export TMUX_TMPDIR="$HOME/.local/share"

# Need to have the zsh syntax higlighting package installed for this
source /usr/share/zsh/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

# FZF keybindings
source /usr/share/fzf/key-bindings.zsh
source /usr/share/fzf/completion.zsh

# Starshippppp, it's pretty cool
eval "$(starship init zsh)"

# Change cursor shape for different vi modes.
# function zle-keymap-select {
#   if [[ ${KEYMAP} == vicmd ]] ||
#      [[ $1 = 'block' ]]; then
#     echo -ne '\e[1 q'
#   elif [[ ${KEYMAP} == main ]] ||
#        [[ ${KEYMAP} == viins ]] ||
#        [[ ${KEYMAP} = '' ]] ||
#        [[ $1 = 'beam' ]]; then
#     echo -ne '\e[6 q'
#   fi
# }
# zle -N zle-keymap-select
# zle-line-init() { echo -ne "\e[6 q" }
# zle -N zle-line-init
# echo -ne '\e[5 q' # Use beam shape cursor on startup.
# preexec() { echo -ne '\e[6 q' } # Use beam shape cursor for each new prompt.
