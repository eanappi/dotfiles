syntax on
set title
filetype indent on
filetype plugin on
set nocompatible
set rnu
set mouse=a
set numberwidth=1
set clipboard=unnamed
set showcmd
set ruler
set encoding=utf-8
set showmatch
set tabstop=2
set shiftwidth=2
set expandtab
set incsearch
set nohlsearch 
set splitbelow 
set clipboard=unnamedplus
set guioptions+=a
set cmdheight=1
set autoindent
" set smartindent
set nobackup
set nowrap
set smartcase
set noswapfile
set laststatus=2

call plug#begin(stdpath('data') . '/plugged')
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'Yggdroot/indentLine'
Plug 'sheerun/vim-polyglot'
Plug 'dracula/vim', { 'as': 'dracula' }
Plug 'tpope/vim-commentary'
Plug 'cohama/lexima.vim'
Plug 'alvan/vim-closetag'
Plug 'mattn/emmet-vim'
Plug 'ervandew/supertab'
Plug 'morhetz/gruvbox'
call plug#end()

" Plugins config
let g:gruvbox_transparent_bg = 1
let g:gruvbox_contrast_light = 'hard'
let g:gruvbox_contrast_dark = 'hard'
let g:gruvbox_bold = 1
set background=dark    " Setting dark mode
" set background=light   " Setting light mode

colorscheme gruvbox
" colorscheme dracula


let g:closetag_filenames = '*.html,*.xhtml,*.phtml,*.jsx,*.js,*.php'
let g:closetag_shortcut = '>'

let g:indentLine_char = '▏'
let g:indentLine_enabled = 1
let g:indentLine_fileTypeExclude = ['text', 'sh', 'help', 'terminal']
let g:indentLine_bufNameExclude = ['NERD_tree.*', 'term:.*']

let g:lexima_enable_basic_rules = 1

set rtp+=~/.fzf
let g:fzf_layout = { 'down': '~30%'}
" let g:fzf_layout = { 'left': '~30%'}

" au Filetype markdown set cole=0

" Own mapping
let mapleader = " "

nmap <expr> <Leader>s '/' . nr2char(getchar()) . nr2char(getchar()) . '<CR>'
nmap <silent> <leader>n :noh<CR>
nmap c ci

nmap <leader>o :tabe %:p:h<CR>
nmap <leader>t :term<CR>
nmap <leader>w :w<CR>
nmap <leader>q :q<CR>
nmap <leader>c :Commentary<CR>
vmap <leader>c :Commentary<CR>

nmap <F2> :call fzf#run(fzf#wrap({'source': 'find ' . expand('%:p:h') . '  -type f ! -path "*/node_modules/*"'}))<CR>
