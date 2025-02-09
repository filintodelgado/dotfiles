-- Tree
vim.keymap.set('n', '<A-h>', ':NvimTreeFocus<CR>', { noremap = true, silent = true })
vim.keymap.set('n', '<A-l>', ':NvimTreeClose<CR>', { noremap = true, silent = true })

-- Telescope
local builtin = require('telescope.builtin')
vim.keymap.set('n', '<C-p>', ':Telescope<CR>', { desc = 'Telescope' })
vim.keymap.set('n', '<A-f>', builtin.find_files, { desc = 'Telescope find files' })
vim.keymap.set('n', '<C-f>', builtin.live_grep, { desc = 'Telescope live grep' })
vim.keymap.set('n', '<C-o>', builtin.buffers, { desc = 'Telescope buffers' })
