if [ -f ~/.bashrc ]; then
    . ~/.bashrc
fi

# initialize PATH
export PATH=/usr/local/bin:/System/Cryptexes/App/usr/bin:/usr/bin:/bin:/usr/sbin:/sbin

# golang tools get installed here
export PATH=$PATH:$HOME/bin

# add local [s]bin to end of path
export PATH=$PATH:/usr/local/bin
export PATH=$PATH:/usr/local/sbin

# python (poetry, pipx)

# poetry location for versions <1.2
export PATH="$PATH:$HOME/.local/bin"
# poetry location for 1.2
# https://python-poetry.org/docs/#installing-with-the-official-installer
# Note: installation with pipx is supported
export PATH="$HOME/Library/Application Support/pypoetry/venv/bin:$PATH"

# TODO: set up PYTHONSTARTUP to personalize the prompt in python ide
# https://arpitbhayani.me/blogs/python-prompts

# The next line updates PATH for the Google Cloud SDK.
if [ -f "$HOME/google-cloud-sdk/path.bash.inc" ]; then . "$HOME/google-cloud-sdk/path.bash.inc"; fi

# The next line enables shell command completion for gcloud.
if [ -f "$HOME/google-cloud-sdk/completion.bash.inc" ]; then . "$HOME/google-cloud-sdk/completion.bash.inc"; fi

# Setting PATHs for Python X.Y
export PATH="/Library/Frameworks/Python.framework/Versions/3.9/bin:$PATH"
export PATH="/Library/Frameworks/Python.framework/Versions/3.10/bin:$PATH"
export PATH="/Library/Frameworks/Python.framework/Versions/3.11/bin:$PATH"
export PATH="/Library/Frameworks/Python.framework/Versions/3.12/bin:$PATH"

# make mongo bin files available
export PATH="/usr/local/opt/mongodb-community@3.2/bin:$PATH"

# use 0.11 of terraform
# export PATH="/usr/local/opt/terraform@0.11/bin:$PATH"

# THIS MUST BE AT THE END OF THE FILE FOR SDKMAN TO WORK!!!
export SDKMAN_DIR="$HOME/.sdkman"
[[ -s "$HOME/.sdkman/bin/sdkman-init.sh" ]] && source "$HOME/.sdkman/bin/sdkman-init.sh"

export JAVA_HOME=$(sdk home java 8.0.322-zulu)
export PATH="$PATH:$(sdk home scala 2.13.3)/bin"

# GO
export PATH="$PATH:$GOPATH/bin"

# Ensure brew is available on PATH
eval "$(/opt/homebrew/bin/brew shellenv)"
