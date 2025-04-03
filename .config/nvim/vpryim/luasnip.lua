local ls = require("luasnip")
ls.setup({
  config = {
    enable_autosnippets = false,
  }
})
vim.keymap.set({ "i" }, "<C-I>", function()
  if ls.expand_or_jumpable() then
    ls.expand_or_jump()
  end
end, { silent = true })
local s = ls.snippet
local t = ls.text_node
local i = ls.insert_node
local f = ls.function_node
local intlf = s('intlf', {
  t('intl.formatMessage({ defaultMessage: "'),
  i(1, ""),
  t('" })')
})
local intlu = s('intlu', {
  t('const intl = useIntl()'),
})
ls.add_snippets("all", {
  intlf,
  intlu
})
