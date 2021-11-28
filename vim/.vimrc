filetype indent on
set nocompatible
set nu
syntax on
set tabstop=2
set shiftwidth=2
set expandtab
set incsearch
" set nohlsearch 
set termwinsize=7x0
set splitbelow 
set mouse=a
set ttymouse=xterm2
set clipboard=unnamedplus
set guioptions+=a
set cmdheight=1
set laststatus=1
set smartindent
set nobackup
set nowrap
set smartcase
set noswapfile
 
call plug#begin('~/.vim/plugged')
Plug 'dracula/vim', { 'as': 'dracula' }	
Plug 'sheerun/vim-polyglot'
Plug 'tpope/vim-commentary'
Plug 'Yggdroot/indentLine'
Plug 'cohama/lexima.vim'
Plug 'alvan/vim-closetag'
Plug 'mattn/emmet-vim'
Plug 'ervandew/supertab'
Plug 'leafOfTree/vim-imagine'
call plug#end()

colorscheme dracula

let mapleader = " "

let g:closetag_filenames = '*.html,*.xhtml,*.phtml,*.jsx,*.js,*.php'
let g:closetag_shortcut = '>'

let g:indentLine_char = '▏'
let g:indentLine_enabled = 1
let g:lexima_enable_basic_rules = 1

nmap <expr> <Leader>s '/' . nr2char(getchar()) . nr2char(getchar()) . '<CR>'
nmap <silent> <leader>n :noh<CR>
nmap c ci
noremap k 10k
noremap j 10j
nmap <leader>o :tabe %:p:h<CR>
nmap <leader>w :w<CR>
nmap <leader>q :q<CR>
nmap <leader>c :Commentary<CR>
vmap <leader>c :Commentary<CR>
