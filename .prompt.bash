__git_in_working_folder()
{
	if [ "true" = "$(git rev-parse --is-inside-work-tree 2>/dev/null)" ];
	then
    true 
  else
    false
  fi
}

__git_branch() 
{
  printf `git branch | grep  ^*|cut -d" " -f2`
}

__git_repo_name()
{
	printf "$(basename -s .git `git config --get remote.origin.url`)"
}

__git_ps1()
{
  if __git_in_working_folder; then
    local c=$(__git_branch)
    printf -- "${1:-\e[0;37;46m\e[0;37;46m%s\e[0;36m\e[0;37m}" "  $c"
  else  
    printf "\e[0;37;39m"
  fi
}