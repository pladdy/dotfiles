if [ -f ~/.bashrc ]; then
  . ~/.bashrc
fi

if [ -f ~/.aliases ]; then
  . ~/.aliases
fi

# man ls and check LSCOLORS section
export CLICOLOR=1
export LSCOLORS=ExfxcxdxCxegedabagacad

export EDITOR=vim
export PS1='\[\e[0;33m\]\u\[\e[0m\]@\[\e[0;32m\]\h\[\e[0m\]:\[\e[0;96m\]\w\[\e[0m\]\$ '

