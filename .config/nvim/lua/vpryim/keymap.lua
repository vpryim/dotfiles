vim.keymap.set('v', 'J', ":m .+1<CR>gv=gv", { desc = 'Move line down' })
vim.keymap.set('v', 'K', ":m .-2<CR>gv=gv", { desc = 'Move line up' })
vim.keymap.set('n', '<C-d>', '<C-d>zz', { desc = 'Page down' })
vim.keymap.set('n', '<C-u>', '<C-u>zz', { desc = 'Page up' })
vim.keymap.set('n', 'n', 'nzzzv', { desc = 'Find next' })
vim.keymap.set('n', 'N', 'Nzzzv', { desc = 'Find prev' })

-- persistence
vim.keymap.set("n", "<leader>qs", function() require("persistence").load() end,
  { desc = "Restore the session for the current directory" })
vim.keymap.set("n", "<leader>ql", function() require("persistence").load({ last = true }) end,
  { desc = "Restore the last session" })
vim.keymap.set("n", "<leader>qd", function() require("persistence").stop() end,
  { desc = "Stop persistence => session won't be saved on exit" })

-- split
vim.keymap.set('n', 'ss', ':split<CR>')
vim.keymap.set('n', 'sv', ':vsplit<CR>')
vim.keymap.set('n', 'sh', '<C-w>h')
vim.keymap.set('n', 'sj', '<C-w>j')
vim.keymap.set('n', 'sk', '<C-w>k')
vim.keymap.set('n', 'sl', '<C-w>l')
