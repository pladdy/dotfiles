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
  eval `gdircolors -b`
fi

# man bash; check PROMPTING
export PS1="\\[${txtylw}\\]\u\\[${bldwht}\\]@\\[${txtgrn}\\]\h\\[${bldwht}\\]:\\[${bldpur}\\]\A\\[${bldwht}\\]:\\[${bldcyn}\\]\w\\[${txtrst}\\]$ "

# add ssh key
echo "Adding ssh key"
ssh-add ~/.ssh/id_rsa

# Ensure brew is available on PATH
eval "$(/opt/homebrew/bin/brew shellenv)"

echo "Enabling direnv hook"
eval "$(direnv hook bash)"

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

LDFLAGS=""
CPPFLAGS=""
PKG_CONFIG_PATH=""

# For compilers to find zlib and ssl
export LDFLAGS="${LDFLAGS} -L/opt/homebrew/opt/libffi/lib"
export LDFLAGS="${LDFLAGS} -L/opt/homebrew/opt/libmagic/lib"
export LDFLAGS="${LDFLAGS} -L/opt/homebrew/opt/libpq/lib"
export LDFLAGS="${LDFLAGS} -L/opt/homebrew/opt/openssl@1.1/lib"
export LDFLAGS="${LDFLAGS} -L/opt/homebrew/opt/openssl@3/lib"
export LDFLAGS="${LDFLAGS} -L/opt/homebrew/opt/sqlite3/lib"
export LDFLAGS="${LDFLAGS} -L/opt/homebrew/opt/zlib/lib"

export CPPFLAGS="${CPPFLAGS} -I/opt/homebrew/opt/libffi/include"
export CPPFLAGS="${CPPFLAGS} -I/opt/homebrew/opt/libmagic/include"
export CPPFLAGS="${CPPFLAGS} -I/opt/homebrew/opt/libpq/include"
export CPPFLAGS="${CPPFLAGS} -I/opt/homebrew/opt/openssl@1.1/include"
export CPPFLAGS="${CPPFLAGS} -I/opt/homebrew/opt/openssl@3/include"
export CPPFLAGS="${CPPFLAGS} -I/opt/homebrew/opt/sqlite3/include"
export CPPFLAGS="${CPPFLAGS} -I/opt/homebrew/opt/zlib/include"

# For pkg-config to find zlib and ssl
export PKG_CONFIG_PATH="/opt/homebrew/opt/libffi/lib/pkgconfig"
export PKG_CONFIG_PATH="${PKG_CONFIG_PATH}:/opt/homebrew/opt/libpq/lib/pkgconfig"
export PKG_CONFIG_PATH="${PKG_CONFIG_PATH}:/opt/homebrew/opt/openssl@1.1/lib/pkgconfig"
export PKG_CONFIG_PATH="${PKG_CONFIG_PATH}:/opt/homebrew/opt/openssl@3/lib/pkgconfig"
export PKG_CONFIG_PATH="${PKG_CONFIG_PATH}:/opt/homebrew/opt/sqlite3/lib/pkgconfig"
export PKG_CONFIG_PATH="${PKG_CONFIG_PATH}:/opt/homebrew/opt/zlib/lib/pkgconfig"

# For grpcio (gPRC python library used by opencensus libraries)
export GRPC_PYTHON_BUILD_SYSTEM_OPENSSL=1
export GRPC_PYTHON_BUILD_SYSTEM_ZLIB=1

# On new M1 mac, brew installs openssl3, below is cert location
# Without this set, Okta's python SDK will raise SSL exceptions
export SSL_CERT_FILE=/private/etc/ssl/cert.pem

# After running poetry-setup's `make` command, a certifi bundle that includes
# flashpoint certs is built in below path.
# TODO: utility to get latest python certifi bundle and combine with fp certs
export SSL_CERT_FILE=~/.config/fp-certs/certifi-fp-bundle.pem

# The next line updates PATH for the Google Cloud SDK.
if [ -f '/Users/user85540015/google-cloud-sdk/path.bash.inc' ]; then . '/Users/user85540015/google-cloud-sdk/path.bash.inc'; fi

# The next line enables shell command completion for gcloud.
if [ -f '/Users/user85540015/google-cloud-sdk/completion.bash.inc' ]; then . '/Users/user85540015/google-cloud-sdk/completion.bash.inc'; fi

# Silence warning about gcp auth plugin
export USE_GKE_GCLOUD_AUTH_PLUGIN=True
# Then run gcloud container clusters get-credentials platform --region=us-central1

# Shell integration for vscode
[[ "$TERM_PROGRAM" == "vscode" ]] && . "$(code --locate-shell-integration-path bash)"

export SHELL=/bin/bash