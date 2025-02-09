vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1

-- enable 24-bit colour
vim.opt.termguicolors = true
vim.cmd 'colorscheme catppuccin-mocha'
vim.cmd 'set relativenumber'

-- fully disables the mouse
vim.opt.cursorline = false
vim.opt.mouse = ""

-- use spaces to separate
vim.o.expandtab = true
-- automatically indent
vim.o.smartindent = true
-- show tabs as 4 spaces
vim.o.tabstop = 4
-- indent always with 4 spaces
vim.o.shiftwidth = 4

-- show hidden characters
vim.o.list = true
vim.o.listchars = "tab:→ ,space:·,trail:·,nbsp:·,extends:>,precedes:<"

