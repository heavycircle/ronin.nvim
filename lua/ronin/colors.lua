local M = {}

---@class Palette
M.palette = {
    none  = "NONE",
    bg    = "#0A0A0A",   -- Void Black
    fg    = "#D5D9DD",   -- Brighter Moonlight Silver (main text)
    dim   = "#ECE6DA",   -- Spirit Ash (light accents)
    red   = "#7A0D0D",   -- Crimson Glow
    teal  = "#2B6C73",   -- Bright Storm Teal
    gray  = "#495159",   -- Mid Steel Gray (comments / punctuation)
    white = "#FFFFFF",
    ember = "#D1643B",   -- Sunset Ember (strings, diffs)
    sand  = "#E0C9A6",   -- Warm sand (numbers, types, constants)
}

---@param opts? ronin.Config
function M.setup(opts)
    opts = require("ronin.config").extend(opts)

    ---@class Colorscheme: Palette
    local colors = M.palette

    -- FUTURE: More options for colors

    return colors, opts
end

return M
