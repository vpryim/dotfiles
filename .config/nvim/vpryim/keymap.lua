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

-- toggle wrap
local wrap_enabled = false
local function toggle_wrap()
  vim.opt.wrap = not wrap_enabled
  vim.opt.list = false

  if wrap_enabled then
    vim.opt.linebreak = false
    vim.api.nvim_del_keymap('n', 'j')
    vim.api.nvim_del_keymap('n', 'k')
    vim.api.nvim_del_keymap('n', '0')
    vim.api.nvim_del_keymap('n', '^')
    vim.api.nvim_del_keymap('n', '$')
    wrap_enabled = false
  else
    vim.opt.linebreak = true
    vim.api.nvim_set_keymap('n', 'j', 'gj', { noremap = true, silent = true })
    vim.api.nvim_set_keymap('n', 'k', 'gk', { noremap = true, silent = true })
    vim.api.nvim_set_keymap('n', '0', 'g0', { noremap = true, silent = true })
    vim.api.nvim_set_keymap('n', '^', 'g^', { noremap = true, silent = true })
    vim.api.nvim_set_keymap('n', '$', 'g$', { noremap = true, silent = true })
    vim.api.nvim_set_keymap('v', 'j', 'gj', { noremap = true, silent = true })
    vim.api.nvim_set_keymap('v', 'k', 'gk', { noremap = true, silent = true })
    vim.api.nvim_set_keymap('v', '0', 'g0', { noremap = true, silent = true })
    vim.api.nvim_set_keymap('v', '^', 'g^', { noremap = true, silent = true })
    vim.api.nvim_set_keymap('v', '$', 'g$', { noremap = true, silent = true })
    wrap_enabled = true
  end
end
vim.keymap.set('n', '<leader>w', toggle_wrap, { noremap = true, silent = true })

vim.keymap.set('n', '<space>e', vim.diagnostic.open_float)
vim.keymap.set('n', '[d', vim.diagnostic.goto_prev)
vim.keymap.set('n', ']d', vim.diagnostic.goto_next)
vim.keymap.set('n', '<space>q', vim.diagnostic.setloclist)
