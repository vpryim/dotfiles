local dark = require('themes.dark').groups
local light = require('themes.light').groups

if vim.g.colors_name then
  vim.cmd.hi("clear")
end

vim.g.colors_name = "vpryim"
vim.o.termguicolors = true

local function apply_colors()
  if vim.o.background == 'dark' then
    for group, settings in pairs(dark) do
      vim.api.nvim_set_hl(0, group, settings)
    end
  else
    for group, settings in pairs(light) do
      vim.api.nvim_set_hl(0, group, settings)
    end
  end
end

apply_colors()
