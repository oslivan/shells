#!/usr/bin/env bash
# 参考：https://liyang85.github.io/compile-the-latest-vim-on-centos7.html
# yum list installed | grep -i vim
yum remove vim-enhanced vim-common vim-filesystem
yum install -y gcc make ncurses ncurses-devel git
yum install -y ctags git tcl-devel \
ruby    ruby-devel     \
lua     lua-devel      \
luajit  luajit-devel   \
python  python-devel   \
python3 python3-devel  \
perl    perl-devel     \
perl-ExtUtils-ParseXS  \
perl-ExtUtils-XSpp     \
perl-ExtUtils-CBuilder \
perl-ExtUtils-Embed
git clone https://github.com/vim/vim.git && cd vim
./configure --with-features=huge \
--enable-multibyte    \
--enable-rubyinterp   \
--enable-pythoninterp \
--enable-perlinterp   \
--enable-luainterp
make && make install
