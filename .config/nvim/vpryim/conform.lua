local confirm = require("conform")

confirm.setup({
  formatters_by_ft = {
    lua = { "stylua" },
    css = { "prettierd" },
    graphql = { "prettierd" },
    html = { "prettierd" },
    javascript = { "prettierd" },
    javascriptreact = { "prettierd" },
    json = { "prettierd" },
    less = { "prettierd" },
    markdown = { "prettierd" },
    scss = { "prettierd" },
    typescript = { "prettierd" },
    typescriptreact = { "prettierd" },
    yaml = { "prettierd" },
  },
  format_on_save = {
    timeout_ms = 500,
    lsp_fallback = true,
  },
})

vim.keymap.set({ "n", "v" }, "<leader>mp", function()
  confirm.format({
    lsp_fallback = true,
    async = false,
    timeout_ms = 500
  })
end, { desc = 'Format file or range (in visual mode)' })
