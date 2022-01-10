syntax on
set title
filetype indent on
filetype plugin on
set nocompatible
set rnu
set nu
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
" set autoindent
set smartindent
set nobackup
set nowrap
set smartcase
set noswapfile
set laststatus=0

call plug#begin(stdpath('data') . '/plugged')
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'Yggdroot/indentLine'
Plug 'sheerun/vim-polyglot'
Plug 'dracula/vim', { 'as': 'dracula' }
Plug 'tpope/vim-commentary'
Plug 'cohama/lexima.vim'
Plug 'alvan/vim-closetag'
Plug 'mattn/emmet-vim'
" Plug 'ervandew/supertab'
Plug 'morhetz/gruvbox'
Plug 'tanvirtin/monokai.nvim'
Plug 'neoclide/coc.nvim', {'branch': 'release'}
call plug#end()

" Plugins config
let g:gruvbox_transparent_bg = 1
let g:gruvbox_contrast_light = 'hard'
let g:gruvbox_contrast_dark = 'hard'
let g:gruvbox_bold = 1
set background=dark    " Setting mode dark / light

colorscheme monokai

let g:closetag_filenames = '*.html,*.xhtml,*.phtml,*.jsx,*.js,*.php'
let g:closetag_shortcut = '>'

let g:indentLine_char = '▏'
let g:indentLine_enabled = 1
let g:indentLine_fileTypeExclude = ['text', 'sh', 'help', 'terminal']
let g:indentLine_bufNameExclude = ['NERD_tree.*', 'term:.*']

let g:lexima_enable_basic_rules = 1

set rtp+=~/.fzf
let g:fzf_layout = { 'down': '~30%'}

"" COC
let g:coc_global_extensions = ['coc-json', 'coc-html', 'coc-css', 'coc-cssmodules', 'coc-emmet', 'coc-html-css-support', 'coc-tailwindcss', 'coc-tsserver', 'coc-yaml']

" Own mapping
let mapleader = " "

"" Edit nvim config
nmap <leader>ve :edit ~/.config/nvim/init.vim<CR>

"" Mapping keys
nmap <expr> <Leader>s '/' . nr2char(getchar()) . nr2char(getchar()) . '<CR>'
nmap <silent> <leader>n :noh<CR>
nmap c ci
nmap t :tabnext<CR>
nmap T :tabprevious<CR>
nmap <leader>o :tabe %:p:h<CR>
nmap <leader>w :w<CR>
nmap <leader>q :q<CR>
nmap <leader>c :Commentary<CR>
vmap <leader>c :Commentary<CR>

"" Commands
command Wrap :set wrap
command Nowrap :set nowrap

