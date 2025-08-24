local M = {}

M.url = "https://github.com/hrsh7th/nvim-cmp"

---@type ronin.HighlightFunction
function M.get(c, opts)
    local ret = {
        CmpDocumentation       = { fg = c.fg, bg = c.midnight },
        CmpDocumentationBorder = { fg = c.gray, bg = c.midnight },
        CmpGhostText           = { fg = c.gray, bg = c.none },
        CmpItemAbbr            = { fg = c.fg, bg = c.none },
        CmpItemAbbrDeprecated  = { fg = c.gray, bg = c.none, strikethrough = true },
        CmpItemAbbrMatch       = { fg = c.indigo, bg = c.none, bold = true },
        CmpItemAbbrMatchFuzzy  = { fg = c.indigo, bg = c.none },
        CmpItemMenu            = { fg = c.gray, bg = c.none },
    }

    -- Get the rest from kinds
    require("ronin.plugins.kinds").kinds(ret, "CmpItemKind%s")
    return ret
end

return M
