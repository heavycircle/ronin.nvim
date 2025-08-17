local U = require("ronin.util")

local M = {}

function M.apply(p, opts)
  opts = opts or {}
  local italic_comments = opts.italics and opts.italics.comments
  local italic_keywords = opts.italics and opts.italics.keywords
  local italic_strings  = opts.italics and opts.italics.strings

  -- Core UI
  U.hl("Normal",       { fg = p.fg, bg = opts.transparent and "NONE" or p.bg })
  U.hl("NormalNC",     { fg = p.fg, bg = (opts.transparent or not opts.dim_inactive) and "NONE" or "#080808" })
  U.hl("NormalFloat",  { fg = p.fg, bg = p.gray })
  U.hl("FloatBorder",  { fg = p.gray, bg = p.gray })
  U.hl("CursorLine",   { bg = "#111111" })
  U.hl("CursorLineNr", { fg = p.red })
  U.hl("LineNr",       { fg = p.gray })
  U.hl("WinSeparator", { fg = p.gray })
  U.hl("StatusLine",   { fg = p.fg, bg = p.gray })
  U.hl("StatusLineNC", { fg = p.gray, bg = p.bg })
  U.hl("Visual",       { bg = p.teal, fg = p.bg })
  U.hl("Search",       { fg = p.bg, bg = p.red })
  U.hl("IncSearch",    { fg = p.bg, bg = p.red })
  U.hl("Pmenu",        { fg = p.fg, bg = p.gray })
  U.hl("PmenuSel",     { fg = p.bg, bg = p.fg })
  U.hl("PmenuThumb",   { bg = p.fg })
  U.hl("MatchParen",   { fg = p.white, bg = p.gray, bold = true })

  -- Diagnostics
  U.hl("DiagnosticError", { fg = p.red })
  U.hl("DiagnosticWarn",  { fg = p.ember })
  U.hl("DiagnosticInfo",  { fg = p.teal })
  U.hl("DiagnosticHint",  { fg = p.dim })
  U.hl("DiagnosticUnderlineError", { undercurl = true, sp = p.red })
  U.hl("DiagnosticUnderlineWarn",  { undercurl = true, sp = p.ember })
  U.hl("DiagnosticUnderlineInfo",  { undercurl = true, sp = p.teal })
  U.hl("DiagnosticUnderlineHint",  { undercurl = true, sp = p.dim })

  -- Syntax
  U.hl("Comment",    { fg = p.gray, italic = italic_comments or false })
  U.hl("Constant",   { fg = p.red })
  U.hl("String",     { fg = p.ember, italic = italic_strings or false })
  U.hl("Character",  { fg = p.ember })
  U.hl("Identifier", { fg = p.fg })
  U.hl("Function",   { fg = p.teal })
  U.hl("Statement",  { fg = p.red })
  U.hl("Keyword",    { fg = p.red, italic = italic_keywords or false })
  U.hl("Type",       { fg = p.dim })
  U.hl("Special",    { fg = p.white })
  U.hl("Todo",       { fg = p.bg, bg = p.red, bold = true })

  -- Treesitter (minimal mapping)
  U.hl("@comment",        { link = "Comment" })
  U.hl("@punctuation",    { fg = p.dim })
  U.hl("@constant",       { link = "Constant" })
  U.hl("@string",         { link = "String" })
  U.hl("@character",      { link = "Character" })
  U.hl("@number",         { fg = p.fg })
  U.hl("@boolean",        { fg = p.red })
  U.hl("@float",          { fg = p.fg })
  U.hl("@function",       { link = "Function" })
  U.hl("@method",         { link = "Function" })
  U.hl("@field",          { fg = p.fg })
  U.hl("@property",       { fg = p.fg })
  U.hl("@keyword",        { link = "Keyword" })
  U.hl("@type",           { link = "Type" })
  U.hl("@variable",       { fg = p.fg })
  U.hl("@variable.builtin",{ fg = p.red })
  U.hl("@parameter",      { fg = p.dim })

  -- Telescope
  U.hl("TelescopeNormal",       { fg = p.fg, bg = p.gray })
  U.hl("TelescopeBorder",       { fg = p.gray, bg = p.gray })
  U.hl("TelescopePromptNormal", { fg = p.fg, bg = p.gray })
  U.hl("TelescopeSelection",    { fg = p.bg, bg = p.fg })

  -- Git
  U.hl("DiffAdd",    { fg = p.teal })
  U.hl("DiffDelete", { fg = p.red })
  U.hl("DiffChange", { fg = p.ember })
  U.hl("DiffText",   { fg = p.red })

end

return M
