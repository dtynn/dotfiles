PWD := $(shell pwd)

link-vim:
	ln -s $(PWD)/.vim ~/.vim

link-helix:
	mkdir -p ~/.config
	ln -s $(PWD)/helix ~/.config/helix

submodule:
	git submodule update --init --recursive

compile-markdown-preview:
	cd ./.vim/pack/plugins/start/markdown-preview.nvim && yarn install && yarn build
