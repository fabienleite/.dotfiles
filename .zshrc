source ~/.specific_setup.zsh

# ZSH plugins
source ~/.zsh/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
source ~/.zsh/zsh-autosuggestions/zsh-autosuggestions.zsh
fpath=(~/.zsh/zsh-completions $fpath)
autoload -U compinit && compinit
zmodload -i zsh/complist

# ZSH LULZ
export CLICOLOR=1 
export LSCOLORS=GxfxhxhxbxahahxxxxGxGx
zstyle ':completion:*' menu select list-colors ${(s.:.)LS_COLORS}

# FNM
eval "$(fnm env)"

# FUNCTIONS
source $HOME/.scripts/*.sh

# DIRENV
eval "$(direnv hook zsh)"

# PYENV
eval "$(pyenv init -)"
export VIRTUAL_ENV_DISABLE_PROMPT=1

# MISC 
alias vim="nvim"
alias glr="git pull --rebase"
alias ll='ls -alF'
alias la='ls -Al'
alias l='ls -CF'
alias gco="git checkout"

# UTILS (Z, FZF)
source $ZPATH/z.sh
source ~/.fzf.zsh

# Themes
export BAT_THEME="TwoDark" # bat
eval "$(starship init zsh)" # terminal
