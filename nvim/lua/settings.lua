-- Alias
local exec = vim.api.nvim_exec
local g = vim.g
local opt = vim.opt
local cmd = vim.cmd
local fn = vim.fn

-- Commands
opt.showmatch = true
opt.encoding = 'utf-8'
opt.ignorecase = false
opt.hlsearch = true
opt.incsearch = true
opt.tabstop = 2
opt.softtabstop = 2
opt.expandtab = true
opt.shiftwidth = 2
opt.autoindent = true
opt.rnu = false
opt.number = true
opt.mouse = 'a'
opt.ttyfast = true
opt.swapfile = false
opt.completeopt = { 'menu', 'menuone', 'noselect' }
opt.clipboard = 'unnamedplus'
