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
set conceallevel=0

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
Plug 'arcticicestudio/nord-vim'
Plug 'neoclide/coc.nvim', {'branch': 'release'}
call plug#end()

" Plugins config
let g:gruvbox_transparent_bg = 1
let g:gruvbox_contrast_light = 'hard'
let g:gruvbox_contrast_dark = 'hard'
let g:gruvbox_bold = 1
set background=dark    " Setting mode dark / light

colorscheme nord

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
let g:coc_global_extensions = ['coc-json', 'coc-html', 'coc-css', 'coc-cssmodules', 'coc-emmet', 'coc-html-css-support', 'coc-tailwindcss', 'coc-tsserver', 'coc-yaml', 'coc-rust-analyzer']

" Own mapping
let mapleader = " "

nmap <silent> gd <Plug>(coc-definition)
nmap <silent> gy <Plug>(coc-type-definition)
nmap <silent> gi <Plug>(coc-implementation)
nmap <silent> gr <Plug>(coc-references)

nnoremap <silent> K :call <SID>show_documentation()<CR>

function! s:show_documentation()
  if (index(['vim','help'], &filetype) >= 0)
    execute 'h '.expand('<cword>')
  else
    call CocAction('doHover')
  endif
endfunction

" Use tab for trigger completion with characters ahead and navigate.
" NOTE: Use command ':verbose imap <tab>' to make sure tab is not mapped by
" other plugin before putting this into your config.
inoremap <silent><expr> <TAB>
  \ pumvisible() ? "\<C-n>" :
  \ <SID>check_back_space() ? "\<TAB>" :
  \ coc#refresh()
inoremap <expr><S-TAB> pumvisible() ? "\<C-p>" : "\<C-h>"

function! s:check_back_space() abort
  let col = col('.') - 1
  return !col || getline('.')[col - 1]  =~# '\s'
endfunction

" Use <c-space> to trigger completion.
if has('nvim')
  inoremap <silent><expr> <c-space> coc#refresh()
else
  inoremap <silent><expr> <c-@> coc#refresh()
endif

" Make <CR> auto-select the first completion item and notify coc.nvim to
" format on enter, <cr> could be remapped by other vim plugin
inoremap <silent><expr> <cr> pumvisible() ? coc#_select_confirm()
  \: "\<C-g>u\<CR>\<c-r>=coc#on_enter()\<CR>"

" Highlight the symbol and its references when holding the cursor.
autocmd CursorHold * silent call CocActionAsync('highlight')

" Symbol renaming.
nmap <leader>rn <Plug>(coc-rename)

"" Mapping keys
nmap <expr> <leader>s '/' . nr2char(getchar()) . nr2char(getchar()) . '<CR>'
nmap <silent> <leader>n :noh<CR>
nmap c ci
nmap <leader>o :tabe %:p:h<CR>
nmap <leader>v :vs %:p:h<CR>
nmap <leader>w :w<CR>
nmap <leader>q :q<CR>
nmap <leader>c :Commentary<CR>
vmap <leader>c :Commentary<CR>


"" Commands
command Wrap :set wrap
command Nowrap :set nowrap

"" Autoconfig
au BufNewFile,BufRead *.md set conceallevel=0
