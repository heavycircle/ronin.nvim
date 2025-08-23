-- Remove the default statusline background
vim.api.nvim_set_hl(0, "StatusLine", { fg = "#D5D9DD", bg = "NONE" })
vim.api.nvim_set_hl(0, "StatusLineNC", { fg = "#495159", bg = "NONE" })

-- Get the current palette
local colors, config = require("ronin.colors").setup()

-- Build lualine desired structure
local hl = {}

hl.normal = {
    a = { fg = colors.bg, bg = colors.teal, gui = "bold" },
    b = { fg = colors.fg, bg = colors.bg },
    c = { fg = colors.fg, bg = "NONE" },
}

hl.insert = {
    a = { fg = colors.bg, bg = colors.red, gui = "bold" },
    b = { fg = colors.fg, bg = colors.bg },
    c = { fg = colors.fg, bg = "NONE" },
}

hl.visual = {
    a = { fg = colors.bg, bg = colors.ember, gui = "bold" },
    b = { fg = colors.fg, bg = colors.bg },
    c = { fg = colors.fg, bg = "NONE" },
}

hl.replace = {
    a = { fg = colors.bg, bg = colors.red, gui = "bold" },
    b = { fg = colors.fg, bg = colors.bg },
    c = { fg = colors.fg, bg = "NONE" },
}

hl.inactive = {
    a = { fg = colors.fg, bg = colors.bg },
    b = { fg = colors.fg, bg = colors.bg },
    c = { fg = colors.fg, bg = "NONE" },
}

return hl
