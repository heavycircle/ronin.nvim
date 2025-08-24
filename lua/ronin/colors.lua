local M = {}

---@class Palette
M.palette = {
    -- Darks
    bg       = "#0A0A0A", -- Void Black
    midnight = "#1E2A36", -- Iron Midnight
    gray     = "#495159", -- Steel Gray
    -- Lights
    fg       = "#D5D9DD", -- Moonlight Silver
    ash      = "#ECE6DA", -- Spirit Ash
    white    = "#FFFFFF",
    -- Reds
    red      = "#A11212", -- Crimson Glow
    red2     = "#C01A1A", -- Highlight Crimson
    red3     = "#D64933", -- Blood Ember
    red4     = "#E27396", -- Rose Ash
    -- Blues
    blue     = "#2B6C73", -- Storm Teal
    blue2    = "#20505B", -- Deep Ocean
    blue3    = "#3FA7A4", -- Jade Mist
    blue4    = "#9FD9D5", -- Ice Silver
    -- Earths
    ember    = "#D1643B", -- Sunset Ember
    sand     = "#E0C9A6", -- Warm sand
    clay     = "#A86F3E", -- Desert Clay
    umber    = "#704214", -- Burnt Umber
    -- Highlights
    rose     = "#B84A62", -- Iron Rose
    bronze   = "#C27C2C", -- Molten Bronze
    indigo   = "#3B5C9F", -- Midnight Indigo
}

---@param opts? ronin.Config
function M.setup(opts)
    opts           = require("ronin.config").extend(opts)

    ---@class Colorscheme: Palette
    local colors   = M.palette

    -- Transparent color
    colors.none    = "NONE"

    -- Error classes
    colors.error   = colors.red
    colors.todo    = colors.blue
    colors.warning = colors.sand
    colors.info    = colors.indigo
    colors.hint    = colors.blue3

    return colors, opts
end

return M
