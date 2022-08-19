yum install python3 python3-devel ncurses-devel

wget https://github.com/vim/vim/archive/v8.2.5172.tar.gz

tar zxvf v8.2.5172.tar.gz

cd vim-8.2.5172
./configure --enable-multibyte --enable-pythoninterp=yes --enable-python3interp=yes
make
make install
