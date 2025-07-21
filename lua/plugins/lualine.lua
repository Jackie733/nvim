return {
  "nvim-lualine/lualine.nvim",
  event = "VeryLazy",
  opts = function()
    -- 创建透明主题
    local transparent_theme = {
      normal = {
        a = { bg = "NONE", fg = "#7aa2f7", gui = "bold" },
        b = { bg = "NONE", fg = "#7dcfff" },
        c = { bg = "NONE", fg = "#a9b1d6" },
        x = { bg = "NONE", fg = "#a9b1d6" },
        y = { bg = "NONE", fg = "#7dcfff" },
        z = { bg = "NONE", fg = "#7aa2f7", gui = "bold" },
      },
      insert = {
        a = { bg = "NONE", fg = "#9ece6a", gui = "bold" },
        b = { bg = "NONE", fg = "#7dcfff" },
        c = { bg = "NONE", fg = "#a9b1d6" },
        x = { bg = "NONE", fg = "#a9b1d6" },
        y = { bg = "NONE", fg = "#7dcfff" },
        z = { bg = "NONE", fg = "#9ece6a", gui = "bold" },
      },
      visual = {
        a = { bg = "NONE", fg = "#bb9af7", gui = "bold" },
        b = { bg = "NONE", fg = "#7dcfff" },
        c = { bg = "NONE", fg = "#a9b1d6" },
        x = { bg = "NONE", fg = "#a9b1d6" },
        y = { bg = "NONE", fg = "#7dcfff" },
        z = { bg = "NONE", fg = "#bb9af7", gui = "bold" },
      },
      replace = {
        a = { bg = "NONE", fg = "#f7768e", gui = "bold" },
        b = { bg = "NONE", fg = "#7dcfff" },
        c = { bg = "NONE", fg = "#a9b1d6" },
        x = { bg = "NONE", fg = "#a9b1d6" },
        y = { bg = "NONE", fg = "#7dcfff" },
        z = { bg = "NONE", fg = "#f7768e", gui = "bold" },
      },
      command = {
        a = { bg = "NONE", fg = "#e0af68", gui = "bold" },
        b = { bg = "NONE", fg = "#7dcfff" },
        c = { bg = "NONE", fg = "#a9b1d6" },
        x = { bg = "NONE", fg = "#a9b1d6" },
        y = { bg = "NONE", fg = "#7dcfff" },
        z = { bg = "NONE", fg = "#e0af68", gui = "bold" },
      },
      inactive = {
        a = { bg = "NONE", fg = "#565f89" },
        b = { bg = "NONE", fg = "#565f89" },
        c = { bg = "NONE", fg = "#565f89" },
        x = { bg = "NONE", fg = "#565f89" },
        y = { bg = "NONE", fg = "#565f89" },
        z = { bg = "NONE", fg = "#565f89" },
      },
    }

    return {
      options = {
        theme = transparent_theme,
        component_separators = { left = "", right = "" },
        section_separators = { left = "", right = "" },
        globalstatus = true,
      },
      sections = {
        lualine_a = { "mode" },
        lualine_b = { "branch", "diff", "diagnostics" },
        lualine_c = { "filename" },
        lualine_x = { "encoding", "fileformat", "filetype" },
        lualine_y = { "progress" },
        lualine_z = { "location" },
      },
      inactive_sections = {
        lualine_a = {},
        lualine_b = {},
        lualine_c = { "filename" },
        lualine_x = { "location" },
        lualine_y = {},
        lualine_z = {},
      },
    }
  end,
}
