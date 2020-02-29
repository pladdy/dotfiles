declare -a dotfiles=(
  .aliases
  .colors
  .env
  .functions
)

for file in ${dotfiles[@]}; do
  if [ -f ~/$file ]; then
    source ~/$file
  fi
done

# man ls and check LSCOLORS section
export CLICOLOR=1
export LSCOLORS=ExGxcxdxCxegedabagacad

# if gdircolors is installed
if command -v gls > /dev/null; then
  eval `/usr/local/bin/gdircolors -b`
fi

# man bash; check PROMPTING
export PS1="\\[${txtylw}\\]\u\\[${bldwht}\\]@\\[${txtgrn}\\]\h\\[${bldwht}\\]:\\[${bldpur}\\]\A\\[${bldwht}\\]:\\[${bldcyn}\\]\w\\[${txtrst}\\]$ "

# add ssh key
ssh-add ~/.ssh/id_rsa

eval "$(direnv hook bash)"
