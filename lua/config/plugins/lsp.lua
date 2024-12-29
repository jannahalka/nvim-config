return {
  {
    "neovim/nvim-lspconfig",
    dependencies = {
      "williamboman/mason.nvim",
      "williamboman/mason-lspconfig.nvim",
      "saghen/blink.cmp"
    },
    config = function()
      require("mason").setup()
      require("mason-lspconfig").setup {
        ensure_installed = { "lua_ls", "pyright", "gopls", "tsserver" },
      }

      local capabilities = require('blink.cmp').get_lsp_capabilities()
      require 'lspconfig'.lua_ls.setup { capabilities = capabilities }
      require 'lspconfig'.pyright.setup { capabilities = capabilities }
    end,
  }
}
