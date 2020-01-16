if [ -f ~/.bashrc ]; then
    . ~/.bashrc
fi

export BASH_SILENCE_DEPRECATION_WARNING=1
export EDITOR=vim

# add local [s]bin
export PATH=/usr/local/bin:$PATH
export PATH=/usr/local/sbin:$PATH

# python (poetry, pipx)
export PATH="$HOME/.poetry/bin:$PATH"
export PATH="$PATH:/Users/user84791850/.local/bin"


