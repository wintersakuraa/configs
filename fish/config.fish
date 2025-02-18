if status is-interactive
    # Commands to run in interactive sessions can go here
end

# Setup brew
eval "$(/opt/homebrew/bin/brew shellenv)"

# Setup starship
starship init fish | source

# ALIASES ---------------------------------------------------------------------
alias ll='ls -l'
alias lla='ls -la'
alias cl='clear'

# BREW ALIASES -----------------------------------------------------------------
alias bs='brew services'

# DOCKER ALIASES -----------------------------------------------------------------
alias d='docker'
alias ds='docker start'
alias dst='docker stop'
alias di='docker image'
alias dv='docker volume'
alias dcn='docker container'

alias dc='docker compose'
alias dcu='docker compose up -d'

# KUBECTL ALIASES -----------------------------------------------------------------
alias k='kubectl'

# GIT ALIASES -----------------------------------------------------------------
alias g='git'
alias gc='git commit -v'
alias ga='git add'
alias gaa='git add --all'
alias gst='git status -s'
alias gsta='git status'
alias glg='git log --oneline --decorate'

alias gsh='git stash'
alias gshl='git stash list'
alias gshp='git stash pop'

alias gw='git worktree'

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
alias gpo='git push origin'
alias gp='git push'

# ENV VARIABLES -----------------------------------------------------------------
set -gx EDITOR vim
set -gx SHELL /opt/homebrew/bin/fish

# pnpm
set -gx PNPM_HOME "/Users/wintersakura/Library/pnpm"
if not string match -q -- $PNPM_HOME $PATH
  set -gx PATH "$PNPM_HOME" $PATH
end
# pnpm end
