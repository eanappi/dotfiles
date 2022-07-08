local fn = vim.fn
local install_path = fn.stdpath('data')..'/site/pack/packer/start/packer.nvim'
if fn.empty(fn.glob(install_path)) > 0 then
  packer_bootstrap = fn.system({'git', 'clone', '--depth', '1', 'https://github.com/wbthomason/packer.nvim', install_path})
end

return require('packer').startup(function()
  use 'wbthomason/packer.nvim'
  use {'dracula/vim', as = 'dracula'}
  use 'windwp/nvim-autopairs'
  use 'neovim/nvim-lspconfig'
  use 'hrsh7th/cmp-nvim-lsp'
  use 'hrsh7th/cmp-buffer'
  use 'hrsh7th/cmp-path'
  use 'hrsh7th/cmp-cmdline'
  use 'hrsh7th/nvim-cmp'
  use 'ur4ltz/surround.nvim'
  use 'sheerun/vim-polyglot'
  use 'sbdchd/neoformat'
  use 'Yggdroot/indentLine'
  use 'mattn/emmet-vim'

  if packer_bootstrap then
    require('packer').sync()
  end
end)