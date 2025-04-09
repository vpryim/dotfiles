local luasnip = require("luasnip")
local postfix = require("luasnip.extras.postfix").postfix
local fmt = require("luasnip.extras.fmt").fmt
local s = luasnip.snippet
local t = luasnip.text_node
local i = luasnip.insert_node
local f = luasnip.function_node

luasnip.add_snippets("all", {
  s('ifm', {
    t('intl.formatMessage({ defaultMessage: "'),
    i(1, ""),
    t('" })')
  }),

  s('ifn', {
    t('intl.formatNumber('),
    i(1, ""),
    t(')')
  }),

  s('log', {
    t('console.log('),
    i(1, ""),
    t(')')
  }),

  s('usei', {
    t('const intl = useIntl()'),
  }),

  -- s('cmp',
  --   fmt([[
  --     function {name}({props}) \{
  --       {body}
  --     \}
  --   ]], {
  --     name = i(1, ""),
  --     props = i(2, ""),
  --     body = i(3, "")
  --   })
  -- ),

  postfix('.div', {
    f(function(_, parent)
      return "<div>" .. parent.snippet.env.POSTFIX_MATCH .. "</div>"
    end, {}),
  })
})
