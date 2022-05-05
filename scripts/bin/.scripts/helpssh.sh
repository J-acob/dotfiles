ssh_key=$1


if [[ -n "$ssh_key" ]]; then
  eval `ssh-agent -s`
  ssh-add $1 
else
  echo "You need to give me a ssh key bro" 
fi





