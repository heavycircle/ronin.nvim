-- Lualine theme using ronin palette
local P = require("ronin.palette").resolve({})

-- Remove the default statusline background
vim.api.nvim_set_hl(0, "StatusLine",   { fg = "#D5D9DD", bg = "NONE" })
vim.api.nvim_set_hl(0, "StatusLineNC", { fg = "#495159", bg = "NONE" })

return {
  normal = {
    a = { fg = P.bg, bg = P.teal, gui = "bold" },
    b = { fg = P.fg, bg = P.bg },
    c = { fg = P.fg, bg = "NONE" },
  },
  insert = {
    a = { fg = P.bg, bg = P.red, gui = "bold" },
    b = { fg = P.fg, bg = P.bg },
    c = { fg = P.fg, bg = "NONE" },
  },
  visual = {
    a = { fg = P.bg, bg = P.ember, gui = "bold" },
    b = { fg = P.fg, bg = P.bg },
    c = { fg = P.fg, bg = "NONE" },
  },
  replace = {
    a = { fg = P.bg, bg = P.red, gui = "bold" },
    b = { fg = P.fg, bg = P.bg },
    c = { fg = P.fg, bg = "NONE" },
  },
  inactive = {
    a = { fg = P.fg, bg = P.bg },
    b = { fg = P.fg, bg = P.bg },
    c = { fg = P.fg, bg = "NONE" },
  },
}
