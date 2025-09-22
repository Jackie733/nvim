return {
  "nvim-lualine/lualine.nvim",
  event = "VeryLazy",
  opts = function()
    local ui_fg = "#c5c9c5"
    local ui_fg_dim = "#a9b1d6"
    local inactive_fg = "#565f89"
    local palette = {}

    local ok, kanagawa_colors = pcall(require, "kanagawa.colors")
    if ok then
      local success, colors = pcall(kanagawa_colors.setup)
      if success then
        ui_fg = colors.theme.ui.fg
        ui_fg_dim = colors.theme.ui.fg_dim
        inactive_fg = colors.theme.ui.nontext
        palette = colors.palette
      end
    end

    local function section(color, bold)
      local highlight = { bg = "NONE", fg = color }
      if bold then
        highlight.gui = "bold"
      end
      return highlight
    end

    local accent = {
      normal = palette.dragonBlue2 or "#7aa2f7",
      insert = palette.dragonGreen or "#9ece6a",
      visual = palette.dragonViolet or "#bb9af7",
      replace = palette.dragonRed or "#f7768e",
      command = palette.dragonYellow or "#e0af68",
    }

    local function mode_theme(color)
      return {
        a = section(color, true),
        b = section(ui_fg),
        c = section(ui_fg_dim),
        x = section(ui_fg_dim),
        y = section(ui_fg),
        z = section(color, true),
      }
    end

    local transparent_theme = {
      normal = mode_theme(accent.normal),
      insert = mode_theme(accent.insert),
      visual = mode_theme(accent.visual),
      replace = mode_theme(accent.replace),
      command = mode_theme(accent.command),
      inactive = {
        a = section(inactive_fg),
        b = section(inactive_fg),
        c = section(inactive_fg),
        x = section(inactive_fg),
        y = section(inactive_fg),
        z = section(inactive_fg),
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
