return {
  -- 配置 LSP 浮动窗口边框
  {
    "neovim/nvim-lspconfig",
    opts = function(_, opts)
      -- 设置 LSP 浮动窗口的边框样式
      local border = {
        { "╭", "FloatBorder" },
        { "─", "FloatBorder" },
        { "╮", "FloatBorder" },
        { "│", "FloatBorder" },
        { "╯", "FloatBorder" },
        { "─", "FloatBorder" },
        { "╰", "FloatBorder" },
        { "│", "FloatBorder" },
      }

      -- 应用边框到 LSP 处理器
      local handlers = {
        ["textDocument/hover"] = vim.lsp.with(vim.lsp.handlers.hover, { border = border }),
        ["textDocument/signatureHelp"] = vim.lsp.with(vim.lsp.handlers.signature_help, { border = border }),
      }

      -- 合并到现有配置
      opts.handlers = vim.tbl_deep_extend("force", opts.handlers or {}, handlers)

      return opts
    end,
  },

  -- 配置 Mason 边框
  {
    "mason-org/mason.nvim",
    opts = {
      ui = {
        border = "rounded",
        width = 0.8,
        height = 0.8,
        icons = {
          package_installed = "✓",
          package_pending = "➜",
          package_uninstalled = "✗",
        },
      },
    },
  },

  -- 配置 Telescope 边框
  {
    "nvim-telescope/telescope.nvim",
    opts = {
      defaults = {
        borderchars = { "─", "│", "─", "│", "╭", "╮", "╯", "╰" },
        layout_config = {
          prompt_position = "top",
        },
        sorting_strategy = "ascending",
      },
    },
  },

  -- 配置 Blink.cmp 浮动窗口边框
  {
    "saghen/blink.cmp",
    opts = function(_, opts)
      local completion = opts.completion or {}

      completion.menu = vim.tbl_deep_extend("force", {}, completion.menu or {}, {
        border = "rounded",
      })

      local documentation = completion.documentation or {}
      documentation.window = vim.tbl_deep_extend("force", {}, documentation.window or {}, {
        border = "rounded",
      })
      completion.documentation = documentation

      opts.completion = completion
      return opts
    end,
  },

  -- 配置 Lazy 插件管理器边框
  {
    "folke/lazy.nvim",
    opts = {
      ui = {
        border = "rounded",
      },
    },
  },

  -- 配置 Trouble 边框
  {
    "folke/trouble.nvim",
    opts = {
      win = {
        border = "rounded",
      },
    },
  },

  -- 配置 Noice 边框 (如果使用)
  {
    "folke/noice.nvim",
    opts = {
      presets = {
        bottom_search = true,
        command_palette = true,
        long_message_to_split = true,
        inc_rename = false,
        lsp_doc_border = true, -- 为 LSP 文档添加边框
      },
      lsp = {
        override = {
          ["vim.lsp.util.convert_input_to_markdown_lines"] = true,
          ["vim.lsp.util.stylize_markdown"] = true,
          ["cmp.entry.get_documentation"] = true,
        },
      },
    },
  },
}
