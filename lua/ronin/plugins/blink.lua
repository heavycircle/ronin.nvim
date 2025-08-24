local Util = require "ronin.util"

local M = {}

M.url = "https://github.com/saghen/blink.cmp"

---@type ronin.HighlightFunction
function M.get(c, opts)
    local ret = {
        BlinkCmpDoc             = { fg = c.fg, bg = c.midnight },
        BlinkCmpDocBorder       = { fg = c.gray, bg = c.midnight },
        BlinkCmpGhostText       = { fg = c.gray, bg = c.none },
        BlinkCmpLabel           = { fg = c.fg, bg = c.none },
        BlinkCmpLabelDeprecated = { fg = c.gray, bg = c.none, strikethrough = true },
        BlinkCmpLabelMatch      = { fg = c.indigo, bg = c.none, bold = true },
        BlinkCmpMenu            = { fg = c.fg, bg = c.midnight },
        BlinkCmpMenuBorder      = { fg = c.gray, bg = c.midnight },
        BlinkCmpMenuSelection   = { fg = c.fg, bg = Util.blend_bg(c.bg, 0.1), bold = true },
        BlinkCmpSignature       = { fg = c.fg, bg = c.midnight },
        BlinkCmpSignatureBorder = { fg = c.gray, bg = c.midnight },
    }

    -- Get the rest from kinds
    require("ronin.plugins.kinds").kinds(ret, "BlinkCmpKind%s")
    return ret
end

return M
