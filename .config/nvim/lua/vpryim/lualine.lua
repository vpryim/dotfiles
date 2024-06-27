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
      { 'mode', fmt = function() return '●' end },
    },
    -- lualine_b = { 'filename', { 'branch', color = { fg = colors.white } } },
    -- lualine_b = { { 'branch', separator = '→' }, { 'filename', path = 1 }, { 'location' } },
    lualine_b = {
      { 'filename', path = 1 },
      { 'branch', fmt = function(b)
        if b == ''
        then
          return ''
        else
          return '(' .. b .. ')'
        end
      end }
    },
    lualine_c = {},
    lualine_x = {
      { 'mode', fmt = function(str) if str == 'NORMAL' then return '' else return '-- ' .. str .. ' --' end end },
    },
    lualine_y = {
      { 'diagnostics', colored = false },
    },
    lualine_z = {
      'location',
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
