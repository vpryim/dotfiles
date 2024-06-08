vim.keymap.set('v', 'J', ":m .+1<CR>gv=gv", { desc = 'Move line down' })
vim.keymap.set('v', 'K', ":m .-2<CR>gv=gv", { desc = 'Move line up' })
vim.keymap.set('n', '<C-d>', '<C-d>zz', { desc = 'Page down' })
vim.keymap.set('n', '<C-u>', '<C-u>zz', { desc = 'Page up' })
vim.keymap.set('n', 'n', 'nzzzv', { desc = 'Find next' })
vim.keymap.set('n', 'N', 'Nzzzv', { desc = 'Find prev' })
vim.keymap.set('n', '<leader>\\', ':vsplit<Return><C-w>l', { desc = 'Split window' })
vim.keymap.set('n', '<D-,>', ':edit ~/.config/nvim/init.lua<CR>', { desc = 'Open settings', silent = true })

-- vim.keymap.set('n', 'x', '"_x')
-- vim.keymap.set('n', 'd', '"_d')
-- vim.keymap.set('n', 'D', '"_D')
-- vim.keymap.set('v', 'd', '"_d')
-- vim.keymap.set('n', '<leader>d', '""d')
-- vim.keymap.set('n', '<leader>D', '""D')
-- vim.keymap.set('v', '<leader>d', '""d')

-- restore the session for the current directory
vim.api.nvim_set_keymap("n", "<leader>qs", [[<cmd>lua require("persistence").load()<cr>]], {})

-- restore the last session
vim.api.nvim_set_keymap("n", "<leader>ql", [[<cmd>lua require("persistence").load({ last = true })<cr>]], {})

-- stop Persistence => session won't be saved on exit
vim.api.nvim_set_keymap("n", "<leader>qd", [[<cmd>lua require("persistence").stop()<cr>]], {})
