local Util = require("ronin.util")

-- This file represents the base configuration (as in, default Neovim).
-- Plugins will go in other files to be enabled at the user's convenience.

local M = {}

---@type ronin.HighlightFunction
function M.get(c, opts)
    return {
        ---------------------------------------------------------------------------
        --  UI
        ---------------------------------------------------------------------------

        Bold                       = { bold = true, fg = c.fg },
        Italic                     = { italic = true, fg = c.fg },
        Underlined                 = { underline = true },

        Normal                     = { fg = c.fg, bg = opts.transparent and c.none or c.bg },
        NormalNC                   = { fg = c.fg, bg = opts.transparent and c.none or "#080808" },
        NormalFloat                = { fg = c.fg, bg = c.midnight },
        FloatBorder                = { fg = c.gray, bg = c.midnight },
        Visual                     = { fg = c.bg, bg = c.blue },
        Search                     = { fg = c.bg, bg = c.rose },
        IncSearch                  = { fg = c.bg, bg = c.red2 },
        CurSearch                  = { fg = c.bg, bg = c.red2 },

        CursorLine                 = { bg = "#111111" },
        CursorLineNr               = { fg = c.red2, bold = true },
        LineNr                     = { fg = c.gray },
        WinSeparator               = { fg = c.gray },
        Folded                     = { fg = c.blue4, bg = c.midnight },
        FoldColumn                 = { fg = c.gray, bg = c.none },
        SignColumn                 = { fg = c.gray, bg = c.none },
        ColorColumn                = { bg = "#0f0f0f" },

        Pmenu                      = { fg = c.fg, bg = c.midnight },
        PmenuSel                   = { fg = c.bg, bg = c.fg, bold = true },
        PmenuSbar                  = { bg = c.midnight },
        PmenuThumb                 = { bg = c.fg },

        StatusLine                 = { fg = c.fg, bg = c.midnight },
        StatusLineNC               = { fg = c.gray, bg = c.bg },
        TabLine                    = { fg = c.gray, bg = c.midnight },
        TabLineSel                 = { fg = c.bg, bg = c.red2, bold = true },
        TabLineFill                = { fg = c.gray, bg = c.bg },

        Directory                  = { fg = c.blue },
        Title                      = { fg = c.fg, bold = true },
        MatchParen                 = { fg = c.white, bg = c.midnight, bold = true },
        Whitespace                 = { fg = c.gray },
        NonText                    = { fg = c.gray },

        ---------------------------------------------------------------------------
        --  SYNTAX
        ---------------------------------------------------------------------------
        Comment                    = { fg = c.gray, style = opts.styles.comments },

        Constant                   = { fg = c.bronze },
        String                     = { fg = c.ember },
        Character                  = { fg = c.ember },
        Number                     = { fg = c.bronze },
        Boolean                    = { fg = c.bronze, bold = true },
        Float                      = { fg = c.bronze },

        Identifier                 = { fg = c.fg },
        Function                   = { fg = c.blue },

        Statement                  = { fg = c.red2 },
        Conditional                = { fg = c.red2 },
        Repeat                     = { fg = c.red2 },
        Label                      = { fg = c.blue },
        Operator                   = { fg = c.red3, style = opts.styles.operators },
        Keyword                    = { fg = c.red2, style = opts.styles.keywords },
        Exception                  = { fg = c.red2 },

        PreProc                    = { fg = c.blue },
        Include                    = { fg = c.blue },
        Define                     = { fg = c.blue },
        Macro                      = { fg = c.blue },
        PreCondit                  = { fg = c.blue },

        Type                       = { fg = c.sand },
        StorageClass               = { fg = c.sand },
        Structure                  = { fg = c.sand },
        Typedef                    = { fg = c.sand },

        Special                    = { fg = c.blue },
        SpecialComment             = { fg = c.gray, italic = true },
        Delimiter                  = { fg = c.gray },
        SpecialChar                = { fg = c.rose },
        Tag                        = { fg = c.blue },
        Todo                       = { fg = c.bg, bg = c.red2, bold = true },

        ---------------------------------------------------------------------------
        --  DIAGNOSTICS
        ---------------------------------------------------------------------------
        DiagnosticError            = { fg = c.red },
        DiagnosticWarn             = { fg = c.red3 },
        DiagnosticInfo             = { fg = c.indigo },
        DiagnosticHint             = { fg = c.blue3 },
        DiagnosticUnnecessary      = { fg = c.midnight },

        DiagnosticVirtualTextError = { bg = Util.blend_bg(c.red, 0.1), fg = c.red },
        DiagnosticVirtualTextWarn  = { bg = Util.blend_bg(c.red3, 0.1), fg = c.red3 },
        DiagnosticVirtualTextInfo  = { bg = Util.blend_bg(c.indigo, 0.1), fg = c.indigo },
        DiagnosticVirtualTextHint  = { bg = Util.blend_bg(c.blue3, 0.1), fg = c.blue3 },

        DiagnosticUnderlineError   = { undercurl = true, sp = c.red },
        DiagnosticUnderlineWarn    = { undercurl = true, sp = c.red3 },
        DiagnosticUnderlineInfo    = { undercurl = true, sp = c.indigo },
        DiagnosticUnderlineHint    = { undercurl = true, sp = c.blue3 },

        ---------------------------------------------------------------------------
        --  DIFF
        ---------------------------------------------------------------------------
        DiffAdd                    = { fg = c.blue3 },
        DiffChange                 = { fg = c.ember },
        DiffDelete                 = { fg = c.red2 },
        DiffText                   = { fg = c.red3 },
    }
end

return M
