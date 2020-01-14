if [ -f ~/.bashrc ]; then
    . ~/.bashrc
fi

export BASH_SILENCE_DEPRECATION_WARNING=1
export EDITOR=vim

# add local [s]bin
export PATH=/usr/local/bin:$PATH
export PATH=/usr/local/sbin:$PATH

export PATH="$HOME/.poetry/bin:$PATH"

eval "$(pyenv init -)"

