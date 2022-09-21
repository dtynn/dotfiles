PWD := $(shell pwd)

compile-ycm:
	cd ./.vim/pack/plugins/start/YouCompleteMe && git submodule update --init --recursive && ./install.py

link-vim:
	ln -s $(PWD)/.vim ~/.vim

submodule:
	git submodule update --init --recursive
