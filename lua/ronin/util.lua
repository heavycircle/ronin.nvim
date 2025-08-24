-- "Borrowed" from folke/tokyonight.nvim

local M = {}

-- Default colors
M.bg = "#0A0A0A"
M.fg = "#D5D9DD"

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

---@param c  string
local function rgb(c)
    c = string.lower(c)
    return { tonumber(c:sub(2, 3), 16), tonumber(c:sub(4, 5), 16), tonumber(c:sub(6, 7), 16) }
end

---@param foreground string foreground color
---@param background string background color
---@param alpha number|string number between 0 and 1. 0 results in bg, 1 results in fg
function M.blend(foreground, alpha, background)
    alpha = type(alpha) == "string" and (tonumber(alpha, 16) / 0xff) or alpha
    local bg = rgb(background)
    local fg = rgb(foreground)

    local blendChannel = function(i)
        local ret = (alpha * fg[i] + ((1 - alpha) * bg[i]))
        return math.floor(math.min(math.max(0, ret), 255) + 0.5)
    end

    return string.format("#%02x%02x%02x", blendChannel(1), blendChannel(2), blendChannel(3))
end

function M.blend_bg(hex, amount, bg)
    return M.blend(hex, amount, bg or M.bg)
end

return M
