# initialize PATH
export PATH=/usr/local/bin:/System/Cryptexes/App/usr/bin:/usr/bin:/bin:/usr/sbin:/sbin

# golang tools get installed here
export PATH=$PATH:$HOME/bin

# add local [s]bin to end of path
export PATH=$PATH:/usr/local/bin:/usr/local/sbin

# python (poetry, pipx)
export PATH="$PATH:$HOME/.local/bin"

declare -a dotfiles=(
  .aliases
  .colors
  .env
  .functions
)

for file in ${dotfiles[@]}; do
  if [ -f ~/$file ]; then
    echo "Sourcing ~/$file"
    source ~/$file
  fi
done

# man ls and check LSCOLORS section
export CLICOLOR=1
export LSCOLORS=ExGxcxdxCxegedabagacad

# if gdircolors is installed
if command -v gls > /dev/null; then
  echo "Setting LSCOLORS"
  eval `/usr/local/bin/gdircolors -b`
fi

# man bash; check PROMPTING
export PS1="\\[${txtylw}\\]\u\\[${bldwht}\\]@\\[${txtgrn}\\]\h\\[${bldwht}\\]:\\[${bldpur}\\]\A\\[${bldwht}\\]:\\[${bldcyn}\\]\w\\[${txtrst}\\]$ "

# add ssh key
echo "Adding ssh key"
ssh-add ~/.ssh/id_rsa

echo "Enabling direnv hook"
eval "$(direnv hook bash)"
