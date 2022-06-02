local myAutoCmdGroup = vim.api.nvim_create_augroup("myAutoCmds", {
  clear = true,
})

local autocmd = vim.api.nvim_create_autocmd

-- 进入Terminal 自动进入插入模式
autocmd("TermOpen", {
  group = myAutoCmdGroup,
  command = "startinsert"
})

-- 保存时自动格式化
autocmd("BufWritePre", {
  group = myAutoCmdGroup,
  pattern = { "*.lua", "*.js", "*.sh" },
  callback = vim.lsp.buf.format,
})

-- 用o换行不要延续注释
autocmd("BufEnter", {
  group = myAutoCmdGroup,
  pattern = "*",
  callback = function()
    vim.opt.formatoptions = vim.opt.formatoptions
      - "o" -- O and o, don't continue comments
      + "r" -- But do continue when pressing enter.
  end,
})
