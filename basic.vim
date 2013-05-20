set nocompatible                          " 与vi不兼容
filetype off                              " required!
set rtp+=$HOME/.vim/
set rtp+=$HOME/.vim/resource/php-manual/
set rtp+=$HOME/.vim/bundle/vundle/
call vundle#rc()

Bundle 'gmarik/vundle'

Bundle 'Shougo/neocomplcache.git'
Bundle 'godlygeek/tabular.git'
Bundle 'Lokaltog/vim-powerline.git'
Bundle 'vim-scripts/FuzzyFinder.git'
Bundle 'scrooloose/syntastic.git'
Bundle 'scrooloose/nerdtree.git'
Bundle 'scrooloose/nerdcommenter.git'
Bundle 'vim-scripts/L9.git'
Bundle 'kien/ctrlp.vim.git'
Bundle 'shawncplus/php.vim.git'
Bundle 'vim-scripts/LargeFile.git'
Bundle 'nono/jquery.vim.git'
Bundle 'msanders/snipmate.vim.git'
Bundle 'tpope/vim-surround.git'
Bundle 'vim-scripts/Tagbar.git'
filetype plugin indent on                 " required!

let mapleader=","
let g:mapleader =","
set history=100
syntax on                                 " 语法高亮开启
set tabstop=4                             " tab的长度
set fileencodings=utf8,cp936,gb18030,big5
set termencoding=utf-8                    " 界面显示编码
set encoding=utf-8
set number                                " 显示行号
set tag=tags;                             " 听说分号不能少
set nobomb                                " 去掉utf-8 bom 头
set backspace=2                           " 不知道
set cindent                               " 自动缩进
set smarttab                              " 智能tab
set t_Co=256                              " 终端下设置成256色
set smartcase
set hlsearch                              " 高亮搜索文本
set ignorecase
" set smartindent
set shiftwidth=4                          " 自动缩进
set guifont=Monaco\ 10         " 字体
set pumheight=15
set completeopt=longest,menu
set undofile
set incsearch
set autoindent
set laststatus=2
set directory=$HOME/.vim/tmp/swp_files    " 设置swp文件路径
set undodir=$HOME/.vim/tmp/undofiles
set ballooneval
set balloondelay=200
set viewoptions=folds
set foldminlines=10
colorscheme jellybeans                    " 颜色模式
set backupdir=$HOME/.vim/tmp/swp_files

so $HOME/.vim/ext.vim
if(has("win32") || has("win64"))
	so $HOME/.vim/windows.vim
endif
