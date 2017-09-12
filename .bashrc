export CLICOLOR=1
export LSCOLORS=ExFxCxDxBxegedabagacad
# [[ -s "$HOME/.rvm/scripts/rvm" ]] && . "$HOME/.rvm/scripts/rvm" # Load RVM function
# export CC=gcc-4.2
# export PATH=$HOME/local/node/bin:$PATH
# export NODE_PATH=$HOME/local/node:$HOME/local/node/lib/node_modules

# Git aliases
alias gs="git status"
alias gf="git fetch"
alias ga="git add"
alias gd="git diff -w"
alias gc="git commit"
alias gps="git push"
alias gpl="git pull"
alias gu="git gui"
alias g='git'
alias glold='git log --graph --pretty="format:%C(yellow)%h%Cblue%d%Creset %s %C(white) %an, %ar%Creset"'
alias gl='git log --graph --pretty="format:%C(yellow)%h %Cred%>(10)%ad %Cblue%an%C(yellow bold)%d %Creset%<(45,trunc)%s" --date=short --date=iso'
alias grhh='git reset --hard HEAD'
alias gbr="git branch -v"
alias gbrl='git remote prune origin && git for-each-ref --sort=-committerdate --format="%(color:red dim)%(committerdate:short)%(color:reset) %(color:yellow)%(refname)%(color:reset) %(color:blue dim)%(authorname)%(color:reset)" refs/remotes'
alias gbrc='for k in $(git branch -a --merged|grep -v "\->"|sed s/^..//);do echo -e $(git log -1 --pretty=format:"%Cgreen%ci %Cred%cr%Creset" "$k")\\t"$k";done|sort'
alias gtl='g tag --sort=-v:refname |& less -F'

# App aliases
alias d='docker'
alias dc='docker-compose'

# Autocomplete for 'g' as well
# source ~/.git-completion.bash
complete -o default -o nospace -F _git g

source ~/.prompt.bash

# GIT_PS1_SHOWUNTRACKEDFILES=true
# GIT_PS1_SHOWDIRTYSTATE=true
# GIT_PS1_SHOWSTASHSTATE=true

# printf "\e[0;37;39m"

PROMPT_COMMAND='if $(__git_in_working_folder); then CurDir=" $(__git_repo_name)"; else CurDir=`pwd|sed -e "s!$HOME!~!"`; fi'
PS1="\[\e[1;31;47m\]\$CurDir \[\e[0;37;40m\]\`cmdRes=\$? && echo -en \"\$(__git_ps1)\" && if [ \$cmdRes = 0 ]; then echo -en '\[\e[1;32m\] '; else echo -en '\[\e[1;31m\]'; fi\`\[\e[0;37m\]\$ \[\e[1;32m\]"

# pro cd function
pd() {
  local projDir=$(pro search $1)
  cd ${projDir}
}

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion
