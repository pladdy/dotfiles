if [ -f ~/.aliases ]; then
  . ~/.aliases
fi

# man ls and check LSCOLORS section
export CLICOLOR=1
export LSCOLORS=ExfxcxdxCxegedabagacad

export EDITOR=vim
export PS1='\[\e[0;33m\]\u\[\e[0m\]@\[\e[0;32m\]\h\[\e[0m\]:\[\e[0;96m\]\w\[\e[0m\]\$ '

##
 # utility functiong for removing a host from known_hosts and logging in
 ##
 budvar() {
  vm=$1
  : ${vm:=128}

  # remove the ip address from known_hosts
  sed_str="sed -i .bak '/^192.168.66.$vm/d' ~/.ssh/known_hosts"
  printf "removing ip from known hosts: $sed_str\n"
  eval $sed_str

  eval `ssh-agent -s`
  ssh-add
  ssh -o StrictHostKeyChecking=no -A mpladna@192.168.66.$vm
}
