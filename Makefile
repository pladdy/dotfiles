all: .env
	./install
	./setup_vim

.env:
	@echo GIT_HOST= | cat > .env
