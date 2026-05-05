vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1

-- enable 24-bit color
vim.opt.termguicolors = true
vim.opt.relativenumber = false

-- color scheme
vim.cmd.colorscheme "catppuccin-mocha"

-- fully disables the mouse
vim.opt.cursorline = false
vim.opt.mouse = ""

-- use spaces to separate
vim.opt.expandtab = true
-- automatically indent
vim.opt.smartindent = true
-- show tabs as 4 spaces
vim.opt.tabstop = 4
-- indent always with 4 spaces
vim.opt.shiftwidth = 4
-- show line number
vim.opt.number = true

-- show hidden characters
vim.opt.list = true
vim.opt.listchars = "tab:→ ,space:·,trail:·,nbsp:·,extends:>,precedes:<,eol:↴"

-- spellchecking
vim.opt.spell = true

-- leader definitions
vim.g.mapleader = " "
