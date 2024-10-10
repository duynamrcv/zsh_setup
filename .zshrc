setopt autocd
setopt EXTENDED_HISTORY
setopt SHARE_HISTORY

HISTFILE=$HOME/.zsh_history
HISTSIZE=10000
SAVEHIST=10000

# history
history() {( fc -Dlim "*$@*" 1 )}

[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh

# highlighting and auto suggestion
source ~/.local/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
source ~/.local/share/zsh-autosuggestions/zsh-autosuggestions.zsh

eval "$(zoxide init zsh)"
eval "$(starship init zsh)"

export WEBOTS_HOME=/usr/local/webots

# Key binding
bindkey "^[[1;5C" forward-word
bindkey "^[[1;5D" backward-word

setopt nonomatch

# Grep
alias grep="grep --color=always"

# Exa
alias ls="exa --icons --group-directories-first"
alias ll="exa -l --icons --group-directories-first"
alias l="exa -l --icons --group-directories-first -a"
alias la="exa -l --icons --group-directories-first -a"
alias tree="exa --icons -T -L"

alias nambd3='cd ~/Documents/NamBD3'

# ROS
alias humble='source /opt/ros/humble/setup.zsh && eval "$(register-python-argcomplete3 ros2)" && eval "$(register-python-argcomplete3 colcon)"'

