PWD := $(shell pwd)

compile-ycm:
	cd ./.vim/pack/plugins/start/YouCompleteMe && git submodule update --init --recursive && ./install.py

link-rls:
	mkdir -p ./.vim/pack/plugins/start/YouCompleteMe/third_party/ycmd/third_party/rls/bin
	ln -s $(shell which rls) ./.vim/pack/plugins/start/YouCompleteMe/third_party/ycmd/third_party/rls/bin/rls

link-gopls:
	mkdir -p ./.vim/pack/plugins/start/YouCompleteMe/third_party/ycmd/third_party/go/src/golang.org/x/tools/cmd/gopls/
	ln -s $(shell which gopls) ./.vim/pack/plugins/start/YouCompleteMe/third_party/ycmd/third_party/go/src/golang.org/x/tools/cmd/gopls/gopls
