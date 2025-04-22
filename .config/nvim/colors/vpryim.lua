local colors

if vim.o.background == 'dark' then
  colors = {
    text   = '#e6e6e6',
    dark   = '#090909',
    black  = '#000000',
    gray0  = '#666666',
    gray1  = '#323232',
    gray2  = '#23242a',
    gray3  = '#2b2b2b',
    amber  = '#ffb700',
    lime   = '#5ac289',
    yellow = '#ffe59e',
    blue   = '#80a0ff',
    cyan   = '#79dac8',
    red    = '#f87070',
    pink   = '#ff5189',
    violet = '#d183e8',
  }
else
  colors = {
    text      = '#222222',
    dark      = '#ffffff',
    black     = '#f2f2f2',
    gray0     = '#949494',
    gray1     = '#808080',
    gray2     = '#b5b5b5',
    gray3     = '#e2e2e2',
    lime      = '#005fed',
    amber     = '#c73414',
    -- amber     = '#005fed',
    yellow    = '#ffe59e',
    blue      = '#005fed',
    green     = '#79dcaa',
    red       = '#f87070',
    blue_dark = '#80a0ff',
    cyan      = '#79dac8',
    violet    = '#d183e8',
  }
end

local groups_dark = {
  -- Primitives
  String = { fg = colors.amber },
  Number = { fg = colors.lime },
  Boolean = { fg = colors.lime },
  Float = { fg = colors.lime },
  Constant = { fg = colors.text },
  Character = { fg = colors.text },
  SpecialChar = { fg = colors.text },
  ['@variable'] = { fg = colors.text },

  -- Specials
  Title = { fg = colors.violet },
  Todo = { fg = colors.amber },
  Comment = { fg = colors.gray0 },
  Special = { fg = colors.white },
  SpecialComment = { fg = colors.gray0 },

  -- Markdown
  ['@markup.heading'] = { fg = colors.violet },
  ['@markup.list'] = { fg = colors.gray0 },
  RenderMarkdownBullet = { fg = colors.gray0 },
  RenderMarkdownChecked = { fg = colors.lime },
  RenderMarkdownH1Bg = { fg = colors.violet },
  RenderMarkdownH2Bg = { fg = colors.violet },
  RenderMarkdownH3Bg = { fg = colors.violet },

  -- Lines, Columns
  LineNr = { fg = colors.gray0 },
  CursorLine = { bg = colors.grey3 },
  CursorLineNr = { fg = colors.text, bg = colors.grey3 },
  SignColumn = { fg = colors.grey3, bg = colors.dark },
  ColorColumn = { fg = colors.text, bg = colors.gray3 },
  CursorColumn = { fg = colors.text, bg = colors.gray3 },

  -- Visual
  Visual = { bg = colors.gray1 },
  VisualNOS = { fg = colors.gray3, bg = colors.text },
  Search = { fg = colors.dark, bg = colors.amber },
  IncSearch = { fg = colors.dark, bg = colors.amber },

  -- Spelling
  SpellBad = { fg = colors.red, bg = colors.dark },
  SpellCap = { fg = colors.red, bg = colors.dark },
  SpellLocal = { fg = colors.red, bg = colors.dark },
  SpellRare = { fg = colors.red, bg = colors.dark },

  -- Messages
  ErrorMsg = { fg = colors.red, bg = colors.dark },
  WarningMsg = { fg = colors.yellow, bg = colors.dark },
  ModeMsg = { fg = colors.text, bg = colors.dark },
  MoreMsg = { fg = colors.text, bg = colors.dark },
  Error = { fg = colors.red, bg = colors.dark },

  -- Preprocessor Directives
  Include = { fg = colors.text },
  Define = { fg = colors.text },
  Macro = { fg = colors.text },
  PreCondit = { fg = colors.text },
  PreProc = { fg = colors.text },

  -- Bindings
  Identifier = { fg = colors.text },
  Function = { fg = colors.text },
  Keyword = { fg = colors.text },
  Operator = { fg = colors.text },

  -- Types
  Type = { fg = colors.text },
  Typedef = { fg = colors.text },
  StorageClass = { fg = colors.text },
  Structure = { fg = colors.text },

  -- Flow Control
  Statement = { fg = colors.text },
  Conditional = { fg = colors.text },
  Repeat = { fg = colors.text },
  Label = { fg = colors.text },
  Exception = { fg = colors.text },

  -- Misc
  Normal = { fg = colors.text, bg = colors.dark },
  Cursor = { fg = colors.text, bg = colors.pink },
  Underlined = { fg = colors.text, underline = true },
  SpecialKey = { fg = colors.text },
  NonText = { fg = colors.gray1 },
  Directory = { fg = colors.text },

  -- Fold
  FoldColumn = { fg = colors.text, bg = colors.gray3 },
  Folded = { fg = colors.text, bg = colors.gray3 },

  -- Parens
  MatchParen = { fg = colors.text, bg = colors.gray0 },

  -- Popup Menu
  Pmenu = { fg = colors.dark, bg = colors.gray3 },
  PmenuSbar = { fg = colors.dark, bg = colors.gray3 },
  PmenuSel = { fg = colors.text, bg = colors.gray0 },
  PmenuThumb = { fg = colors.dark, bg = colors.gray3 },

  -- Split
  VertSplit = { fg = colors.amber, bg = colors.dark, bold = true },
  WinSeparator = { fg = colors.gray0, bg = colors.dark, bold = true },

  -- Others
  Debug = { fg = colors.text },
  Delimiter = { fg = colors.text },
  Question = { fg = colors.text },
  StatusLine = { fg = colors.text, bg = colors.gray2 },
  StatusLineNC = { fg = colors.text, bg = colors.gray3 },
  Tag = { fg = colors.text },
  WildMenu = { fg = colors.dark, bg = colors.text },
  TabLine = { fg = colors.text, bg = colors.gray2 },

  -- Diff
  DiffAdd = { fg = colors.lime },
  DiffChange = { fg = colors.yellow },
  DiffDelete = { fg = colors.red },
  DiffText = { fg = colors.dark },

  -- GitGutter
  GitGutterAdd = { fg = colors.lime },
  GitGutterChange = { fg = colors.yellow },
  GitGutterDelete = { fg = colors.red },
  GitGutterChangeDelete = { fg = colors.dark },

  -- Vimscript
  vimFunc = { fg = colors.text },
  vimUserFunc = { fg = colors.text },
  vimLineComment = { fg = colors.gray0 },
  vimCommentString = { fg = colors.gray0 },
}

local groups_light = {
  -- Primitives
  String = { fg = colors.amber },
  Number = { fg = colors.lime, bg = '#F2F7FE' },
  Boolean = { fg = colors.lime, bg = '#F2F7FE' },
  Float = { fg = colors.lime, bg = '#F2F7FE' },
  Constant = { fg = colors.text },
  Character = { fg = colors.text },
  SpecialChar = { fg = colors.text },
  ['@variable'] = { fg = colors.text },

  -- Specials
  Title = { fg = colors.violet },
  Todo = { fg = colors.amber },
  Comment = { fg = colors.gray0 },
  Special = { fg = colors.white },
  SpecialComment = { fg = colors.gray0 },

  -- Markdown
  ['@markup.heading'] = { fg = colors.blue },
  ['@markup.list'] = { fg = colors.gray0 },
  RenderMarkdownBullet = { fg = colors.gray0 },
  RenderMarkdownChecked = { fg = colors.lime },
  RenderMarkdownH1Bg = { fg = colors.blue },
  RenderMarkdownH2Bg = { fg = colors.blue },
  RenderMarkdownH3Bg = { fg = colors.blue },

  -- Lines, Columns
  LineNr = { fg = colors.gray0 },
  CursorLine = { bg = colors.grey3 },
  CursorLineNr = { fg = colors.text, bg = colors.grey3 },
  SignColumn = { fg = colors.grey3, bg = colors.dark },
  ColorColumn = { fg = colors.text, bg = colors.gray1 },
  CursorColumn = { fg = colors.text, bg = colors.gray3 },

  -- Visual
  Visual = { bg = colors.gray3 },
  VisualNOS = { fg = colors.gray3, bg = colors.text },
  Search = { fg = colors.dark, bg = colors.amber },
  IncSearch = { fg = colors.dark, bg = colors.amber },

  -- Spelling
  SpellBad = { fg = colors.red, bg = colors.dark },
  SpellCap = { fg = colors.red, bg = colors.dark },
  SpellLocal = { fg = colors.red, bg = colors.dark },
  SpellRare = { fg = colors.red, bg = colors.dark },

  -- Messages
  ErrorMsg = { fg = colors.red, bg = colors.dark },
  WarningMsg = { fg = colors.yellow, bg = colors.dark },
  ModeMsg = { fg = colors.text, bg = colors.dark },
  MoreMsg = { fg = colors.text, bg = colors.dark },
  Error = { fg = colors.red, bg = colors.dark },

  -- Preprocessor Directives
  Include = { fg = colors.text },
  Define = { fg = colors.text },
  Macro = { fg = colors.text },
  PreCondit = { fg = colors.text },
  PreProc = { fg = colors.text },

  -- Bindings
  Identifier = { fg = colors.text },
  Function = { fg = colors.text },
  Keyword = { fg = colors.text },
  Operator = { fg = colors.text },

  -- Types
  Type = { fg = colors.text },
  Typedef = { fg = colors.text },
  StorageClass = { fg = colors.text },
  Structure = { fg = colors.text },

  -- Flow Control
  Statement = { fg = colors.text },
  Conditional = { fg = colors.text },
  Repeat = { fg = colors.text },
  Label = { fg = colors.text },
  Exception = { fg = colors.text },

  -- Misc
  Normal = { fg = colors.text, bg = colors.dark },
  Cursor = { fg = colors.text, bg = colors.pink },
  Underlined = { fg = colors.text, underline = true },
  SpecialKey = { fg = colors.text },
  NonText = { fg = colors.gray3 },
  Directory = { fg = colors.text },

  -- Fold
  FoldColumn = { fg = colors.text, bg = colors.gray3 },
  Folded = { fg = colors.text, bg = colors.gray3 },

  -- Parens
  MatchParen = { fg = colors.text, bg = colors.gray0 },

  -- Popup Menu
  Pmenu = { fg = colors.text, bg = colors.gray3 },
  PmenuSbar = { fg = colors.dark, bg = colors.gray3 },
  PmenuSel = { fg = colors.dark, bg = colors.text },
  PmenuThumb = { fg = colors.dark, bg = colors.text },

  -- Split
  VertSplit = { fg = colors.gray0, bg = colors.dark, bold = true },
  WinSeparator = { fg = colors.gray0, bg = colors.dark, bold = true },

  -- Others
  Debug = { fg = colors.text },
  Delimiter = { fg = colors.text },
  Question = { fg = colors.text },
  StatusLine = { fg = colors.text, bg = colors.gray2 },
  StatusLineNC = { fg = colors.text, bg = colors.gray3 },
  Tag = { fg = colors.text },
  WildMenu = { fg = colors.dark, bg = colors.text },
  TabLine = { fg = colors.text, bg = colors.gray2 },

  -- Diff
  DiffAdd = { fg = colors.lime },
  DiffChange = { fg = colors.yellow },
  DiffDelete = { fg = colors.red },
  DiffText = { fg = colors.dark },

  -- GitGutter
  GitGutterAdd = { fg = colors.lime },
  GitGutterChange = { fg = colors.yellow },
  GitGutterDelete = { fg = colors.red },
  GitGutterChangeDelete = { fg = colors.dark },

  -- Vimscript
  vimFunc = { fg = colors.text },
  vimUserFunc = { fg = colors.text },
  vimLineComment = { fg = colors.gray0 },
  vimCommentString = { fg = colors.gray0 },
}

local lualine_dark = {
  normal = {
    a = { fg = colors.pink, bg = colors.black },
    b = { fg = colors.pink, bg = colors.black },
    c = { fg = colors.pink, bg = colors.black },
    x = { fg = colors.pink, bg = colors.black },
    y = { fg = colors.pink, bg = colors.black },
    z = { fg = colors.pink, bg = colors.black },
  },
  insert = {
    x = { fg = colors.lime, bg = colors.black },
  },
  visual = {
    x = { fg = colors.lime, bg = colors.black },
  },
  command = {
    x = { fg = colors.lime, bg = colors.black },
  },
  inactive = {
    a = { fg = colors.grey3, bg = colors.black },
    b = { fg = colors.grey3, bg = colors.black },
    c = { fg = colors.grey3, bg = colors.black },
  },
}

local lualine_light = {
  normal = {
    a = { fg = colors.text, bg = colors.dark },
    b = { fg = colors.text, bg = colors.dark },
    c = { fg = colors.text, bg = colors.dark },
    x = { fg = colors.text, bg = colors.dark },
    y = { fg = colors.text, bg = colors.dark },
    z = { fg = colors.text, bg = colors.dark },
  },
  insert = {
    x = { fg = colors.lime, bg = colors.black },
  },
  visual = {
    x = { fg = colors.lime, bg = colors.black },
  },
  command = {
    x = { fg = colors.lime, bg = colors.black },
  },
  inactive = {
    a = { fg = colors.grey3, bg = colors.black },
    b = { fg = colors.grey3, bg = colors.black },
    c = { fg = colors.grey3, bg = colors.black },
  },
}

if vim.g.colors_name then
  vim.cmd.hi("clear")
end

vim.g.colors_name = "vpryim"
vim.o.termguicolors = true

local groups = vim.o.background == 'dark' and groups_dark or groups_light

for group, settings in pairs(groups) do
  vim.api.nvim_set_hl(0, group, settings)
end

require('lualine').setup {
  options = {
    globalstatus = false,
    icons_enabled = false,
    theme = vim.o.background == 'dark' and lualine_dark or lualine_light,
    component_separators = '',
    section_separators = { left = '', right = '' },
  },
  sections = {
    lualine_a = {
      { 'mode', fmt = function() return '●' end },
    },
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
