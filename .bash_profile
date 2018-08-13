if [ -f ~/.bashrc ]; then
    . ~/.bashrc
fi

export EDITOR=vim
export GOPATH=$HOME/dev/go
export PATH=$PATH:$GOPATH/bin

eval "$(rbenv init -)"
eval "$(pyenv init -)"

# example brew path manipulations for different go versions
# export PATH="/usr/local/opt/go@1.9/bin:$PATH"
