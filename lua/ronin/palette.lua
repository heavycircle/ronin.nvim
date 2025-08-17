local M = {}

-- Base Ronin palette
local base = {
    bg     = "#0A0A0A",
    fg     = "#C8CDD1",
    dim    = "#ECE6DA",
    red    = "#A11212",
    red_hi = "#C01A1A",
    teal   = "#2B7C73",
    gray   = "#495159",
    white  = "#FFFFFF",
    ember  = "#D1643B",
}

function M.resolve(opts)
    opts = opts or {}
    local p = vim.tbl_extend("force", {}, base)
    if opts.brighter_red then
        p.red = p.red_hi
    end
    return p
end

return M
