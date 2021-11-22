set nocompatible
set nu
set rnu
syntax on
set tabstop=2
set shiftwidth=2
set expandtab
set incsearch
set hlsearch 
set termwinsize=7x0
set splitbelow 
set mouse=a
set ttymouse=xterm2
set clipboard=unnamedplus
set cmdheight=1
 
call plug#begin('~/.vim/plugged')
Plug 'dracula/vim', { 'as': 'dracula' }	
Plug 'sheerun/vim-polyglot'
Plug 'tpope/vim-commentary'
Plug 'Yggdroot/indentLine'
Plug 'cohama/lexima.vim'
Plug 'alvan/vim-closetag'
Plug 'mattn/emmet-vim'
Plug 'ervandew/supertab'
call plug#end()

colorscheme dracula

let mapleader = " "

let g:closetag_filenames = '*.html,*.xhtml,*.phtml,*.jsx,*.js'
let g:closetag_shortcut = '>'

let g:indentLine_char = '▏'
let g:indentLine_enabled = 1
let g:lexima_enable_basic_rules = 1

nmap <expr> <Leader>s '/' . nr2char(getchar()) . nr2char(getchar()) . '<CR>'

nmap c ci
nmap <s-k> 10k
nmap <s-j> 10j
nmap <leader>o :e %:p:h<CR>
nmap <leader>b :ls<CR>:b
nmap <leader>x :ls<CR>:bd
nmap <leader>w :w<CR>
nmap <leader>q :q<CR>
nmap <leader>c :Commentary<CR>
vmap <leader>y :w !xclip

