brew install --HEAD universal-ctags/universal-ctags/universal-ctags
brew install cscope

mkdir ~/src/
cd ~/src/
git clone https://github.com/vim/vim.git
cd ~/src/vim/
git pull

make distclean
./configure --with-features=huge \
            --enable-cscope \
            --enable-multibyte \
            --enable-rubyinterp=yes \
            --enable-python3interp=yes \
            --with-python3-config-dir=$(python3-config --configdir) \
            --enable-perlinterp=yes \
            --enable-luainterp=yes \
            --enable-gui=gtk2 \
            --enable-cscope \
            --prefix=/usr/local
make
sudo make install
