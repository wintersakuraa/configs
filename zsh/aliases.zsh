# ALIASES ---------------------------------------------------------------------
alias ll='ls -l'
alias lla='ls -la'
alias cl='clear'

# BREW ALIASES -----------------------------------------------------------------
alias bi='brew install'
alias bu='brew uninstall'

alias bs='brew services'
alias bss='brew services start'
alias bsr='brew services restart'
alias bst='brew services stop'

# DOCKER ALIASES -----------------------------------------------------------------
alias d='docker'
alias dls='docker ps'
alias dlsa='docker ps -a'
alias ds='docker start'
alias dx='docker stop'
alias dv='docker volume'
alias dcn='docker container'

alias dc='docker compose'
alias dcu='docker compose up -d'
alias dcd='docker compose down'
alias dcst='docker compose stop'

# GIT ALIASES -----------------------------------------------------------------
alias g='git'
alias gc='git commit -v'
alias gca='git commit -a --amend'
alias gcane='git commit -a --amend --no-edit'
alias gcm='git commit -m'
alias ga='git add'
alias gaa='git add --all'
alias gst='git status -s'
alias gsta='git status'
alias glg='git log --oneline --decorate --graph'

alias gsh='git stash'
alias gshl='git stash list'
alias gshp='git stash pop'

alias gco='git checkout'
alias gcb='git checkout -b'
alias gb='git branch'
alias gba='git branch --all'
alias gbd='git branch -D'

alias gd='git diff -w'
alias gds='git diff -w --staged'

alias grs='git restore'
alias grst='git restore --staged'
alias gu='git reset --soft HEAD~1'

alias gf='git fetch'
alias gfo='git fetch origin'
alias gpr='git remote prune origin'

alias gmr='git merge'

alias grb='git rebase'
alias grbi='git rebase -i'
alias grbc='git rebase --continue'
alias grba='git rebase --abort'

alias git-current-branch="git branch | grep \* | cut -d ' ' -f2"
alias gpsup='git push --set-upstream origin $(git-current-branch)'
alias gpf='git push --force'
alias gp='git push'
