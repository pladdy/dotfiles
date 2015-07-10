# simple shell of a profile
if [ -f ~/.bashrc ]; then
  . ~/.bashrc
fi

if [ -f ~/.aliases ]; then
  . ~/.aliases
fi
