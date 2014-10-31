# Path to your oh-my-zsh installation.
export ZSH=$HOME/.oh-my-zsh
export NODE_PATH=/usr/local/lib/node_modules
eval "$(rbenv init -)"
# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
# ZSH_THEME="bira"
ZSH_THEME="eastwood"

# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"

# Uncomment the following line to use case-sensitive completion.
CASE_SENSITIVE="true"

# Uncomment the following line to disable bi-weekly auto-update checks.
# DISABLE_AUTO_UPDATE="true"

# Uncomment the following line to change how often to auto-update (in days).
# export UPDATE_ZSH_DAYS=13

# Uncomment the following line to disable colors in ls.
# DISABLE_LS_COLORS="true"

# Uncomment the following line to disable auto-setting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment the following line to disable command auto-correction.
# DISABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
# COMPLETION_WAITING_DOTS="true"

# Uncomment the following line if you want to disable marking untracked files
# under VCS as dirty. This makes repository status check for large repositories
# much, much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"

# Uncomment the following line if you want to change the command execution time
# stamp shown in the history command output.
# The optional three formats: "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
HIST_STAMPS="mm/dd/yyyy"

# Would you like to use another custom folder than $ZSH/custom?
# ZSH_CUSTOM=/path/to/new-custom-folder

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
plugins=(git)

source $ZSH/oh-my-zsh.sh

# User configuration
# heroku toolbelt
export PATH="/usr/local/heroku/bin:$PATH"
export PATH="/usr/local/Cellar/vim/7.4.430_1/bin/vim:$PATH"
export PATH="/usr/bin:/bin:/usr/sbin:/sbin:/usr/local/bin:$PATH"
export PATH="/usr/local/git/bin:/usr/X11/bin:$PATH"
export PATH="/programming/libraries/xtc/src/xtc/lang/cpp/scripts:$PATH"
export PATH="$HOME/.phantomjs/1.9.7/darwin/bin:$PATH"
export PATH="$HOME/programming/libraries/mongodb/bin:$PATH"
export PATH="/opt/local/bin:$PATH"
export PATH="$HOME/.rbenv/bin:$HOME/.rbenv/shims:$PATH"

# export MANPATH="/usr/local/man:$MANPATH"

# You may need to manually set your language environment
# export LANG=en_US.UTF-8

# Preferred editor for local and remote sessions
if [[ -n $SSH_CONNECTION ]]; then
  export EDITOR='vim'
else
  export EDITOR='mvim'
fi

export CLICOLOR=1
export TERM=xterm-256color
alias gg="grep -r"
alias startpg="pg_ctl -D /usr/local/var/postgres -l /usr/local/var/postgres/server.log start"
alias stoppg="pg_ctl -D /usr/local/var/postgres stop -s -m fast"
alias vim="/usr/local/Cellar/vim/7.4.430_1/bin/vim"
alias emacs="/Applications/Emacs.app/Contents/MacOS/Emacs"

alias l="ls -CF -color"
alias la="ls -A -color"
alias ll="ls -color"
alias redis="redis-server /usr/local/etc/redis.conf"
### Added by the Heroku Toolbelt
export PATH="/usr/local/heroku/bin:$PATH"
# Compilation flags
# export ARCHFLAGS="-arch x86_64"

# ssh
# export SSH_KEY_PATH="~/.ssh/dsa_id"
#
plugins=(git clojure ruby golang django scala gem history history-substring-search terminalapp brew nanoc)
