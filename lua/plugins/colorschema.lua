return {
  -- {
  --   "Mofiqul/vscode.nvim",
  --   enabled = false,
  --   lazy = false,
  --   priority = 1000,
  --   config = function()
  --     local c = require("vscode.colors").get_colors()
  --     require("vscode").setup({
  --       -- 启用透明背景
  --       transparent = true,

  --       -- 启用斜体注释和关键字（类似你的原配置）
  --       italic_comments = true,

  --       -- 禁用 nvim-tree 背景色（保持透明）
  --       disable_nvimtree_bg = true,

  --       -- 颜色覆盖配置
  --       color_overrides = {
  --         -- 可以在这里覆盖特定颜色，如果需要的话
  --       },

  --       -- 自定义高亮组配置
  --       group_overrides = {
  --         -- 状态栏透明
  --         StatusLine = { bg = "NONE" },
  --         StatusLineNC = { bg = "NONE" },

  --         -- Lualine 组件透明
  --         lualine_a_normal = { bg = "NONE" },
  --         lualine_b_normal = { bg = "NONE" },
  --         lualine_c_normal = { bg = "NONE" },
  --         lualine_x_normal = { bg = "NONE" },
  --         lualine_y_normal = { bg = "NONE" },
  --         lualine_z_normal = { bg = "NONE" },

  --         -- 其他模式的 lualine 组件
  --         lualine_a_insert = { bg = "NONE" },
  --         lualine_a_visual = { bg = "NONE" },
  --         lualine_a_command = { bg = "NONE" },
  --         lualine_a_replace = { bg = "NONE" },

  --         -- 浮动窗口相关
  --         FloatBorder = {
  --           bg = "NONE",
  --           fg = c.vscBlue, -- 使用 VSCode 主题的蓝色
  --           bold = true,
  --         },
  --         NormalFloat = { bg = "NONE" },

  --         -- LSP 相关浮动窗口边框
  --         LspInfoBorder = {
  --           bg = "NONE",
  --           fg = c.vscCyan, -- 青色边框
  --           bold = true,
  --         },

  --         -- 诊断浮动窗口
  --         DiagnosticFloatingError = { bg = "NONE", fg = c.vscRed },
  --         DiagnosticFloatingWarn = { bg = "NONE", fg = c.vscYellow },
  --         DiagnosticFloatingInfo = { bg = "NONE", fg = c.vscBlue },
  --         DiagnosticFloatingHint = { bg = "NONE", fg = c.vscGreen },

  --         -- 补全菜单
  --         CmpItemMenu = { bg = "NONE", fg = c.vscGray },
  --         CmpItemKind = { bg = "NONE", fg = c.vscPink },
  --         CmpBorder = {
  --           bg = "NONE",
  --           fg = c.vscPink, -- 粉色边框
  --           bold = true,
  --         },

  --         -- Mason 窗口
  --         MasonNormal = { bg = "NONE" },
  --         MasonBorder = {
  --           bg = "NONE",
  --           fg = c.vscGreen, -- 绿色边框
  --           bold = true,
  --         },

  --         -- Telescope 边框
  --         TelescopeBorder = {
  --           bg = "NONE",
  --           fg = c.vscOrange, -- 橙色边框
  --           bold = true,
  --         },
  --         TelescopeNormal = { bg = "NONE" },

  --         -- 终端相关透明设置
  --         Terminal = { bg = "NONE" },
  --         TerminalNormal = { bg = "NONE" },
  --         TerminalNC = { bg = "NONE" },

  --         -- Tab 相关
  --         TabLine = { bg = "NONE", fg = c.vscGray },
  --         TabLineSel = { bg = "NONE", fg = c.vscBlue },
  --         TabLineFill = { bg = "NONE" },

  --         -- 侧边栏透明（NvimTree, Help 等）
  --         NvimTreeNormal = { bg = "NONE" },
  --         NvimTreeNormalNC = { bg = "NONE" },
  --         NvimTreeEndOfBuffer = { bg = "NONE" },

  --         -- 帮助窗口透明
  --         helpNormal = { bg = "NONE" },

  --         -- Quickfix 窗口透明
  --         qfNormal = { bg = "NONE" },

  --         -- 注释和关键字斜体
  --         Comment = { italic = true, fg = c.vscGray },
  --         Keyword = { italic = true, fg = c.vscPink },

  --         -- 确保主背景透明
  --         Normal = { bg = "NONE" },
  --         NormalNC = { bg = "NONE" },
  --         SignColumn = { bg = "NONE" },

  --         -- 行号背景透明
  --         LineNr = { bg = "NONE" },
  --         CursorLineNr = { bg = "NONE" },

  --         -- 折叠相关透明
  --         Folded = { bg = "NONE" },
  --         FoldColumn = { bg = "NONE" },
  --       },
  --     })

  --     -- 应用配色方案
  --     vim.cmd.colorscheme("vscode")
  --   end,
  -- },
  --
  -- {
  --   "folke/tokyonight.nvim",
  --   enabled = false,
  --   lazy = false,
  --   priority = 1000,
  --   opts = {
  --     style = "night", -- storm, moon, night, day
  --     transparent = true, -- 启用透明背景
  --     terminal_colors = true,
  --     styles = {
  --       comments = { italic = true },
  --       keywords = { italic = true },
  --       functions = {},
  --       variables = {},
  --       -- 背景样式
  --       sidebars = "transparent", -- sidebar 透明
  --       floats = "transparent", -- 浮动窗口透明
  --     },
  --     sidebars = { "qf", "help", "terminal", "packer" },
  --     -- 添加自定义高亮组配置，确保状态栏透明
  --     on_highlights = function(hl, c)
  --       -- 让状态栏背景透明
  --       hl.StatusLine = { bg = "NONE" }
  --       hl.StatusLineNC = { bg = "NONE" }
  --       -- 让 lualine 相关组件透明
  --       hl.lualine_a_normal = { bg = "NONE" }
  --       hl.lualine_b_normal = { bg = "NONE" }
  --       hl.lualine_c_normal = { bg = "NONE" }
  --       hl.lualine_x_normal = { bg = "NONE" }
  --       hl.lualine_y_normal = { bg = "NONE" }
  --       hl.lualine_z_normal = { bg = "NONE" }
  --       -- 其他模式的 lualine 组件
  --       hl.lualine_a_insert = { bg = "NONE" }
  --       hl.lualine_a_visual = { bg = "NONE" }
  --       hl.lualine_a_command = { bg = "NONE" }
  --       hl.lualine_a_replace = { bg = "NONE" }
  --
  --       -- 为浮动窗口添加有颜色的边框，但保持背景透明
  --       hl.FloatBorder = {
  --         bg = "NONE",
  --         fg = c.blue, -- 使用蓝色边框
  --         bold = true,
  --       }
  --       hl.NormalFloat = { bg = "NONE" }
  --
  --       -- LSP 相关浮动窗口边框
  --       hl.LspInfoBorder = {
  --         bg = "NONE",
  --         fg = c.cyan, -- 青色边框
  --         bold = true,
  --       }
  --
  --       -- 诊断浮动窗口边框
  --       hl.DiagnosticFloatingError = { bg = "NONE", fg = c.red }
  --       hl.DiagnosticFloatingWarn = { bg = "NONE", fg = c.yellow }
  --       hl.DiagnosticFloatingInfo = { bg = "NONE", fg = c.blue }
  --       hl.DiagnosticFloatingHint = { bg = "NONE", fg = c.teal }
  --
  --       -- 补全菜单边框和样式
  --       hl.CmpItemMenu = { bg = "NONE", fg = c.comment }
  --       hl.CmpItemKind = { bg = "NONE", fg = c.purple }
  --       hl.CmpBorder = {
  --         bg = "NONE",
  --         fg = c.purple, -- 紫色边框
  --         bold = true,
  --       }
  --
  --       -- Mason 窗口边框
  --       hl.MasonNormal = { bg = "NONE" }
  --       hl.MasonBorder = {
  --         bg = "NONE",
  --         fg = c.green, -- 绿色边框
  --         bold = true,
  --       }
  --
  --       -- Telescope 边框
  --       hl.TelescopeBorder = {
  --         bg = "NONE",
  --         fg = c.orange, -- 橙色边框
  --         bold = true,
  --       }
  --       hl.TelescopeNormal = { bg = "NONE" }
  --
  --       -- 终端相关透明设置
  --       hl.Terminal = { bg = "NONE" }
  --       hl.TerminalNormal = { bg = "NONE" }
  --       hl.TerminalNC = { bg = "NONE" }
  --
  --       -- Tab
  --       hl.TabLine = { bg = "NONE", fg = c.comment }
  --       hl.TabLineSel = { bg = "NONE", fg = c.blue }
  --       hl.TabLineFill = { bg = "NONE" }
  --     end,
  --   },
  -- },
  {
    "rebelot/kanagawa.nvim",
    lazy = false,
    priority = 1000,
    opts = {
      compile = false,
      undercurl = true,
      commentStyle = { italic = true },
      functionStyle = {},
      keywordStyle = { italic = true },
      statementStyle = { bold = true },

      transparent = true,
      terminalColors = true,
      dimInactive = false,

      theme = "dragon",
      background = {
        dark = "dragon",
        light = "lotus",
      },

      colors = {
        theme = {
          all = {
            ui = { bg_gutter = "none" },
          },
          dragon = {
            ui = {
              float = { bg = "none" },
            },
          },
        },
      },

      overrides = function(colors)
        local theme = colors.theme
        local palette = colors.palette
        return {
          NormalFloat = { bg = "none" },
          FloatBorder = { bg = "none", fg = theme.ui.float.fg_border },
          FloatTitle = { bg = "none" },

          LspInfoBorder = { bg = "none", fg = theme.ui.float.fg_border },
          -- 修改这里：让 Mason 透明
          MasonNormal = { bg = "none", fg = theme.ui.fg },
          MasonBorder = { bg = "none", fg = theme.ui.float.fg_border },

          TelescopeTitle = { fg = theme.ui.special, bold = true },
          TelescopePromptNormal = { bg = theme.ui.bg_p1 },
          TelescopePromptBorder = { fg = theme.ui.bg_p1, bg = theme.ui.bg_p1 },
          TelescopeResultsNormal = { fg = theme.ui.fg_dim, bg = theme.ui.bg_m1 },
          TelescopeResultsBorder = { fg = theme.ui.bg_m1, bg = theme.ui.bg_m1 },
          TelescopePreviewNormal = { bg = theme.ui.bg_dim },
          TelescopePreviewBorder = { fg = theme.ui.bg_dim, bg = theme.ui.bg_dim },

          Pmenu = { fg = theme.ui.pmenu.fg, bg = theme.ui.pmenu.bg },
          PmenuSel = {
            fg = theme.ui.pmenu.fg_sel ~= "none" and theme.ui.pmenu.fg_sel or theme.ui.fg,
            bg = theme.ui.pmenu.bg_sel,
          },
          PmenuSbar = { bg = theme.ui.pmenu.bg_sbar },
          PmenuThumb = { bg = theme.ui.pmenu.bg_thumb },

          StatusLine = { bg = "NONE" },
          StatusLineNC = { bg = "NONE" },

          WinSeparator = { fg = theme.ui.float.fg_border },
          VertSplit = { fg = theme.ui.float.fg_border },

          lualine_a_normal = { bg = "NONE" },
          lualine_b_normal = { bg = "NONE" },
          lualine_c_normal = { bg = "NONE" },
          lualine_x_normal = { bg = "NONE" },
          lualine_y_normal = { bg = "NONE" },
          lualine_z_normal = { bg = "NONE" },
          lualine_a_insert = { bg = "NONE" },
          lualine_a_visual = { bg = "NONE" },
          lualine_a_command = { bg = "NONE" },
          lualine_a_replace = { bg = "NONE" },

          TabLine = { bg = "NONE", fg = theme.ui.nontext },
          TabLineSel = { bg = "NONE", fg = theme.syn.fun },
          TabLineFill = { bg = "NONE" },

          BlinkCmpMenu = { bg = "none", fg = theme.ui.fg },
          BlinkCmpMenuBorder = { bg = "none", fg = theme.ui.float.fg_border },
          BlinkCmpMenuSelection = { fg = theme.ui.fg, bg = theme.ui.bg_p2 },
          BlinkCmpDoc = { bg = "none", fg = theme.ui.fg_dim },
          BlinkCmpDocBorder = { bg = "none", fg = theme.ui.float.fg_border },
          BlinkCmpSignatureHelp = { bg = "none", fg = theme.ui.fg },
          BlinkCmpSignatureHelpBorder = { bg = "none", fg = theme.ui.float.fg_border },

          DiagnosticFloatingError = { fg = palette.samuraiRed, bg = "none" },
          DiagnosticFloatingWarn = { fg = palette.roninYellow, bg = "none" },
          DiagnosticFloatingInfo = { fg = palette.dragonBlue, bg = "none" },
          DiagnosticFloatingHint = { fg = palette.waveAqua1, bg = "none" },

          -- 修改这里：让 Lazy 透明
          LazyNormal = { fg = theme.ui.fg, bg = "none" },
          LazyBorder = { bg = "none", fg = theme.ui.float.fg_border },
          NoiceCmdlinePopupBorder = { bg = "none", fg = theme.ui.float.fg_border },
          NoiceCmdlinePopup = { bg = "none", fg = theme.ui.fg },
        }
      end,
    },
    config = function(_, opts)
      require("kanagawa").setup(opts)
      vim.cmd.colorscheme("kanagawa")
    end,
  },
}
