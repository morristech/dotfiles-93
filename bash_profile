source ~/.bashrc

if [ -f $(brew --prefix)/share/bash-completion/bash_completion ]; then
  . $(brew --prefix)/share/bash-completion/bash_completion
fi

export PS1='$ '
export EDITOR=vim
export PAGER=less

PROMPT_COMMAND='echo -ne "\033]0;${PWD/$HOME/~}\007"'

alias ls="ls -G"
alias less='less -R'
alias irb='irb --simple-prompt --readline'

alias gs='git status'
alias gl='git log'
alias gc='git commit'
alias gca='git commit --amend'
alias ga='git add'
alias gap='git add -N . ; git add -p'
alias gp='git pull'
alias gpr='git pull --rebase'
alias gb='git branch'
alias grmall='git diff --name-only --diff-filter=D -z | xargs -0 git rm --cached'

alias tmux="TERM=screen-256color-bce tmux"
alias bake='bundle exec rake'
alias bopen='EDITOR=mate bundle open'
alias bspec='bundle exec rspec'

eval "$(rbenv init -)"
eval "$(direnv hook bash)"
