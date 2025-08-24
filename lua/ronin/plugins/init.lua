local util = require "ronin.util"

local M = {}

M.plugins = {
    ["gitsigns.nvim"] = "gitsigns",
    ["telescope.nvim"] = "telescope",
    ["treesitter.nvim"] = "treesitter",
}

---@param colors Colorscheme
---@param opts ronin.Config
function M.get(name, colors, opts)
    local mod = require("ronin.plugins." .. name)
    return mod.get(colors, opts)
end

---@param colors Colorscheme
---@param opts ronin.Config
function M.setup(colors, opts)
    -- Base installation
    local groups = {
        base = true,
        kinds = true,
    }

    -- Add everything
    if opts.plugins.all then
        for _, group in pairs(M.plugins) do
            groups[group] = true
        end
    end

    -- Manually enable the plugins
    for plugin, group in pairs(M.plugins) do
        -- Check if we're enabling this one
        local use = opts.plugins[group]
        use = use == nil and opts.plugins[plugin] or use

        if use ~= nil then
            if type(use) == "table" then
                use = use.enabled
            end
            groups[group] = use or nil
        end
    end

    -- Merge highlights
    local ret = {}
    for group in pairs(groups) do
        for k, v in pairs(M.get(group, colors, opts)) do
            ret[k] = v
        end
    end
    util.resolve(ret)

    return ret, groups
end

return M
