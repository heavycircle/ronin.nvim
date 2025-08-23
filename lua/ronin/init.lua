local config = require "ronin.config"

local M = {}

---@param opts? ronin.Config
function M.load(opts)
    require("ronin.theme").setup(opts)
end

M.setup = config.setup

return M
