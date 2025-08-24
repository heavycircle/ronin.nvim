local M = {}

M.version = "1.1.0"

---@class ronin.Config
M.defaults = {
    transparent = false,
    styles = {
        comments = { italic = true },
        keywords = { italic = true },
        functions = {},
        variables = {},
    },
    plugins = {
        all = false,
        lualine = true,
    }
}

---@type ronin.Config
M.options = nil

---@param options? ronin.Config
function M.setup(options)
    M.options = vim.tbl_deep_extend("force", {}, M.defaults, options or {})
end

---@param opts? ronin.Config
function M.extend(opts)
    return opts and vim.tbl_deep_extend("force", {}, M.options, opts) or M.options
end

-- Merge options with defaults
setmetatable(M, {
    __index = function(_, k)
        if k == "options" then
            return M.defaults
        end
    end,
})

return M
