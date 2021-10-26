set nocompatible
set nu
syntax on
set tabstop=4
set shiftwidth=4
set expandtab
set incsearch
set hlsearch 
set termwinsize=12x0
set splitbelow 
 
call plug#begin('~/.vim/plugged')
Plug 'dracula/vim', { 'as': 'dracula' }	
Plug 'sheerun/vim-polyglot'
Plug 'tpope/vim-commentary'
Plug 'Yggdroot/indentLine'
Plug 'cohama/lexima.vim'
Plug 'alvan/vim-closetag'
Plug 'mattn/emmet-vim'
call plug#end()

colorscheme dracula

let g:indentLine_char = '▏'
let g:indentLine_enabled = 1
let g:lexima_enable_basic_rules = 1

