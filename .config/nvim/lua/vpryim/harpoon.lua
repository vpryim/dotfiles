local harpoon = require("harpoon")

-- REQUIRED
harpoon:setup()
-- REQUIRED

vim.keymap.set("n", "<leader>fa", function() harpoon:list():add() end, { desc = "Add to harpoon list" })
vim.keymap.set("n", "<leader><space>", function() harpoon.ui:toggle_quick_menu(harpoon:list()) end,
  { desc = "Open harpoon list" })

vim.keymap.set("n", "<leader>fh", function() harpoon:list():select(1) end)
vim.keymap.set("n", "<leader>fj", function() harpoon:list():select(2) end)
vim.keymap.set("n", "<leader>fk", function() harpoon:list():select(3) end)
vim.keymap.set("n", "<leader>fl", function() harpoon:list():select(4) end)

-- Toggle previous & next buffers stored within Harpoon list
vim.keymap.set("n", "<leader>fp", function() harpoon:list():prev() end)
vim.keymap.set("n", "<leader>fn", function() harpoon:list():next() end)
