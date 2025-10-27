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
    -- 只设置可能被其他插件覆盖的透明背景
    local transparent_groups = {
      "Normal",
      "NormalNC",
      "SignColumn",
      "Terminal",
      "TerminalNormal",
      "TerminalNC",
    }

    for _, group in ipairs(transparent_groups) do
      local ok, existing = pcall(vim.api.nvim_get_hl, 0, { name = group, link = false })
      local spec = { bg = "NONE" }
      if ok and existing.fg then
        spec.fg = existing.fg
      end
      vim.api.nvim_set_hl(0, group, spec)
    end
  end,
})
