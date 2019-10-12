if [ -f ~/.bashrc ]; then
    . ~/.bashrc
fi

export BASH_SILENCE_DEPRECATION_WARNING=1
export EDITOR=vim
export GOPATH=$HOME/dev/go

# add sbin
export PATH=/usr/local/sbin:$PATH
# add gopath
export PATH=$GOPATH/bin:$PATH
# add python
export PATH=~/Library/Python/3.7/bin:$PATH

eval "$(rbenv init -)"

# example brew path manipulations for different go versions
# export PATH="/usr/local/opt/go@1.9/bin:$PATH"
