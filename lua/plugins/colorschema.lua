return {
  {
    "blazkowolf/gruber-darker.nvim",
    lazy = false,
    priority = 1000,
    opts = {
      transparent = true,
    },
    config = function(_, opts)
      require("gruber-darker").setup(opts)
      vim.cmd.colorscheme("gruber-darker")

      -- 自定义高亮配色方案
      -- 字段颜色
      vim.api.nvim_set_hl(0, "@field", { fg = "#a8a8a8", bold = true })
      vim.api.nvim_set_hl(0, "@property", { link = "@field" })

      vim.api.nvim_set_hl(0, "SnacksPickerDir", { fg = "#a8a8a8" })

      -- 这对应终端中的白色和亮白色，它们是用户输入和主要输出的颜色。
      vim.g.terminal_color_7 = "#e4e4e4"
      vim.g.terminal_color_15 = "#e4e4e4"
      -- 终端Stack Trace/辅助配色调整
      vim.g.terminal_color_8 = "#707070"
      vim.g.terminal_color_0 = "#454545"
    end,
  },
}
