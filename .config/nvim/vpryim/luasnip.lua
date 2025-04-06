local luasnip = require("luasnip")
luasnip.setup({
  config = {
    enable_autosnippets = false,
  }
})

vim.keymap.set({ "i" }, "<Tab>", function()
  if luasnip.expand_or_jumpable() then
    luasnip.expand_or_jump()
  else
    vim.api.nvim_feedkeys(vim.api.nvim_replace_termcodes("<Tab>", true, true, true), "n", true)
  end
end, { silent = true })

vim.keymap.set({ "i" }, "<S-Tab>", function()
  if (luasnip.jumpable(-1)) then
    luasnip.jump(-1)
  end
end, { silent = true })
