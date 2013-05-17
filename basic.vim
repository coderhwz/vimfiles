set nocompatible                          " ��vi������
filetype off                              " required!
"set rtp+=$HOME/.vim/
"set rtp+=$HOME/.vim/resource/php-manual/
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
syntax on                                 " �﷨��������
set tabstop=4                             " tab�ĳ���
set fileencodings=utf8,cp936,gb18030,big5
set termencoding=utf-8                    " ������ʾ����
set encoding=utf-8
set number                                " ��ʾ�к�
set tag=tags;                             " ��˵�ֺŲ�����
set nobomb                                " ȥ��utf-8 bom ͷ
set backspace=2                           " ��֪��
set cindent                               " �Զ�����
set smarttab                              " ����tab
set t_Co=256                              " �ն������ó�256ɫ
set smartcase
set hlsearch                              " ���������ı�
set ignorecase
" set smartindent
set shiftwidth=4                          " �Զ�����
set guifont=Monaco\ 10         " ����
set pumheight=15
set completeopt=longest,menu
set undofile
set incsearch
set autoindent
set laststatus=2
set directory=$HOME/.vim/tmp/swp_files    " ����swp�ļ�·��
set undodir=$HOME/.vim/tmp/undofiles
set ballooneval
set balloondelay=200
set viewoptions=folds
set foldminlines=10
colorscheme jellybeans                    " ��ɫģʽ

so $HOME/.vim/ext.vim
if(has("win32") || has("win64"))
	so $HOME/.vim/windows.vim
endif
