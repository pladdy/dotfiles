if [ -f ~/.bashrc ]; then
    . ~/.bashrc
fi

# golang tools get installed here
export PATH=$PATH:$HOME/bin

# add local [s]bin to end of path
export PATH=$PATH:/usr/local/bin
export PATH=$PATH:/usr/local/sbin

# python (poetry, pipx)
export PATH="$PATH:$HOME/.local/bin"

# TODO: set up PYTHONSTARTUP to personalize the prompt in python ide
# https://arpitbhayani.me/blogs/python-prompts

# The next line updates PATH for the Google Cloud SDK.
if [ -f "$HOME/google-cloud-sdk/path.bash.inc" ]; then . "$HOME/google-cloud-sdk/path.bash.inc"; fi

# The next line enables shell command completion for gcloud.
if [ -f "$HOME/google-cloud-sdk/completion.bash.inc" ]; then . "$HOME/google-cloud-sdk/completion.bash.inc"; fi

# Setting PATHs for Python X.Y
export PATH="$PATH:/Library/Frameworks/Python.framework/Versions/3.8/bin"
export PATH="$PATH:/Library/Frameworks/Python.framework/Versions/3.7/bin"
export PATH="$PATH:/Library/Frameworks/Python.framework/Versions/3.6/bin"
export PATH="$PATH:/Library/Frameworks/Python.framework/Versions/3.5/bin"
export PATH="$PATH:/Users/user84791850/Library/Python/2.7/bin"

# make mongo bin files available
export PATH="/usr/local/opt/mongodb-community@3.2/bin:$PATH"

# use 0.11 of terraform
export PATH="/usr/local/opt/terraform@0.11/bin:$PATH"

#THIS MUST BE AT THE END OF THE FILE FOR SDKMAN TO WORK!!!
export SDKMAN_DIR="$HOME/.sdkman"
[[ -s "$HOME/.sdkman/bin/sdkman-init.sh" ]] && source "$HOME/.sdkman/bin/sdkman-init.sh"

export JAVA_HOME=$(sdk home java 8.0.265.j9-adpt)
export PATH="$PATH:$(sdk home scala 2.13.3)/bin"

export PATH="$HOME/.poetry/bin:$PATH"
