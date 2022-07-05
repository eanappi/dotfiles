set nocompatible            " disable compatibility to old-time vi
set showmatch               " show matching 
set encoding=utf-8
set ignorecase              " case insensitive 
set mouse=v                 " middle-click paste with 
set hlsearch                " highlight search 
set incsearch               " incremental search
set tabstop=2               " number of columns occupied by a tab 
set softtabstop=2           " see multiple spaces as tabstops so <BS> does the right thing
set expandtab               " converts tabs to white space
set shiftwidth=2            " width for autoindents
set autoindent              " indent a new line the same amount as the line just typed
set rnu                  " add line numbers
" set wildmode=longest,list   " get bash-like tab completions
set cc=80                  " set an 80 column border for good coding style
filetype plugin indent on   "allow auto-indenting depending on file type
syntax on                   " syntax highlighting
set mouse=a                 " enable mouse click
set clipboard=unnamedplus   " using system clipboard
filetype plugin on
" set cursorline              " highlight current cursorline
set ttyfast                 " Speed up scrolling in Vim
" set spell                 " enable spell check (may need to download language package)
set noswapfile            " disable creating swap file
" set backupdir=~/.cache/vim " Directory to store backup files.

call plug#begin()
Plug 'dracula/vim', { 'as': 'dracula' }
" Plug 'sainnhe/gruvbox-material'
Plug 'sheerun/vim-polyglot'
Plug 'neovim/nvim-lspconfig'
Plug 'hrsh7th/cmp-nvim-lsp'
Plug 'hrsh7th/cmp-buffer'
Plug 'hrsh7th/cmp-path'
Plug 'hrsh7th/cmp-cmdline'
Plug 'hrsh7th/nvim-cmp'
Plug 'mattn/emmet-vim'
Plug 'sbdchd/neoformat'
Plug 'terrortylor/nvim-comment'
Plug 'tpope/vim-surround'
Plug 'windwp/nvim-autopairs'
call plug#end()

" ----> Theme
set background=dark
colorscheme dracula
" let g:gruvbox_material_background='medium'
" colorscheme gruvbox-material

lua << EOF
----> LSP
local cmp = require'cmp'

cmp.setup({
    window = {
      -- completion = cmp.config.window.bordered(),
      -- documentation = cmp.config.window.bordered(),
    },
    mapping = cmp.mapping.preset.insert({
      ['<C-b>'] = cmp.mapping.scroll_docs(-4),
      ['<C-f>'] = cmp.mapping.scroll_docs(4),
      ['<C-Space>'] = cmp.mapping.complete(),
      ['<C-e>'] = cmp.mapping.abort(),
      ['<CR>'] = cmp.mapping.confirm({ select = true }), -- Accept currently selected item. Set `select` to `false` to only confirm explicitly selected items.
    }),
    sources = cmp.config.sources({
      { name = 'nvim_lsp' },
    }, {
      { name = 'buffer' },
    })
  })

 -- Use buffer source for `/` (if you enabled `native_menu`, this won't work anymore).
  cmp.setup.cmdline('/', {
    mapping = cmp.mapping.preset.cmdline(),
    sources = {
      { name = 'buffer' }
    }
  })

  -- Use cmdline & path source for ':' (if you enabled `native_menu`, this won't work anymore).
  cmp.setup.cmdline(':', {
    mapping = cmp.mapping.preset.cmdline(),
    sources = cmp.config.sources({
      { name = 'path' }
    }, {
      { name = 'cmdline' }
    })
  })

  -- Setup lspconfig.
  local capabilities = require('cmp_nvim_lsp').update_capabilities(vim.lsp.protocol.make_client_capabilities())
  capabilities.textDocument.completion.completionItem.snippetSupport = true

  require'lspconfig'.html.setup {
    capabilities = capabilities
  }
  require'lspconfig'.tsserver.setup {
    capabilities = capabilities
  }
  require'lspconfig'.tailwindcss.setup{}

----> Comments
require'nvim_comment'.setup()
require("nvim-autopairs").setup {}
EOF

" ----> EMMET
let g:user_emmet_mode='n'
let g:user_emmet_leader_key=','
let g:user_emmet_settings={'javascript':{'extends':'jsx'}}

" ----> Prettier
autocmd BufWritePre,TextChanged,InsertLeave *.js Neoformat
autocmd BufWritePre,TextChanged,InsertLeave *.jsx Neoformat
