"Brandon's vimrc

filetype plugin indent on

" settings
set colorcolumn=80
set cursorline
set hlsearch
set showcmd
set ignorecase
set nowrap
set number
set ruler
set tabstop=4
set shiftwidth=4
set expandtab
set backspace=indent,eol,start

" markdown highlighting on .md files
au BufRead,BufNewFile *.md set filetype=markdown

" theme
syntax enable
set background=dark
set t_Co=256

syntax on
colorscheme jellybeans


" jk instead of escape
:imap jk <Esc>

" NERDTree commands
:command NT NERDTree .
map <C-h> <C-w>h
map <C-l> <C-w>l
map <C-j> <C-w>j
map <C-k> <C-w>k
map = <C-w>>
map - <C-w><
let g:NERDTreeHighlightCursorline = 1
let g:NERDTreeDirArrows = 0
let g:NERDTreeWinSize = 30
let g:NERDTreeIgnore = ['tmp', '.pyc', '.swp']
let NERDTreeShowHidden = 0


" auto-open NERDTree if vim is run without commands
autocmd vimenter * if !argc() | NERDTree | endif
