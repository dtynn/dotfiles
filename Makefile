PWD := $(shell pwd)

compile-ycm:
	cd ./.vim/pack/plugins/start/YouCompleteMe && git submodule update --init --recursive && ./install.py
