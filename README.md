# ronin.nvim — Masked Ronin colorscheme

A dark, high-contrast Neovim theme inspired by a masked ronin aesthetic (bushido palette).
Moonlit silver text on void-black backgrounds with crimson + teal accents.

![Ronin Sample](https://github.com/user-attachments/assets/0fdaa519-51ca-43fe-871d-06992e963619)

## Install

### Using lazy.nvim
```lua
{ 
  "heavycircle/ronin.nvim",
  lazy = false, priority = 1000,
  opts = {
    transparent = false, -- set true to keep terminal/GUI background
    brighter_red = true, -- use a brighter crimson for accents
    italics = { comments = true, keywords = true },
  },
  config = function(_, opts)
    require("ronin").setup(opts)
    vim.cmd.colorscheme("ronin")
  end
}
```

### Using packer.nvim
```lua
use({
  "heavycircle/ronin.nvim",
  config = function()
    require("ronin").setup({
      transparent = false,
      brighter_red = true,
      italics = { comments = true, keywords = true },
    })
    vim.cmd.colorscheme("ronin")
  end,
})
```

### Using built-in `vim.pack.add()` (Neovim 0.10+)
```lua
vim.pack.add({ { src = "https://github.com/heavycircle/ronin.nvim" } })
require("ronin").setup({
  transparent = false,
  brighter_red = true,
  italics = { comments = true, keywords = true },
})
vim.cmd.colorscheme("ronin")
```

## Options
```lua
require("ronin").setup({
  transparent = false,     -- use NONE for main background
  brighter_red = true,     -- switch accent red (#A11212 -> #C01A1A for stronger glow)
  italics = {
    comments = true,
    keywords = true,
    strings  = false,
  },
  dim_inactive = false,    -- darker background for inactive windows
})
```

## Integrations
- LSP/diagnostics and Treesitter base groups
- Telescope selections
- Lualine theme `ronin` included: `require('lualine').setup({ options = { theme = 'ronin' } })`

---

MIT © heavycircle
