vim.keymap.set('v', 'J', ":m .+1<CR>gv=gv", { desc = 'Move line down' })
vim.keymap.set('v', 'K', ":m .-2<CR>gv=gv", { desc = 'Move line up' })
vim.keymap.set('n', '<C-d>', '<C-d>zz', { desc = 'Page down' })
vim.keymap.set('n', '<C-u>', '<C-u>zz', { desc = 'Page up' })
vim.keymap.set('n', 'n', 'nzzzv', { desc = 'Find next' })
vim.keymap.set('n', 'N', 'Nzzzv', { desc = 'Find prev' })
vim.keymap.set('n', '<leader>\\', ':vsplit<Return><C-w>l', { desc = 'Split window' })
vim.keymap.set('x', '<leader>p', [["_dP]], { desc = "Paste without changing register", silent = true })
vim.keymap.set({ "n", "v" }, "<leader>d", [["_d]], { desc = "Delete without changing register" })

-- persistence
vim.keymap.set("n", "<leader>qs", function() require("persistence").load() end,
  { desc = "Restore the session for the current directory" })
vim.keymap.set("n", "<leader>ql", function() require("persistence").load({ last = true }) end,
  { desc = "Restore the last session" })
vim.keymap.set("n", "<leader>qd", function() require("persistence").stop() end,
  { desc = "Stop persistence => session won't be saved on exit" })
