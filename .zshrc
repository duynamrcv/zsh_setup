# history
setopt autocd
setopt EXTENDED_HISTORY
setopt SHARE_HISTORY

HISTFILE=$HOME/.zsh_history
HISTSIZE=10000
SAVEHIST=10000

history() {( fc -Dlim "*$@*" 1 )}

# fzf
[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh

# highlighting and auto suggestion
source ~/.zsh/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
source ~/.zsh/zsh-autosuggestions/zsh-autosuggestions.zsh

# zoxide and starship
sudo mv ~/.local/bin/zoxide /usr/local/bin
eval "$(zoxide init zsh)"
eval "$(starship init zsh)"

# Key binding
bindkey "^[[1;5C" forward-word
bindkey "^[[1;5D" backward-word

setopt nonomatch

# Grep
alias grep="grep --color=always"

# Eza
alias ls="eza --icons --group-directories-first"
alias ll="eza -l --icons --group-directories-first"
alias l="eza -l --icons --group-directories-first -a"
alias la="eza -l --icons --group-directories-first -a"
alias tree="eza --icons -T -L"

# ROS
# alias humble='source /opt/ros/humble/setup.zsh && eval "$(register-python-argcomplete ros2)" && eval "$(register-python-argcomplete colcon)"'
alias jazzy='source /opt/ros/jazzy/setup.zsh && eval "$(register-python-argcomplete ros2)" && eval "$(register-python-argcomplete colcon)"'

