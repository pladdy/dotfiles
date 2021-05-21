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

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

LDFLAGS=""
CPPFLAGS=""
PKG_CONFIG_PATH=""

# For compilers to find zlib and ssl
export LDFLAGS="${LDFLAGS} -L/usr/local/opt/zlib/lib"
export LDFLAGS="${LDFLAGS} -L/usr/local/opt/openssl@1.1/lib"
export CPPFLAGS="${CPPFLAGS} -I/usr/local/opt/zlib/include"
export CPPFLAGS="${CPPFLAGS} -I/usr/local/opt/openssl@1.1/include"

# For pkg-config to find zlib you may need to set:
export PKG_CONFIG_PATH="${PKG_CONFIG_PATH} /usr/local/opt/zlib/lib/pkgconfig"
export PKG_CONFIG_PATH="${PKG_CONFIG_PATH} /usr/local/opt/openssl@1.1/lib/pkgconfig"

