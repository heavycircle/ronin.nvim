local palette = require("ronin.palette")
local hi = require("ronin.highlights")

local M = {}

local defaults = {
  transparent = false,
  brighter_red = true,
  italics = {
    comments = true,
    keywords = true,
    strings  = false,
  },
  dim_inactive = false,
}

function M.setup(opts)
  M.opts = vim.tbl_deep_extend("force", defaults, opts or {})
  local p = palette.resolve(M.opts)
  hi.apply(p, M.opts)
end

return M
