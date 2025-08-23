---@class ronin.Highlight: vim.api.keyset.highlight
---@field style? vim.api.keyset.highlight

---@alias ronin.Highlights table<string,ronin.Highlight|string>

---@alias ronin.HighlightFunction fun(colors: Colorscheme, opts: ronin.Config): ronin.Highlights
