.PHONY: .env.local install

POETRY_VERSION=1.3.1

all: .env install setup-vim setup-python

.env:
	cp $@.local $@

install:
	./install

setup-python:
	./setup_python

setup-vim:
	./setup_vim
