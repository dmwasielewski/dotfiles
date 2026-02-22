eval "$(starship init zsh)"
export TERM=xterm-256color
export PATH="/usr/local/bin:$PATH"
autoload -Uz compinit
compinit
source /usr/share/zsh-autosuggestions/zsh-autosuggestions.zsh
source /usr/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
[ -z "$TMUX" ] && tmux new-session -A -s main
ZSH_AUTOSUGGEST_HIGHLIGHT_STYLE="fg=#6c7086"
