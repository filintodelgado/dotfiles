-- Tree
vim.keymap.set('n', '<A-h>', ':NvimTreeFocus<CR>', { noremap = true, silent = true })
vim.keymap.set('n', '<A-l>', ':NvimTreeClose<CR>', { noremap = true, silent = true })

-- Telescope
local builtin = require('telescope.builtin')
function find_files()
    builtin.find_files({
        hidden = true
    })
end

function live_grep()
    builtin.live_grep({
        additional_args = { "--hidden" },
    })
end

vim.keymap.set('n', '<A-p>', ':Telescope<CR>', { desc = 'Telescope', nowait = true, silent = true })
vim.keymap.set('n', '<C-p>', find_files, { desc = 'Telescope find files' })
vim.keymap.set('n', '<C-f>', live_grep, { desc = 'Telescope live grep' })
vim.keymap.set('n', '<C-o>', builtin.buffers, { desc = 'Telescope buffers' })

-- Neogit
vim.keymap.set('n', '<leader>gg', '<cmd>Neogit<cr>', { desc = 'Show Neogit UI' })

-- LSP
vim.keymap.set('n', '<C-CR>', vim.lsp.buf.hover, { desc = 'Show symbol documentation' })
vim.keymap.set('n', '<A-CR>', vim.diagnostic.open_float, { desc = 'Show diagnostic' })
vim.keymap.set('n', '<CR>', vim.lsp.buf.type_definition, { desc = 'Goto type definition' })
vim.keymap.set('n', '<C-.>', vim.lsp.buf.code_action, { desc = 'Suggest fix' })
vim.keymap.set('n', '<S-CR>', vim.lsp.buf.rename, { desc = 'Rename symbol' })

-- Tabs
vim.keymap.set('n', '<C-t>', ':tabnew<CR>', { desc = "Open new tab", silent = true })

vim.keymap.set('n', '<S-j>', ':-tabnext<CR>', { desc = "Goto previous tab", silent = true })
vim.keymap.set('n', '<S-k>', ':+tabnext<CR>', { desc = "Goto next tab", silent = true })

vim.keymap.set('n', '<leader>t0', ':tabnext 1<CR>', { desc = "Goto first tab", silent = true })
vim.keymap.set('n', '<leader>t$', ':tabnext $<CR>', { desc = "Goto last tab", silent = true })
vim.keymap.set('n', '<C-w>', ':tabclose<CR>',
    { desc = "Goto previous accessed tab", nowait = true, silent = true, noremap = true })

-- Navigation
vim.keymap.set('n', 'H', '<C-o>', { desc = "Jump to previous location" })
vim.keymap.set('n', 'L', '<C-i>', { desc = "Jump to next location" })
