return {
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
        return {
          -- 基础浮动窗口
          NormalFloat = { bg = "none" },
          FloatBorder = { bg = "none", fg = theme.ui.float.fg_border },
          FloatTitle = { bg = "none" },
  
          -- LSP
          LspInfoBorder = { bg = "none", fg = theme.ui.float.fg_border },
  
          -- Mason 透明
          MasonNormal = { bg = "none", fg = theme.ui.fg },
          MasonBorder = { bg = "none", fg = theme.ui.float.fg_border },
  
          -- 状态栏透明
          StatusLine = { bg = "NONE" },
          StatusLineNC = { bg = "NONE" },
  
          -- 窗口分隔符
          WinSeparator = { fg = theme.ui.float.fg_border },
          VertSplit = { fg = theme.ui.float.fg_border },
  
          -- BlinkCmp 补全菜单透明
          BlinkCmpMenu = { bg = "none", fg = theme.ui.fg },
          BlinkCmpMenuBorder = { bg = "none", fg = theme.ui.float.fg_border },
          BlinkCmpMenuSelection = { fg = theme.ui.fg, bg = theme.ui.bg_p2 },
          BlinkCmpDoc = { bg = "none", fg = theme.ui.fg_dim },
          BlinkCmpDocBorder = { bg = "none", fg = theme.ui.float.fg_border },
          BlinkCmpSignatureHelp = { bg = "none", fg = theme.ui.fg },
          BlinkCmpSignatureHelpBorder = { bg = "none", fg = theme.ui.float.fg_border },
  
          -- 诊断浮动窗口
          DiagnosticFloatingError = { fg = theme.diag.error, bg = "none" },
          DiagnosticFloatingWarn = { fg = theme.diag.warning, bg = "none" },
          DiagnosticFloatingInfo = { fg = theme.diag.info, bg = "none" },
          DiagnosticFloatingHint = { fg = theme.diag.hint, bg = "none" },
  
          -- Lazy 插件管理器透明
          LazyNormal = { fg = theme.ui.fg, bg = "none" },
          LazyBorder = { bg = "none", fg = theme.ui.float.fg_border },
  
          -- Noice 透明
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
