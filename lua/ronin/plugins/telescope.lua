local M = {}

M.url = "https://github.com/nvim-telescope/telescope.nvim"

---@type ronin.HighlightFunction
function M.get(c, opts)
    return {
        TelescopeBorder = { fg = c.red, bg = c.red },
    }
end

return M
