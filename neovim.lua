-- LCOS Light for Neovim: cream "Lunduke Edit" paper, title-bar blue
return {
  { "LazyVim/LazyVim", opts = { colorscheme = "lcos-light" } },
  {
    "lcos-light-colors",
    name = "lcos-light-colors",
    dir = vim.fn.stdpath("config"),
    lazy = false,
    priority = 1000,
    config = function()
      local c = {
        bg = "#f7f4e8", fg = "#1a1a1a", sel = "#edeceb", dim = "#9c9da1",
        blue = "#3359d9", title = "#5f8ccb", brown = "#8a6a2e", green = "#1d7a32",
        red = "#a01423", purple = "#6b3fa0", cyan = "#1d7f9f",
      }
      vim.cmd("hi clear")
      vim.o.background = "light"
      vim.g.colors_name = "lcos-light"
      vim.o.termguicolors = true
      local hl = function(g, o) vim.api.nvim_set_hl(0, g, o) end
      hl("Normal", { fg = c.fg, bg = c.bg })
      hl("CursorLine", { bg = c.sel })
      hl("Visual", { bg = "#a5c2e7", fg = c.fg })
      hl("LineNr", { fg = c.dim })
      hl("CursorLineNr", { fg = c.blue, bold = true })
      hl("Comment", { fg = "#7a7b80", italic = true })
      hl("String", { fg = c.green })
      hl("Number", { fg = c.brown })
      hl("Keyword", { fg = c.blue, bold = true })
      hl("Function", { fg = c.fg, bold = true })
      hl("Type", { fg = c.cyan })
      hl("Identifier", { fg = c.fg })
      hl("Constant", { fg = c.purple })
      hl("Operator", { fg = c.title })
      hl("Error", { fg = c.red, bold = true })
      hl("StatusLine", { fg = "#ffffff", bg = c.title })
      hl("Pmenu", { fg = c.fg, bg = c.sel })
      hl("PmenuSel", { fg = c.fg, bg = "#a5c2e7" })
    end,
  },
}
