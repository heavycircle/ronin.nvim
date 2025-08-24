local M = {}

M.url = "https://github.com/lewis6991/gitsigns.nvim"

---@type ronin.HighlightFunction
function M.get(c, opts)
    return {
        GitSignsAdd    = "DiffAdd",
        GitSignsChange = "DiffChange",
        GitSignsDelete = "DiffDelete",
    }
end

return M
