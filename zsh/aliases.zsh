# ALIASES ---------------------------------------------------------------------
alias ll="ls -l"

# GIT ALIASES -----------------------------------------------------------------
alias gc='git commit -v'
alias ga='git add'
alias gaa='git add --all'
alias gst='git status'
alias glog='git log --oneline --decorate --graph'

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

alias gm='git merge'

alias grb='git rebase'
alias grbi='git rebase -i'
alias grbc='git rebase --continue'
alias grba='git rebase --abort'

alias git-current-branch="git branch | grep \* | cut -d ' ' -f2"
alias gpsup='git push --set-upstream origin $(git-current-branch)'
alias gpf!='git push --force'
