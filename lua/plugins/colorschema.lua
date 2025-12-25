return {
  {
    "rebelot/kanagawa.nvim",
    priority = 1000,
    config = function()
      require("kanagawa").setup({
        theme = "wave",
        background = {
          dark = "wave",
          light = "lotus",
        },
        overrides = function(colors)
          local bg = colors.theme.ui.bg
          return {
            NormalFloat = { bg = bg, fg = colors.theme.ui.fg },
            FloatBorder = { bg = bg, fg = colors.theme.ui.float.fg_border },
          }
        end,
      })
      vim.cmd.colorscheme("kanagawa")
    end,
  },
}
