.PHONY: .env.local install

POETRY_VERSION=1.5.1

all: .env install setup-vim setup-python

.env:
	cp $@.local $@

clean:
	curl -sSL https://install.python-poetry.org | python3 - --uninstall

install: .env
	./install

poetry:
	curl -sSL https://install.python-poetry.org | POETRY_VERSION=$(POETRY_VERSION) python3 -

setup-python:
	./setup_python

setup-vim:
	./setup_vim
