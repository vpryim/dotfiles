vim.g.mapleader = ' '
vim.g.maplocalleader = ' '

-- Setup path
local home_dir = os.getenv("HOME")
package.path = home_dir .. "/.config/nvim/?.lua;" .. package.path

-- Setup lazy
local lazypath = vim.fn.stdpath 'data' .. '/lazy/lazy.nvim'
if not vim.loop.fs_stat(lazypath) then
  vim.fn.system {
    'git',
    'clone',
    '--filter=blob:none',
    'https://github.com/folke/lazy.nvim.git',
    '--branch=stable', -- latest stable release
    lazypath,
  }
end
vim.opt.rtp:prepend(lazypath)

require('lazy').setup({
  {
    "williamboman/mason.nvim",
    config = function()
      require('mason').setup()
    end
  },

  {
    'nvim-telescope/telescope.nvim',
    branch = '0.1.x',
    dependencies = { 'nvim-lua/plenary.nvim' },
    config = function()
      require('vpryim.telescope')
    end
  },

  { 'nvim-lualine/lualine.nvim' },

  {
    'numToStr/Comment.nvim',
    config = function()
      require('Comment').setup()
    end
  },

  {
    "nvim-treesitter/nvim-treesitter",
    dependencies = { "nvim-treesitter/nvim-treesitter-textobjects" },
    config = function()
      require('vpryim.treesitter')
    end
  },

  {
    "stevearc/conform.nvim",
    config = function()
      require('vpryim.conform')
    end
  },

  {
    "folke/persistence.nvim",
    event = "BufReadPre", -- this will only start session saving when an actual file was opened
    opts = {
      -- add any custom options here
    }
  },

  {
    "ThePrimeagen/harpoon",
    branch = "harpoon2",
    dependencies = { "nvim-lua/plenary.nvim" },
    config = function()
      require('vpryim.harpoon')
    end
  },

  {
    "dmmulroy/tsc.nvim",
    config = function()
      require('tsc').setup()
    end
  },

  {
    "L3MON4D3/LuaSnip",
    version = "v2.*",
    config = function()
      require('vpryim.luasnip')
      require('vpryim.snippets')
    end
  },

  -- {
  --   "hrsh7th/nvim-cmp",
  --   config = function()
  --     require('vpryim.cmp')
  --     require('vpryim.luasnip')
  --   end,
  --   dependencies = {
  --     { "L3MON4D3/LuaSnip",        version = "v2.*" },
  --     { "saadparwaiz1/cmp_luasnip" }
  --   }
  -- },
})


require('vpryim.opt')
require('vpryim.keymap')
require('vpryim.lsp')

-- Setup typescript plugin
local augroup = vim.api.nvim_create_augroup("strdr4605", { clear = true })
vim.api.nvim_create_autocmd("FileType", {
  pattern = "typescript,typescriptreact",
  group = augroup,
  command = "compiler tsc | setlocal makeprg=npx\\ tsc\\ --noEmit\\ --pretty\\ false",
})

-- Setup color scheme
vim.cmd.colorscheme('vpryim')
