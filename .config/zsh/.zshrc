HISTFILE=~/.config/zsh/.histfile
HISTSIZE=10000
SAVEHIST=5000

# Remove beep
unsetopt beep

# Use Vi mode
bindkey -v
#export KEYTIMEOUT=1

# ctrl+backspace
bindkey '^H' backward-kill-word
# ctrl+k
bindkey '^K' backward-kill-line
# ctrl+<- | ctrl+->
bindkey '^[[1;5D' backward-word
bindkey '^[[1;5C' forward-word

# Basic auto/tab complete:
autoload -U compinit
zstyle ':completion:*' menu select
zmodload zsh/complist
compinit
# _comp_options+=(globdots)		# Include hidden files.

# Source default aliases
source $ZDOTDIR/zsh-aliases

# Source work config
# source $ZDOTDIR/zsh-work

# NVM (LAGS TERMINAL)
# source /usr/share/nvm/init-nvm.sh
source $HOME/.nvm/init-nvm.sh

# Source plugins
source /usr/share/zsh/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh 2>/dev/null
source /usr/share/zsh/plugins/zsh-autosuggestions/zsh-autosuggestions.zsh 2>/dev/null

# Prompt
eval "$(starship init zsh)"





