#ws If you come from bash you might have to change your $PATH.
export PATH=$HOME/bin:/usr/local/bin:$PATH

# Path to your oh-my-zsh installation.
export ZSH=$HOME/.oh-my-zsh

# ZSH_THEME="spheric"
ZSH_THEME="miloshadzic"

# Aliases
alias zshrc="v ~/.zshrc"
alias ohmyzsh="v ~/.oh-my-zsh"
alias vimrc="v ~/.vimrc"
alias comp="docker-compose"
alias work="cd ~/Work"

alias gsu="git submodule update"
alias gs="git status"
alias gsa="git fetch --all --prune --tags"
alias gpf="~/Work/scripts/force-push-prompt.sh"

alias markdown="cd ~/Dropbox/markdown/files/"

alias bx="bundle exec"
alias bxr="bundle exec rspec"
alias bxm="bundle exec rake db:migrate && bundle exec rake db:migrate RAILS_ENV=test"
alias start_sidekiq="bundle exec sidekiq -d -c 3 -L ./log/sidekiq.log"

# Linux specific
alias aptu="sudo apt-get update"
alias apti="sudo apt-get install"

alias weather="curl 'http://wttr.in'"

# Rails
alias migrate="bx rake db:migrate"
alias rollback="bx rake db:rollback"
alias dbconsole="bx rails dbconsole"

# Neovim
alias n="nvim"

# Connectajob
alias connectajob-api="cd /Users/matthewgardner/Connectajob/connectajob-api"
alias connetajob-web="cd /Users/matthewgardner/Connectajob/connectajob-web-client"

# SCRIPTS

DISABLE_AUTO_UPDATE="false"

export ZSH_THEME_GIT_PROMPT_DIRTY="%{$fg[yellow]%}~%{$reset_color%}"

# Uncomment to change how often to auto-update? (in days)
export UPDATE_ZSH_DAYS=10

# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to use hyphen-insensitive completion. Case
# sensitive completion must be off. _ and - will be interchangeable.
# HYPHEN_INSENSITIVE="true"

# Uncomment the following line to change how often to auto-update (in days).
# export UPDATE_ZSH_DAYS=13

# Uncomment the following line to disable colors in ls.
# DISABLE_LS_COLORS="true"

# Uncomment the following line to disable auto-setting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment the following line to enable command auto-correction.
# ENABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
# COMPLETION_WAITING_DOTS="true"

# Uncomment the following line if you want to disable marking untracked files
# under VCS as dirty. This makes repository status check for large repositories
# much, much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"

# Uncomment the following line if you want to change the command execution time
# stamp shown in the history command output.
# The optional three formats: "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
# HIST_STAMPS="mm/dd/yyyy"

# Would you like to use another custom folder than $ZSH/custom?
# ZSH_CUSTOM=/path/to/new-custom-folder

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(git git-extras history jsontools web-search wd bundler monolith aws)

source $ZSH/oh-my-zsh.sh

# User configuration

# export MANPATH="/usr/local/man:$MANPATH"

# You may need to manually set your language environment
# export LANG=en_US.UTF-8

# Preferred editor for local and remote sessions
# if [[ -n $SSH_CONNECTION ]]; then
#   export EDITOR='vim'
# else
#   export EDITOR='v'
# fi

# Compilation flags
# export ARCHFLAGS="-arch x86_64"

# ssh
# export SSH_KEY_PATH="~/.ssh/rsa_id"

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
#
# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"
#

if [ $TERMINIX_ID ] || [ $VTE_VERSION ]; then
        source /etc/profile.d/vte.sh
fi

[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh

eval $(thefuck --alias)

export PATH="$HOME/.rbenv/bin:$PATH"
eval "$(rbenv init -)"

eval "$(direnv hook zsh)"

eval "$(fasd --init posix-alias zsh-hook)"

export EDITOR="nvim"
export PATH="$PATH:./node_modules/.bin"
export PYENV_ROOT="$HOME/.pyenv"
export PATH="$PYENV_ROOT/bin:$PATH"
export PATH="$HOME/.cargo/bin:$PATH"

eval "$(pyenv init -)"

# export JIRA_USERNAME=
# export JIRA_PASSWORD=

alias ls="exa --long --git"

alias ave="aws-vault exec"

export NVM_DIR="$HOME/.nvm"
  . "/usr/local/opt/nvm/nvm.sh"
