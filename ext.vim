"窗体设置
if has("gui_running")
	set lines=28
	set columns=117
	set guioptions-=m     " 去掉menu
	set guioptions-=T     " 去掉toolbar
	set guioptions-=L     " 隐藏左侧滚动条
	set guioptions-=r     " 显示右侧滚动条
	winpos 260 171
endif

nnoremap <C-Right> :bn<CR>
nnoremap <C-Left> :bp<CR>
nnoremap <leader>s :w<CR>
" nnoremap <leader>ff :FufFile<CR>
" nnoremap <leader>fb :FufBuffer<CR>
nnoremap <leader>f :CtrlP<CR>
nnoremap <leader>b :CtrlPBuffer<CR>
nnoremap <F2> :NERDTreeToggle<CR>
nnoremap <S-F2> :NERDTreeMirror<CR>

map <C-j> <C-w>j
map <C-k> <C-w>k
map <C-h> <C-w>h
map <C-l> <C-W>l
" 快捷键
nmap <Up> <c-w>k
nmap <Down> <c-w>j
nmap <Right> <c-w>l
nmap <Left> <c-w>h
inoremap ( ()<LEFT>
inoremap [ []<LEFT>
inoremap { {}<LEFT>
inoremap < <><LEFT>

nmap <Leader>a= :Tabularize /=<CR>
vmap <Leader>a= :Tabularize /=<CR>
nmap <Leader>a: :Tabularize /:\zs<CR>
vmap <Leader>a: :Tabularize /:\zs<CR>

let g:syntastic_check_on_open=1
let snips_author='hwz'                                                             " 代码片段的作者

"""""""""""""""""""""""""""NERDTree""""""""""""""""""""""
let NERDTreeShowBookmarks   = 0
let NERDTreeWinPos          = "left"
let NERDTreeHijackNetrw     = 1
let NERDTreeQuitOnOpen      = 0
let NERDTreeWinSize         = 30
let NERDTreeChDirMode       = 2
let NERDTreeDirArrows       = 0 
let NERDTreeMinimalUI       = 0
let NERDChristmasTree       = 1
let NERDTreeShowLineNumbers = 1

let php_folding=3
let makeelementsuf = '\\\' " 把;;-->,,,


"""""""""""""""""""""""""""Neocomplcache """""""""""""""""
let g:neocomplcache_enable_at_startup = 1
let g:neocomplcache_enable_smart_case = 0
" let g:neocomplcache_enable_camel_case_completion = 1  "
" 这个导致输入大写字母时卡起来
" let g:neocomplcache_enable_underbar_completion = 1
let g:neocomplcache_min_syntax_length = 2
let g:neocomplcache_enable_auto_select = 1
let g:neocomplcache_enable_ignore_case=0
let g:neocomplcache_source_rank = {
			\ 'snippets_complete' : 100,
			\ }
" " \ 'abbrev_complete' : 50,

autocmd FileType css setlocal omnifunc=csscomplete#CompleteCSS
autocmd FileType php setlocal omnifunc=phpcomplete#CompletePHP

"""""""""""""""""""""""""""Neocomplcache end """""""""""""""""

"""""""""""""""""""""""""""Status Bar """""""""""""""""

let g:fuf_dataDir="$HOME/.vim/tmp/fuf-data"
let g:ctrlp_cache_dir="$HOME/.vim/tmp/ctrlp"
let g:snippets_dir="$HOME/.vim/resource/snippets_hwz/" "代码片段的
let g:neocomplcache_temporary_dir="$HOME/.vim/tmp/neocomplcache"

""""""""""""""""""""""""""NERD_commenter """"""""""""""""
let NERDMenuMode=0
let NERDSpaceDelims=1
""""""""""""""""""""""""""NERD_commenter END """"""""""""""""

autocmd FileType nerdtree noremap <buffer> <C-Right> <nop>
autocmd FileType nerdtree noremap <buffer> <C-Left> <nop>
" autocmd FileType nerdtree noremap <buffer> <leader>f <nop>
" autocmd FileType nerdtree noremap <buffer> <leader>bu <nop>
autocmd BufNewFile,Bufread *.ros,*.inc,*.php set keywordprg="help"
autocmd BufWinLeave * silent! mkview
autocmd BufWinEnter * silent! loadview
autocmd FileType php setlocal dict+=$HOME/.vim/resource/php.dict
autocmd FileType php setlocal dict+=$HOME/.vim/resource/wp.dict
autocmd FileType c setlocal dict+=$HOME/.vim/resource/gtk.c.dict
autocmd BufRead,BufNewFile *.js set ft=javascript syntax=jquery

if has('unix')
let g:ctrlp_user_command =
    \ 'find %s -type f | grep -v -P "\.png$|\.jpg|\.gif|\.bmp|\.so|tags|/tmp/|/\.hg/|/\.git/"'          " MacOSX/Linux
endif
