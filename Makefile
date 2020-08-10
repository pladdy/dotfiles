.PHONY: .env.local

POETRY_VERSION=1.0.9

all: .env install setup-vim setup-python

.env:
	cp $@.local $@

clean:
	curl -sSL https://raw.githubusercontent.com/python-poetry/poetry/$(POETRY_VERSION)/get-poetry.py | POETRY_UNINSTALL=1 python

install:
	./install

poetry:
	curl -sSL https://raw.githubusercontent.com/python-poetry/poetry/$(POETRY_VERSION)/get-poetry.py | POETRY_VERSION=$(POETRY_VERSION) python

setup-python:
	./setup_python

setup-vim:
	./setup_vim
