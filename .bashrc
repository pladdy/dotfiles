##
 # utility functiong for removing a host from known_hosts and logging in
 ##
budvar() {
  # remove the ip address from known_hosts
  sed_str="sed -i .bak '/^192.168.66.$1/d' ~/.ssh/known_hosts"
  printf "removing ip from known hosts: $sed_str\n"
  eval $sed_str

  eval `ssh-agent -s`
  ssh-add
  ssh -oStrictHostKeyChecking=no -A mpladna@192.168.66.$1
}
