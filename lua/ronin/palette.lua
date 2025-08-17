local M = {}

-- Base Ronin palette
local base = {
  bg        = "#0A0A0A", -- Void Black
  fg        = "#C8CDD1", -- Moonlight Silver
  dim       = "#ECE6DA", -- Spirit Ash
  red       = "#A11212", -- Crimson Glow
  red_hi    = "#C01A1A", -- Highlight Crimson
  teal      = "#204F55", -- Storm Teal
  gray      = "#1E2A36", -- Iron Midnight
  white     = "#FFFFFF",
  ember     = "#D1643B", -- Sunset Ember
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
