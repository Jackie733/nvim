return {
  {
    "folke/tokyonight.nvim",
    lazy = false,
    priority = 1000,
    opts = {
      style = "night", -- storm, moon, night, day
      transparent = true, -- 启用透明背景
      terminal_colors = true,
      styles = {
        comments = { italic = true },
        keywords = { italic = true },
        functions = {},
        variables = {},
        -- 背景样式
        sidebars = "transparent", -- sidebar 透明
        floats = "transparent", -- 浮动窗口透明
      },
      sidebars = { "qf", "help", "terminal", "packer" },
      -- 添加自定义高亮组配置，确保状态栏透明
      on_highlights = function(hl, c)
        -- 让状态栏背景透明
        hl.StatusLine = { bg = "NONE" }
        hl.StatusLineNC = { bg = "NONE" }
        -- 让 lualine 相关组件透明
        hl.lualine_a_normal = { bg = "NONE" }
        hl.lualine_b_normal = { bg = "NONE" }
        hl.lualine_c_normal = { bg = "NONE" }
        hl.lualine_x_normal = { bg = "NONE" }
        hl.lualine_y_normal = { bg = "NONE" }
        hl.lualine_z_normal = { bg = "NONE" }
        -- 其他模式的 lualine 组件
        hl.lualine_a_insert = { bg = "NONE" }
        hl.lualine_a_visual = { bg = "NONE" }
        hl.lualine_a_command = { bg = "NONE" }
        hl.lualine_a_replace = { bg = "NONE" }

        -- 为浮动窗口添加有颜色的边框，但保持背景透明
        hl.FloatBorder = {
          bg = "NONE",
          fg = c.blue, -- 使用蓝色边框
          bold = true,
        }
        hl.NormalFloat = { bg = "NONE" }

        -- LSP 相关浮动窗口边框
        hl.LspInfoBorder = {
          bg = "NONE",
          fg = c.cyan, -- 青色边框
          bold = true,
        }

        -- 诊断浮动窗口边框
        hl.DiagnosticFloatingError = { bg = "NONE", fg = c.red }
        hl.DiagnosticFloatingWarn = { bg = "NONE", fg = c.yellow }
        hl.DiagnosticFloatingInfo = { bg = "NONE", fg = c.blue }
        hl.DiagnosticFloatingHint = { bg = "NONE", fg = c.teal }

        -- 补全菜单边框和样式
        hl.CmpItemMenu = { bg = "NONE", fg = c.comment }
        hl.CmpItemKind = { bg = "NONE", fg = c.purple }
        hl.CmpBorder = {
          bg = "NONE",
          fg = c.purple, -- 紫色边框
          bold = true,
        }

        -- Mason 窗口边框
        hl.MasonNormal = { bg = "NONE" }
        hl.MasonBorder = {
          bg = "NONE",
          fg = c.green, -- 绿色边框
          bold = true,
        }

        -- Telescope 边框
        hl.TelescopeBorder = {
          bg = "NONE",
          fg = c.orange, -- 橙色边框
          bold = true,
        }
        hl.TelescopeNormal = { bg = "NONE" }

        -- 终端相关透明设置
        hl.Terminal = { bg = "NONE" }
        hl.TerminalNormal = { bg = "NONE" }
        hl.TerminalNC = { bg = "NONE" }

        -- Tab
        hl.TabLine = { bg = "NONE", fg = c.comment }
        hl.TabLineSel = { bg = "NONE", fg = c.blue }
        hl.TabLineFill = { bg = "NONE" }
      end,
    },
  },
}
