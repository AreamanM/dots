starship init fish | source

if [ -d "$HOME/.local/bin" ]
  set -p PATH "$HOME/.local/bin"
end

alias ls=exa

set -xg EDITOR nvim
set -xg VISUAL nvim

set -xg FZF_DEFAULT_OPTS '--info=hidden --cycle --preview="bat -fn --theme=gruvbox-dark {}" --preview-window=up:75% --layout=reverse-list'
set -xg FZF_DEFAULT_COMMAND 'rg --files --follow'

bind \c_ 'nvim (fzf)'
