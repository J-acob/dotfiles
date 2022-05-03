
#Append bin to end of home, good security and good shell scripts for user :)
export PATH="$HOME/bin:$PATH"


#How to alias shell scripts well...?
alias helpme="~/bin/.scripts/helpme.sh"

alias helpssh="~/bin/.scripts/helpssh.sh"

#I want to be able to edit my commonly opened files easily
alias vimrc="vim ~/.vimrc"
alias bashrc="vim ~/.bashrc"
alias loadbash="source ~/.bash_profile"

#Color stuff.. hmm
export CLICOLOR=1
export LANG="en_US.UTF-8"


#PS1 Stuff

#NORMAL_TEXT='\[

#Modularization of bash prompt stuff

directory_info="\[\033[38;5;228m\][\w]\[$(tput sgr0)\]"
user_info="\[\033[38;5;183m\]\u\[$(tput sgr0)\]"
time_info="\[\033[38;5;6m\]\A\[$(tput sgr0)\]"
host_info="\[\033[38;5;226m\]\h\[$(tput sgr0)\]"
git_info="\[\033[38;5;94m\]\$(git status 2>/dev/null | grep 'On branch' | sed 's/On branch / \[\033[38;5;94m\]~ \[\033[38;5;70m\]/')"


export PS1="${user_info}\[\033[38;5;231m\]@${host_info} ${directory_info} ${git_info} \[$(tput sgr0)\]\$ "
export EDITOR="vim"
export SVN_EDITOR="vim"
 
shopt -s globstar
