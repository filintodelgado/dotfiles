-- Tree
vim.keymap.set('n', '<A-h>', ':NvimTreeFocus<CR>', { noremap = true, silent = true })
vim.keymap.set('n', '<A-l>', ':NvimTreeClose<CR>', { noremap = true, silent = true })

-- Telescope
local builtin = require('telescope.builtin')
function find_files()
    builtin.find_files({
        hidden=true
    })
end
function live_grep()
    builtin.live_grep({
        additional_args = { "--hidden" },
    })
end
vim.keymap.set('n', '<C-p>', ':Telescope<CR>', { desc = 'Telescope' })
vim.keymap.set('n', '<C-o>', find_files, { desc = 'Telescope find files' })
vim.keymap.set('n', '<C-f>', live_grep, { desc = 'Telescope live grep' })
vim.keymap.set('n', '<A-o>', builtin.buffers, { desc = 'Telescope buffers' })

-- Neogit
vim.keymap.set('n', '<leader>gg', '<cmd>Neogit<cr>', { desc = 'Show Neogit UI'})
