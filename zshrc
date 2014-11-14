#---------------------------------------------------
# aliases
#---------------------------------------------------
# cd
alias ..='cd ..'

# git
alias ga="git add ."
alias gb="git branch"
alias gba="git branch -a"
alias gc="git commit -a"
alias gd="git diff | mate"
alias gl="git pull"
alias gp="git push"
alias gs="git status"

# ls
alias ls="ls -F"
alias l="ls -lAh"
alias ll="ls -l"
alias la='ls -A'

# projects
alias p="cd /Users/Shared/Dropbox/Projects"
alias 51="cd /Users/Shared/Dropbox/Projects/gaming/c64/51Pegasus/code;sublime ."

# home
alias h="cd ~/$1;"

# databases
alias spg="/usr/local/bin/pg_ctl -D /Users/cbmeeks/Databases/postgresql/data -l /Users/cbmeeks/Databases/postgresql/logs/server.log start"
alias stoppg="/usr/local/bin/pg_ctl -D /Users/cbmeeks/Databases/postgresql/data -l /Users/cbmeeks/Databases/postgresql/logs/server.log stop"
export PGDATA=/Users/cbmeeks/Databases/postgresql/data/

alias sred="redis-server /usr/local/etc/redis.conf"


#alias smg="mongod run --fork --config /Users/Shared/Dropbox/Projects/config/mongodb/mongod.conf"
alias smg="mongod run --fork --config /Users/cbmeeks/Dropbox/Projects/config/mongodb/mongod.conf"

# rails
alias ur="unicorn_rails"

# environment variables
export FACEBOOK_APP_ID=148872851832766
export FACEBOOK_SECRET=3cb4a1c1249e65f9c15baee6b7e387f8


#---------------------------------------------------
# config / PATH
#---------------------------------------------------

# Play / Scala
#export PATH="$HOME/bin/play-2.2.1-RC1:$PATH"
export PATH="$HOME/bin/scala-2.10.3/bin:$PATH"

export PATH="$HOME/.rbenv/bin:$HOME/bin:/usr/local/bin:/usr/local/share/npm/bin:/opt/local/bin:$PATH"

# Editors
export EDITOR="mate -w"
export VISUAL="mate -w"
export SVN_EDITOR="mate -w"
export GIT_EDITOR="mate -w"

# command prompt
export CLICOLOR=1
export LSCOLORS=gxBxhxDxfxhxhxhxhxcxcx
autoload colors; colors
export PS1="%B%{$fg[red]%}%~%]%b: "

HISTFILE=~/.zsh_history
HISTSIZE=1000
SAVEHIST=1000
REPORTTIME=10 # print elapsed time when more than 10 seconds

setopt NO_BG_NICE # don't nice background tasks
setopt NO_HUP
setopt NO_LIST_BEEP
setopt LOCAL_OPTIONS # allow functions to have local options
setopt LOCAL_TRAPS # allow functions to have local traps
setopt HIST_VERIFY
setopt SHARE_HISTORY # share history between sessions ???
setopt EXTENDED_HISTORY # add timestamps to history
setopt PROMPT_SUBST
setopt CORRECT
setopt COMPLETE_IN_WORD
setopt IGNORE_EOF

setopt APPEND_HISTORY # adds history
setopt INC_APPEND_HISTORY SHARE_HISTORY  # adds history incrementally and share it across sessions
setopt HIST_IGNORE_ALL_DUPS  # don't record dupes in history
setopt HIST_REDUCE_BLANKS

zle -N newtab

bindkey '^[^[[D' backward-word
bindkey '^[^[[C' forward-word
bindkey '^[[5D' beginning-of-line
bindkey '^[[5C' end-of-line
bindkey '^[[3~' delete-char
bindkey '^[^N' newtab
bindkey '^?' backward-delete-char 


# Gradle
GRADLE_HOME=~/bin/gradle-1.5;
export GRADLE_HOME
export PATH=$PATH:$GRADLE_HOME/bin


# Add rbenv init to your shell to enable shims and autocompletion.
eval "$(rbenv init -)"


# Sencha Cmd
export PATH="$HOME/.rbenv/bin:$HOME/bin:/usr/local/bin:/usr/local/share/npm/bin:/opt/local/bin:$PATH:$HOME/bin/Sencha/Cmd/4.0.0.203"


