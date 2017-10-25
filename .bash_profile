if [ -f ~/.bashrc ]; then
    . ~/.bashrc
fi

export EDITOR=vim
export GOPATH=$HOME/dev/go
export PATH=$PATH:$GOPATH/bin

eval "$(rbenv init -)"
eval "$(pyenv init -)"
