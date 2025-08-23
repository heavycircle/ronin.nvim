local M = {}

---@type ronin.HighlightFunction
function M.get(c, opts)
    return {
        Comment = { fg = c.gray, style = opts.styles.comments }, -- Any comment
        ColorColumn = { bg = c.bg },
        Normal = { fg = c.fg, bg = opts.transparent and c.none or c.bg }, -- Normal text
        NormalNC = { fg = c.fg, bg = opts.transparent and c.none or c.bg }, -- Normal text
    }
end

return M
