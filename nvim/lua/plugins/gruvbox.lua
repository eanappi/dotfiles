local g = vim.g
local o = vim.o

o.background = "dark" -- or "light" for light mode
g.gruvbox_transparent_bg = 0
g.gruvbox_termcolors = 256
g.gruvbox_contrast_dark = 'hard' -- soft, medium, hard

vim.cmd([[colorscheme gruvbox]])
