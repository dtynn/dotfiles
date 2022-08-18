yum install python3 python3-devel ncurses-devel

wget https://github.com/vim/vim/archive/v8.1.1719.tar.gz

tar zxvf v8.1.1719.tar.gz

cd vim-8.1.1719
./configure --enable-multibyte --enable-pythoninterp=yes --enable-python3interp=yes
make
make install
