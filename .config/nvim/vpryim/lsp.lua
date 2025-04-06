local on_attach = function(_, bufnr)
  local nmap = function(keys, func, desc)
    if desc then
      desc = 'LSP: ' .. desc
    end
    vim.keymap.set('n', keys, func, { buffer = bufnr, desc = desc })
  end

  local tsb = require('telescope.builtin')

  nmap('<leader>rn', vim.lsp.buf.rename, '[R]e[n]ame')
  nmap('<leader>ca', vim.lsp.buf.code_action, '[C]ode [A]ction')

  nmap('gd', tsb.lsp_definitions, '[G]oto [D]efinition')
  nmap('gr', tsb.lsp_references, '[G]oto [R]eferences')
  nmap('gI', tsb.lsp_implementations, '[G]oto [I]mplementation')
  nmap('gv', ':vsplit | lua vim.lsp.buf.definition()<CR>')
  nmap('<leader>D', tsb.lsp_type_definitions, 'Type [D]efinition')
  nmap('<leader>ds', tsb.lsp_document_symbols, '[D]ocument [S]ymbols')
  nmap('<leader>ws', tsb.lsp_dynamic_workspace_symbols, '[W]orkspace [S]ymbols')

  -- See `:help K` for why this keymap
  nmap('K', vim.lsp.buf.hover, 'Hover Documentation')
  nmap('<C-k>', vim.lsp.buf.signature_help, 'Signature Documentation')

  -- Lesser used LSP functionality
  nmap('gD', vim.lsp.buf.declaration, '[G]oto [D]eclaration')
  nmap('<leader>wa', vim.lsp.buf.add_workspace_folder, '[W]orkspace [A]dd Folder')
  nmap('<leader>wr', vim.lsp.buf.remove_workspace_folder, '[W]orkspace [R]emove Folder')
  nmap('<leader>wl', function()
    print(vim.inspect(vim.lsp.buf.list_workspace_folders()))
  end, '[W]orkspace [L]ist Folders')

  -- Create a command `:Format` local to the LSP buffer
  vim.api.nvim_buf_create_user_command(bufnr, 'Format', function(_)
    vim.lsp.buf.format()
  end, { desc = 'Format current buffer with LSP' })
end

vim.lsp.enable({ "ts_ls", "tailwindcss", "lua_ls" })

vim.lsp.config("ts_ls", {
  init_options = { hostInfo = "neovim" },
  cmd = { 'typescript-language-server', '--stdio' },
  filetypes = {
    'javascript',
    'javascriptreact',
    'javascript.jsx',
    'typescript',
    'typescriptreact',
    'typescript.tsx',
  },
  root_markers = { 'tsconfig.json', 'jsconfig.json', 'package.json', '.git' },
  single_file_support = true,
  on_attach = on_attach
})

vim.lsp.config("tailwindcss", {
  cmd = { 'tailwindcss-language-server', '--stdio' },
  filetypes = {
    'javascript',
    'javascriptreact',
    'javascript.jsx',
    'typescript',
    'typescriptreact',
    'typescript.tsx',
  },
  root_markers = { 'tsconfig.json', 'jsconfig.json', 'package.json', '.git' },
  single_file_support = true,
  on_attach = on_attach
})

vim.lsp.config("lua_ls", {
  cmd = { 'lua-language-server' },
  filetypes = { 'lua' },
  root_markers = { ".luarc.json", ".luarc.jsonc" },
  workspace = { checkThirdParty = false },
  telemetry = { enable = false },
  settings = {
    Lua = {
      diagnostics = {
        globals = {
          "vim"
        }
      },
    }
  },
  on_attach = on_attach
})
