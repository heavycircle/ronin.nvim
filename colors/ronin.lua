-- colorscheme entrypoint
local ok, ronin = pcall(require, "ronin")
if not ok then
  return
end

-- If user hasn't called setup(), use defaults now
if not ronin.opts then
  ronin.setup({})
end

vim.g.colors_name = "ronin"
