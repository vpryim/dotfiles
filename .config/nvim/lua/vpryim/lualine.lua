-- stylua: ignore
local lualine_theme = require('themes.dark').lualine_theme

require('lualine').setup {
  options = {
    globalstatus = false,
    icons_enabled = false,
    theme = lualine_theme,
    -- component_separators = '→',
    component_separators = '',
    section_separators = { left = '', right = '' },
  },
  sections = {
    lualine_a = {
      -- { 'mode', right_padding = 1 },
    },
    -- lualine_b = { 'filename', { 'branch', color = { fg = colors.white } } },
    lualine_b = { { 'branch', separator = '→' }, { 'filename', path = 1 } },
    lualine_c = {},
    lualine_x = {},
    lualine_y = {
      --   'progress'
      { 'diagnostics', colored = false },
      'location'
    },
    lualine_z = {
      --{
      --'location',
      --  separator = { left = '•' },
      --    color = { fg = palette_colors.oldWhite, bg = palette_colors.sumiInk0 }
      --  },
    },
  },
  inactive_sections = {
    lualine_a = {},
    lualine_b = { { 'filename', path = 1 } },
    lualine_c = {},
    lualine_x = {},
    lualine_y = {},
    lualine_z = {},
  },
  tabline = {},
  extensions = {},
}
