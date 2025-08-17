-- Lualine theme using ronin palette
local P = require("ronin.palette").resolve({})

return {
  normal = {
    a = { fg = P.bg, bg = P.teal, gui = "bold" },
    b = { fg = P.fg, bg = P.gray },
    c = { fg = P.fg, bg = P.bg },
  },
  insert = {
    a = { fg = P.bg, bg = P.red, gui = "bold" },
    b = { fg = P.fg, bg = P.gray },
    c = { fg = P.fg, bg = P.bg },
  },
  visual = {
    a = { fg = P.bg, bg = P.ember, gui = "bold" },
    b = { fg = P.fg, bg = P.gray },
    c = { fg = P.fg, bg = P.bg },
  },
  replace = {
    a = { fg = P.bg, bg = P.red, gui = "bold" },
    b = { fg = P.fg, bg = P.gray },
    c = { fg = P.fg, bg = P.bg },
  },
  inactive = {
    a = { fg = P.fg, bg = P.bg },
    b = { fg = P.fg, bg = P.bg },
    c = { fg = P.fg, bg = P.bg },
  },
}
