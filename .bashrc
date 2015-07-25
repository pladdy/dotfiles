if [ -f ~/.aliases ]; then
  source ~/.aliases
fi

if [ -f ~/.functions ]; then
  source ~/.functions
fi

if [ -f ~/.colors ]; then
  source ~/.colors
fi

# man ls and check LSCOLORS section
export CLICOLOR=1
export LSCOLORS=ExGxcxdxCxegedabagacad

# if gdircolors is installed
if [ $(which gdircolors) ]; then
  eval `/usr/local/bin/gdircolors -b`
fi

export EDITOR=vim

# man bash; check PROMPTING
export PS1='\[\e[0;33m\]\u\[\e[0m\]@\[\e[0;32m\]\h\[\e[0m\]|\d \A:\[\e[0;96m\]\w\[\e[0m\]\$ '
export PS1="${txtylw}\u${bldwht}@${txtgrn}\h${bldwht}:${txtpur}\A${bldwht}:${txtcyn}\w${txtrst}$ "

