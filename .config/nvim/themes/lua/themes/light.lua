local colors = {
  lime   = '#005fed',
  amber  = '#c73414',
  light  = '#000000',
  dark   = '#faf0be',
  gray0  = '#94884a',
  gray1  = '#faeba2',
  gray2  = '#b5a553',
  gray3  = '#80753e',
  yellow = '#ffe59e',
  blue   = '#52de97',
  green  = '#79dcaa',
  red    = '#f87070',
}

local groups = {
  -- Primitives
  String = { fg = colors.amber },
  Number = { fg = colors.lime },
  Boolean = { fg = colors.lime },
  Float = { fg = colors.lime },
  Constant = { fg = colors.light },
  Character = { fg = colors.light },
  SpecialChar = { fg = colors.light },

  -- Specials
  Title = { fg = colors.gray0 },
  Todo = { fg = colors.yellow },
  Comment = { fg = colors.gray0 },
  SpecialComment = { fg = colors.gray0 },

  -- Lines                  , Columns
  LineNr = { fg = colors.gray0 },
  CursorLine = { bg = colors.gray3 },
  CursorLineNr = { fg = colors.light, bg = colors.gray3 },
  SignColumn = { fg = colors.gray3, bg = colors.dark },
  ColorColumn = { fg = colors.light, bg = colors.gray3 },
  CursorColumn = { fg = colors.light, bg = colors.gray3 },

  -- Visual
  Visual = { bg = colors.gray1 },
  VisualNOS = { fg = colors.gray3, bg = colors.light },
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
  ModeMsg = { fg = colors.light, bg = colors.dark },
  MoreMsg = { fg = colors.light, bg = colors.dark },
  Error = { fg = colors.red, bg = colors.dark },

  -- Preprocessor Directives
  Include = { fg = colors.light },
  Define = { fg = colors.light },
  Macro = { fg = colors.light },
  PreCondit = { fg = colors.light },
  PreProc = { fg = colors.light },

  -- Bindings
  Identifier = { fg = colors.light },
  Function = { fg = colors.light },
  Keyword = { fg = colors.light },
  Operator = { fg = colors.light },

  -- Types
  Type = { fg = colors.light },
  Typedef = { fg = colors.light },
  StorageClass = { fg = colors.light },
  Structure = { fg = colors.light },

  -- Flow Control
  Statement = { fg = colors.light },
  Conditional = { fg = colors.light },
  Repeat = { fg = colors.light },
  Label = { fg = colors.light },
  Exception = { fg = colors.light },

  -- Misc
  Normal = { fg = colors.light, bg = colors.dark },
  Cursor = { fg = colors.dark, bg = colors.light },
  Underlined = { fg = colors.light, underline = true },
  SpecialKey = { fg = colors.light },
  NonText = { fg = colors.light },
  Directory = { fg = colors.light },

  -- Fold
  FoldColumn = { fg = colors.light, bg = colors.gray3 },
  Folded = { fg = colors.light, bg = colors.gray3 },

  -- Parens
  MatchParen = { fg = colors.light, bg = colors.gray0 },

  -- Popup Menu
  Pmenu = { fg = colors.light, bg = colors.gray3 },
  PmenuSbar = { fg = colors.dark, bg = colors.gray3 },
  PmenuSel = { fg = colors.dark, bg = colors.light },
  PmenuThumb = { fg = colors.dark, bg = colors.light },

  -- Split
  VertSplit = { fg = colors.gray1, bg = colors.dark, bold = true },

  -- Others
  Debug = { fg = colors.light },
  Delimiter = { fg = colors.light },
  Question = { fg = colors.light },
  Special = { fg = colors.light },
  StatusLine = { fg = colors.light, bg = colors.gray2 },
  StatusLineNC = { fg = colors.light, bg = colors.gray3 },
  Tag = { fg = colors.light },
  WildMenu = { fg = colors.dark, bg = colors.light },
  TabLine = { fg = colors.light, bg = colors.gray2 },

  -- Diff
  DiffAdd = { fg = colors.green },
  DiffChange = { fg = colors.yellow },
  DiffDelete = { fg = colors.red },
  DiffText = { fg = colors.dark },

  -- GitGutter
  GitGutterAdd = { fg = colors.green },
  GitGutterChange = { fg = colors.yellow },
  GitGutterDelete = { fg = colors.red },
  GitGutterChangeDelete = { fg = colors.dark },

  -- Vimscript
  vimFunc = { fg = colors.light },
  vimUserFunc = { fg = colors.light },
  vimLineComment = { fg = colors.gray0 },
  vimCommentString = { fg = colors.gray0 },
}

local colors_l = {
  blue   = '#80a0ff',
  cyan   = '#79dac8',
  black  = '#000000',
  white  = '#e2e2e2',
  red    = '#ff5189',
  violet = '#d183e8',
  grey0  = '#161616',
  -- grey   = '#c73414',
  grey   = '#303030',
  grey3  = '#b6b6b6',
  dark   = '#16161D',
  yellow = '#ffb700',
}

local lualine_theme = {
  normal = {
    a = { fg = colors_l.white, bg = colors_l.grey },
    b = { fg = colors_l.white, bg = colors_l.grey },
    c = { fg = colors_l.white, bg = colors_l.grey },
  },

  insert = { a = { fg = colors_l.black, bg = colors_l.blue } },
  visual = { a = { fg = colors_l.black, bg = colors_l.cyan } },
  replace = { a = { fg = colors_l.black, bg = colors_l.red } },

  inactive = {
    a = { fg = colors_l.grey3, bg = colors_l.grey0 },
    b = { fg = colors_l.grey3, bg = colors_l.grey0 },
    c = { fg = colors_l.grey3, bg = colors_l.grey0 },
  },
}

local M = {}
M.colors = colors
M.groups = groups
M.lualine_theme = lualine_theme
return M
