-- Autocmds are automatically loaded on the VeryLazy event
-- Default autocmds that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/autocmds.lua
--
-- Add any additional autocmds here
-- with `vim.api.nvim_create_autocmd`
--
-- Or remove existing autocmds by their group name (which is prefixed with `lazyvim_` for the defaults)
-- e.g. vim.api.nvim_del_augroup_by_name("lazyvim_wrap_spell")

-- 确保所有浮动窗口保持透明背景但有彩色边框
vim.api.nvim_create_autocmd("WinNew", {
  callback = function()
    local win_config = vim.api.nvim_win_get_config(0)
    if win_config.relative ~= "" then -- 这是一个浮动窗口
      vim.cmd([[
        setlocal winblend=0
        highlight NormalFloat guibg=NONE ctermbg=NONE
      ]])
    end
  end,
})

-- 在颜色方案加载后重新应用透明设置和边框颜色
vim.api.nvim_create_autocmd("ColorScheme", {
  callback = function()
    vim.cmd([[
      highlight Normal guibg=NONE ctermbg=NONE
      highlight NormalFloat guibg=NONE ctermbg=NONE
      highlight Terminal guibg=NONE ctermbg=NONE
      highlight TerminalNormal guibg=NONE ctermbg=NONE
      highlight TerminalNC guibg=NONE ctermbg=NONE
      highlight StatusLine guibg=NONE ctermbg=NONE
      highlight StatusLineNC guibg=NONE ctermbg=NONE

      " 设置浮动窗口边框颜色 (使用 tokyonight 颜色)
      highlight FloatBorder guibg=NONE guifg=#7aa2f7 gui=bold
      highlight LspInfoBorder guibg=NONE guifg=#7dcfff gui=bold
      highlight CmpBorder guibg=NONE guifg=#bb9af7 gui=bold
      highlight MasonBorder guibg=NONE guifg=#9ece6a gui=bold
      highlight TelescopeBorder guibg=NONE guifg=#ff9e64 gui=bold

      " 补全菜单样式
      highlight CmpPmenu guibg=NONE
      highlight CmpSel guibg=#283457
      highlight CmpDoc guibg=NONE
    ]])
  end,
})
