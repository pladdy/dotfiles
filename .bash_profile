if [ -f ~/.bashrc ]; then
    . ~/.bashrc
fi

export BASH_SILENCE_DEPRECATION_WARNING=1
export EDITOR=vim
export GIT_HOST=github.com:pladdy
export GOPATH=~/go

# golang tools get installed here
export PATH=$PATH:$HOME/bin

# add local [s]bin to end of path
export PATH=$PATH:/usr/local/bin
export PATH=$PATH:/usr/local/sbin

# python (poetry, pipx)
export PATH="$HOME/.poetry/bin:$PATH"
export PATH="$PATH:$HOME/.local/bin"

# TODO: set up PYTHONSTARTUP to personalize the prompt in python ide
# https://arpitbhayani.me/blogs/python-prompts

# The next line updates PATH for the Google Cloud SDK.
if [ -f "$HOME/google-cloud-sdk/path.bash.inc" ]; then . "$HOME/google-cloud-sdk/path.bash.inc"; fi

# The next line enables shell command completion for gcloud.
if [ -f "$HOME/google-cloud-sdk/completion.bash.inc" ]; then . "$HOME/google-cloud-sdk/completion.bash.inc"; fi

# Setting PATHs for Python X.Y; in descending order
export PATH="/Users/user84791850/Library/Python/2.7/bin:${PATH}"
export PATH="/Library/Frameworks/Python.framework/Versions/3.4/bin:${PATH}"
export PATH="/Library/Frameworks/Python.framework/Versions/3.5/bin:${PATH}"
export PATH="/Library/Frameworks/Python.framework/Versions/3.6/bin:${PATH}"
export PATH="/Library/Frameworks/Python.framework/Versions/3.7/bin:${PATH}"
export PATH="/Library/Frameworks/Python.framework/Versions/3.8/bin:${PATH}"

# make mongo bin files available
export PATH="/usr/local/opt/mongodb-community@3.2/bin:$PATH"

# use 0.11 of terraform
export PATH="/usr/local/opt/terraform@0.11/bin:$PATH"
