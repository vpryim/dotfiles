local telescope = require('telescope')
local builtin = require('telescope.builtin')
telescope.setup({
  defaults = {
    file_ignore_patterns = {
      "node_modules"
    },
    layout_config = {
      prompt_position = 'top',
    },
    sorting_strategy = 'ascending',
    results_title = false,
    preview = false
  },
  pickers = {
    find_files = {
      theme = 'dropdown',
    },
    live_grep = {
      theme = 'dropdown',
      preview = true
    },
    git_files = {
      theme = 'dropdown',
    },
    oldfiles = {
      theme = 'dropdown',
    },
    lsp_definitions = {
      theme = 'dropdown'
    },
    registers = {
      theme = 'dropdown',
    },
    buffers = {
      theme = 'dropdown'
    },
    git_commits = {
      preview = true
    },
    lsp_references = {
      preview = true,
    }
  },
  extensions = {
    frecency = {
      ignore_patterns = { "*.git/*", "*node_modules/*" }
    },
  }
})
vim.keymap.set('n', '<leader><space>', builtin.find_files, { desc = 'Find files' })
vim.keymap.set('n', '<leader>lg', builtin.live_grep, { desc = 'Live grep' })
vim.keymap.set('n', '<leader>lb', builtin.buffers, { desc = 'List buffers' })
vim.keymap.set('n', '<leader>lr', builtin.registers, { desc = 'List registers' })
vim.keymap.set('n', '<leader>lc', builtin.git_commits, { desc = 'List commits (git)' })
vim.keymap.set('n', '<leader>ls', vim.cmd.Ex, { desc = 'List files' })
vim.keymap.set('n', '<leader>lo', builtin.oldfiles, { desc = 'List recently opened files' })
