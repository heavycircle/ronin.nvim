local M = {}

---@type ronin.HighlightFunction
function M.get(c, opts)
    local ret = {
        ["@annotation"] = "PreProc",
        ["@string"] = "String"
    }

    return ret
end

return M
