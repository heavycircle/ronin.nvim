local M = {}

M.url = "https://github.com/nvim-telescope/telescope.nvim"

---@type ronin.HighlightFunction
function M.get(c, opts)
    return {
        TelescopeBorder         = { fg = c.gray, bg = c.midnight },
        TelescopeNormal         = { fg = c.fg, bg = c.midnight },
        TelescopePromptBorder   = { fg = c.indigo, bg = c.midnight },
        TelescopePromptTitle    = { fg = c.bg, bg = c.indigo },
        TelescopeResultsComment = { fg = c.gray, bg = c.midnight },
        TelescopeSelection      = { fg = c.fg, bg = c.blue2 },
    }
end

return M
