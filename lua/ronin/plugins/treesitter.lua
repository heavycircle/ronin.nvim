local M = {}

---@type ronin.HighlightFunction
function M.get(c, opts)
    local ret = {
        -- Comments / notes
        ["@comment"]                      = "Comment",
        ["@comment.error"]                = { fg = c.error },
        ["@comment.hint"]                 = { fg = c.hint },
        ["@comment.info"]                 = { fg = c.info },
        ["@comment.note"]                 = { fg = c.hint },
        ["@comment.todo"]                 = { fg = c.todo },
        ["@comment.warning"]              = { fg = c.warning },

        -- Constants
        ["@constant"]                     = "Constant",
        ["@constant.builtin"]             = "Special",
        ["@constant.macro"]               = "Define",

        -- Diff
        ["@diff.delta"]                   = "DiffChange",
        ["@diff.minus"]                   = "DiffDelete",
        ["@diff.plus"]                    = "DiffAdd",

        -- Functions
        ["@function"]                     = "Function",
        ["@function.builtin"]             = "Special",
        ["@function.call"]                = "@function",
        ["@function.macro"]               = "Macro",
        ["@function.method"]              = "Function",
        ["@function.method.call"]         = "@function.method",

        -- Keywords
        ["@keyword"]                      = { fg = c.red2, style = opts.styles.keywords },
        ["@keyword.conditional"]          = "Conditional",
        ["@keyword.coroutine"]            = "@keyword",
        ["@keyword.debug"]                = "Debug",
        ["@keyword.directive"]            = "PreProc",
        ["@keyword.directive.define"]     = "Define",
        ["@keyword.exception"]            = "Exception",
        ["@keyword.function"]             = { fg = c.red2, style = opts.styles.functions },
        ["@keyword.import"]               = "Include",
        ["@keyword.operator"]             = { fg = c.red3 },
        ["@keyword.repeat"]               = "Repeat",
        ["@keyword.return"]               = "@keyword",
        ["@keyword.storage"]              = "StorageClass",

        -- Labels / tags
        ["@label"]                        = "Label",
        ["@tag"]                          = "Label",
        ["@tag.attribute"]                = "@property",
        ["@tag.delimiter"]                = "Delimiter",
        ["@tag.tsx"]                      = { fg = c.red },
        ["@tag.javascript"]               = { fg = c.red },

        -- Markup
        ["@markup"]                       = "@none",
        ["@markup.emphasis"]              = { italic = true },
        ["@markup.environment"]           = "Macro",
        ["@markup.environment.name"]      = "Type",
        ["@markup.heading"]               = "Title",
        ["@markup.italic"]                = { italic = true },
        ["@markup.link"]                  = { fg = c.red2 },
        ["@markup.link.label"]            = "SpecialChar",
        ["@markup.link.label.symbol"]     = "Identifier",
        ["@markup.link.url"]              = "Underlined",
        ["@markup.list"]                  = { fg = c.ember },
        ["@markup.list.checked"]          = { fg = c.clay },
        ["@markup.list.markdown"]         = { fg = c.red2, bold = true },
        ["@markup.list.unchecked"]        = { fg = c.gray },
        ["@markup.math"]                  = "Special",
        ["@markup.raw"]                   = "String",
        ["@markup.raw.markdown_inline"]   = { bg = c.bg, fg = c.ember },
        ["@markup.strikethrough"]         = { strikethrough = true },
        ["@markup.strong"]                = { bold = true },
        ["@markup.underline"]             = { underline = true },

        -- Modules/namespaces
        ["@module"]                       = "Directory",
        ["@module.builtin"]               = { fg = c.red },
        ["@namespace.builtin"]            = "@variable.builtin",

        -- Variables
        ["@variable"]                     = { fg = c.fg, style = opts.styles.variables },
        ["@variable.builtin"]             = { fg = c.red },
        ["@variable.member"]              = { fg = c.blue3 },
        ["@variable.parameter"]           = { fg = c.blue4 },
        ["@variable.parameter.builtin"]   = { fg = c.sand },

        -- Numbers / strings
        ["@number"]                       = "Number",
        ["@number.float"]                 = "Float",
        ["@string"]                       = "String",
        ["@string.documentation"]         = { fg = c.blue3 },
        ["@string.escape"]                = { fg = c.rose },
        ["@string.regexp"]                = { fg = c.red3 },

        -- Types
        ["@type"]                         = "Type",
        ["@type.builtin"]                 = { fg = c.sand },
        ["@type.definition"]              = "Typedef",
        ["@type.qualifier"]               = "@keyword",

        -- Operators / punctuation
        ["@operator"]                     = { fg = c.red3 },
        ["@property"]                     = { fg = c.blue3 },
        ["@punctuation.bracket"]          = { fg = c.gray },
        ["@punctuation.delimiter"]        = { fg = c.gray },
        ["@punctuation.special"]          = { fg = c.gray },
        ["@punctuation.special.markdown"] = { fg = c.sand },
    }

    return ret
end

return M
