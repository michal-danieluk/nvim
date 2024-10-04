vim.g.mapleader = " "
vim.o.scrolloff = 8

vim.o.updatetime = 200
-- Better editor UI
vim.o.number = true
vim.o.numberwidth = 2
vim.o.relativenumber = true
vim.o.signcolumn = "yes"
vim.o.cursorline = true

-- Better editing experience
vim.o.expandtab = true
vim.o.smarttab = true
vim.o.cindent = true
vim.o.autoindent = true
vim.o.wrap = true
vim.o.textwidth = 300
vim.o.tabstop = 4
vim.o.shiftwidth = 4
vim.o.softtabstop = -1 -- If negative, shiftwidth value is used
vim.o.list = true
-- vim.o.listchars = "trail:·,nbsp:◇,tab:→ ,extends:▸,precedes:◂"
-- Makes neovim and host OS clipboard play nicely with each other
vim.o.clipboard = "unnamedplus"

-- Case insensitive searching UNLESS /C or capital in search
vim.o.ignorecase = true
vim.o.smartcase = true

vim.opt.conceallevel = 2
-- Set colorscheme
--vim.cmd [[colorscheme onedark]]
-- vim.cmd.colorscheme "catppuccin"

--vim.cmd()
vim.opt.clipboard = 'unnamedplus'

-- Set completeopt to have a better completion experience
vim.o.completeopt = 'menuone,noselect'

