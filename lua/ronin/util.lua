local M = {}

function M.hl(group, spec)
  vim.api.nvim_set_hl(0, group, spec)
end

return M
