return {
  "neovim/nvim-lspconfig",
  opts = function(_, opts)
    opts.inlay_hints = { enabled = false }

    -- Vue3 + Vite: make sure Volar uses the project's TypeScript (node_modules) when available.
    opts.servers = opts.servers or {}
    opts.servers.volar = opts.servers.volar or {}

    opts.setup = opts.setup or {}
    opts.setup.volar = function(_, server_opts)
      local util = require("lspconfig.util")

      server_opts.root_dir =
        util.root_pattern("vite.config.ts", "vite.config.js", "package.json", "tsconfig.json", "jsconfig.json", ".git")

      server_opts.on_new_config = function(new_config, root_dir)
        local tsdk = root_dir .. "/node_modules/typescript/lib"
        if vim.uv.fs_stat(tsdk) then
          new_config.init_options = new_config.init_options or {}
          new_config.init_options.typescript = new_config.init_options.typescript or {}
          new_config.init_options.typescript.tsdk = tsdk
        end
      end
    end

    return opts
  end,
}
