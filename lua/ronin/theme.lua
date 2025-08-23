local M = {}

function M.setup(opts)
    -- Setup core options
    opts = require("ronin.config").extend(opts)

    -- Setup all colors
    local colors = require("ronin.colors").setup(opts)
    local plugins = require("ronin.plugins").setup(colors, opts)

    -- Clear current highlight
    vim.cmd.highlight "clear"
    if vim.fn.exists "syntax on" then
        vim.cmd "syntax reset"
    end

    -- Set the name of the colorscheme
    vim.o.termguicolors = true
    vim.g.colors_name = "ronin"

--    vim.notify('plugins: ' .. vim.inspect(plugins))

    -- Set all the colors
    for plugin, hl in pairs(plugins) do
        hl = type(hl) == "string" and { link = hl } or hl
        vim.api.nvim_set_hl(0, plugin, hl)
    end

    return colors, plugins, opts
end

return M
