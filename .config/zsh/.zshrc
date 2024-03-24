export PATH=$HOME/bin:/usr/local/bin:/opt/bin:/opt/homebrew/bin:$PATH

export NVM_DIR="$HOME/.nvm"
[ -s "/opt/homebrew/opt/nvm/nvm.sh" ] && \. "/opt/homebrew/opt/nvm/nvm.sh"  # This loads nvm
[ -s "/opt/homebrew/opt/nvm/etc/bash_completion.d/nvm" ] && \. "/opt/homebrew/opt/nvm/etc/bash_completion.d/nvm"  # This loads nvm bash_completion

### ZSH HOME
export ZSH=$HOME/.config/zsh
zstyle ':completion:*' matcher-list '' 'm:{a-zA-Z}={A-Za-z}'

### EDITOR

export EDITOR="/opt/homebrew/bin/nvim"

### ---- history config -------------------------------------
export HISTFILE=$ZSH/.zsh_history

# How many commands zsh will load to memory.
export HISTSIZE=10000

# How many commands history will save on file.
export SAVEHIST=10000

# History won't save duplicates.
setopt HIST_IGNORE_ALL_DUPS

# History won't show duplicates on search.
setopt HIST_FIND_NO_DUPS

### --- plug-in ------------------------------------------------

source $ZSH/plugins/fast-syntax-highlighting/fast-syntax-highlighting.plugin.zsh
source $ZSH/plugins/zsh-autosuggestions/zsh-autosuggestions.zsh
source $ZSH/plugins/zsh-git/git.plugin.zsh
source $ZSH/plugins/zsh-tmux/tmux.plugin.zsh
source $ZSH/plugins/zsh-docker/zsh-docker.plugin.zsh
source $ZSH/plugins/zsh-docker-compose/docker-compose.plugin.zsh
fpath=($ZSH/plugins/zsh-completions/src $fpath)

[ -f /opt/homebrew/etc/profile.d/autojump.sh ] && . /opt/homebrew/etc/profile.d/autojump.sh

#### autosuggest

bindkey '  ' autosuggest-accept

### --- custom-alias ------------------------------------------------

alias ..="cd .."
alias ...="cd ../.."
alias ....="cd ../../.."

alias c-="cd -"
alias ic="cd /Users/jgo/Library/Mobile\ Documents/com~apple~CloudDocs"
alias vi="nvim"
alias viz="vi $ZSH/.zshrc"
alias vig="vi ~/.gitconfig"
alias viv="vi ~/.vimrc"
alias via="vi $HOME/.config/alacritty/alacritty.toml"
alias vin="vi $HOME/.config/nvim/init.vim"
alias ~="cd ~"
alias pi="ssh jgopi"

[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh
eval "$(starship init zsh)"

alias ls="eza"
alias ll="ls -l"
alias la="ls -a"
alias lla="ls -al"
alias lt="ls --tree"
alias sz="source $ZSH/.zshrc"

export STARSHIP_CONFIG="$HOME/.config/starship/starship.toml"

export FPATH=/opt/homebrew/bin/eza:$FPATH

if type brew &>/dev/null; then
    FPATH="$(brew --prefix)/share/zsh/site-functions:${FPATH}"
    autoload -Uz compinit
    compinit
fi
