-- Bubbles config for lualine
-- Author: lokesh-krishna
-- MIT license, see LICENSE for more details.

-- stylua: ignore
local colors = {
  blue   = '#80a0ff',
  cyan   = '#79dac8',
  black  = '#080808',
  white  = '#c6c6c6',
  red    = '#ff5189',
  violet = '#d183e8',
  grey   = '#303030',
  dark   = '#16161D',
}

local kanagawa_colors = require("kanagawa.colors").setup()
local palette_colors = kanagawa_colors.palette

local kanagawa_theme = {
  normal = {
    a = { fg = colors.black, bg = palette_colors.oldWhite },
    b = { fg = palette_colors.oldWhite, bg = palette_colors.sumiInk0 },
    c = { fg = palette_colors.oldWhite, bg = palette_colors.sumiInk0 },
  },

  insert = { a = { fg = colors.black, bg = colors.blue } },
  visual = { a = { fg = colors.black, bg = colors.cyan } },
--  replace = { a = { fg = colors.black, bg = colors.red } },

  inactive = {
    a = { fg = colors.white, bg = colors.black },
    b = { fg = colors.white, bg = colors.black },
    c = { fg = colors.black, bg = colors.black },
  },
}


local bubbles_theme = {
  normal = {
    a = { fg = colors.black, bg = colors.violet },
    b = { fg = colors.white, bg = colors.grey },
    c = { fg = colors.black, bg = colors.black },
  },

  insert = { a = { fg = colors.black, bg = colors.blue } },
  visual = { a = { fg = colors.black, bg = colors.cyan } },
  replace = { a = { fg = colors.black, bg = colors.red } },

  inactive = {
    a = { fg = colors.white, bg = colors.black },
    b = { fg = colors.white, bg = colors.black },
    c = { fg = colors.black, bg = colors.black },
  },
}

require('lualine').setup {
  options = {
    globalstatus = false,
    icons_enabled = false,
    --theme = bubbles_theme,
    theme = kanagawa_theme,
    component_separators = '→',
    section_separators = { left = '', right = '' },
  },
  sections = {
    lualine_a = {
      { 'mode', right_padding = 1 },
    },
    lualine_b = { 'filename', { 'branch', color = { fg = colors.red } }},
    lualine_c = {},
    lualine_x = {},
    lualine_y = { 'progress' },
    lualine_z = {
      { 
        'location', 
        separator = { left = '•' }, 
        color = { fg = palette_colors.oldWhite, bg = palette_colors.sumiInk0 } 
      },
    },
  },
  inactive_sections = {
    lualine_a = { 'filename' },
    lualine_b = {},
    lualine_c = {},
    lualine_x = {},
    lualine_y = {},
    lualine_z = { 'location' },
  },
  tabline = {},
  extensions = {},
}
