return {
  "nvim-treesitter/nvim-treesitter",
  opts = function(_, opts)
    -- 强制禁用自动安装和 ensure_installed，覆盖其他 extras 的配置
    opts.auto_install = false
    opts.ensure_installed = {}
    return opts
  end,
}
