return {
  "akinsho/toggleterm.nvim",
  version = "*",
  config = function()
    require("toggleterm").setup({
      size = 20,
      open_mapping = [[<C-\>]], -- 使用 Ctrl+\ 切换终端
      hide_numbers = true,
      shade_filetypes = {},
      shade_terminals = false, -- 关闭终端着色，保持透明
      shading_factor = 0, -- 设置为 0 以完全透明
      start_in_insert = true,
      insert_mappings = true,
      persist_size = true,
      direction = "float", -- 设置为浮动模式
      close_on_exit = true,
      shell = vim.o.shell,
      float_opts = {
        border = "curved", -- 边框样式：single/double/shadow/curved
        width = 120,
        height = 30,
        winblend = 0, -- 设置为 0 以完全透明，或者使用 10-30 的值来调节透明度
        highlights = {
          border = "FloatBorder",
          background = "NormalFloat",
        },
      },
    })

    -- 自定义快捷键
    local opts = { noremap = true, silent = true }
    vim.keymap.set("n", "<leader>tt", "<cmd>ToggleTerm direction=float<cr>", opts)
    vim.keymap.set("t", "<esc>", [[<C-\><C-n>]], opts) -- 在终端模式下使用 Esc 退出
    vim.keymap.set("t", "<C-h>", [[<Cmd>wincmd h<CR>]], opts)
    vim.keymap.set("t", "<C-j>", [[<Cmd>wincmd j<CR>]], opts)
    vim.keymap.set("t", "<C-k>", [[<Cmd>wincmd k<CR>]], opts)
    vim.keymap.set("t", "<C-l>", [[<Cmd>wincmd l<CR>]], opts)

    -- 确保终端窗口使用透明背景
    vim.api.nvim_create_autocmd("TermOpen", {
      pattern = "*",
      callback = function()
        vim.opt_local.winhighlight = "Normal:NormalFloat,FloatBorder:FloatBorder"
      end,
    })
  end,
}
