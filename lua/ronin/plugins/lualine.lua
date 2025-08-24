-- Remove the default statusline background
vim.api.nvim_set_hl(0, "StatusLine", { fg = "#D5D9DD", bg = "NONE" })
vim.api.nvim_set_hl(0, "StatusLineNC", { fg = "#495159", bg = "NONE" })

-- Get the current palette
local colors, _ = require("ronin.colors").setup()

-- Convenience
local fg        = colors.fg
local bg        = colors.bg
local dimfg     = colors.gray
local chipbg    = colors.midnight

-- Mode accents
local NORMAL    = colors.blue
local INSERT    = colors.blue3
local VISUAL    = colors.ember
local REPLACE   = colors.red2
local COMMAND   = colors.indigo

-- Build lualine desired structure
local hl        = {}

-- Helper to build a section set quickly
local function mode(a_bg)
    return {
        a = { fg = bg, bg = a_bg, gui = "bold" },
        b = { fg = fg, bg = chipbg },
        c = { fg = fg, bg = "NONE" },
    }
end

hl.normal   = mode(NORMAL)
hl.insert   = mode(INSERT)
hl.visual   = mode(VISUAL)
hl.replace  = mode(REPLACE)
hl.command  = mode(COMMAND)

hl.inactive = {
    a = { fg = dimfg, bg = "NONE" },
    b = { fg = dimfg, bg = "NONE" },
    c = { fg = dimfg, bg = "NONE" },
}

return hl
