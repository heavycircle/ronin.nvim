local M = {}

function M.hl(group, spec)
    vim.api.nvim_set_hl(0, group, spec)
end

---@param plugins ronin.Highlights
---@return table<string, vim.api.keyset.highlight>
function M.resolve(plugins)
    for _, hl in pairs(plugins) do
        if type(hl.style) == "table" then
            for k, v in pairs(hl.style) do
                hl[k] = v
            end
            hl.style = nil
        end
    end
    return plugins
end

return M
