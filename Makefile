all: .env
	./install
	./setup_vim
	./setup_python

.env:
	@echo GIT_HOST= | cat > .env
