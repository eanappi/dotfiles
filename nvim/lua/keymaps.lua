local default_opts = { noremap = true, silent = true }
local map = vim.api.nvim_set_keymap
local cmd = vim.cmd
local g = vim.g
local fn = vim.fn


-- Mapping
g.mapleader = ' '

-- Remapping
-- map('n', '<leader>o', '<cmd>tabedit %:p:h<CR>', default_opts)
map('n', '<leader>o', '<cmd>NvimTreeToggle<CR>', default_opts)
map('n', '<leader>q', '<cmd>quit<CR>', default_opts)
map('n', '<leader>w', '<cmd>write<CR>', default_opts)
map('n', '<leader>l', '<cmd>luafile %<CR>', default_opts)
map('n', '<leader>f', '<cmd>!standard --fix %<CR>', default_opts)
map('n', '<leader>n', '<cmd>nohl<CR>', default_opts)

map('n', 'J', '10j', default_opts)
map('n', 'K', '10k', default_opts)
