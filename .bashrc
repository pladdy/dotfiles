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
if command -v gls > /dev/null; then
  eval `/usr/local/bin/gdircolors -b`
fi

export EDITOR=vim

# man bash; check PROMPTING
export PS1="\\[${txtylw}\\]\u\\[${bldwht}\\]@\\[${txtgrn}\\]\h\\[${bldwht}\\]:\\[${bldpur}\\]\A\\[${bldwht}\\]:\\[${bldcyn}\\]\w\\[${txtrst}\\]$ "

eval "$(direnv hook bash)"
