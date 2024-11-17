if [ -f ~/.bashrc ]; then
    . ~/.bashrc
fi

# initialize PATH
export PATH=/usr/local/bin:/System/Cryptexes/App/usr/bin:/usr/bin:/bin:/usr/sbin:/sbin

# golang tools get installed here
export PATH=$PATH:$HOME/bin

# add local [s]bin to end of path
export PATH=$PATH:/usr/local/bin:/usr/local/sbin

# python (poetry, pipx)
export PATH="$PATH:$HOME/.local/bin"

# TODO: set up PYTHONSTARTUP to personalize the prompt in python ide
# https://arpitbhayani.me/blogs/python-prompts

export PATH="$PATH:$GOPATH/bin"
