return {
  {
    "neovim/nvim-lspconfig",
    dependencies = {
      "williamboman/mason.nvim",
      "williamboman/mason-lspconfig.nvim",
      {
        "saghen/blink.cmp",
        opts = function (_, opts)
        end
      },
      {
        "folke/lazydev.nvim",
        opts = {
          library = {
            { path = "${3rd}/luv/library", words = { "vim%.uv" } },
          },
        },
      },
    },
    config = function()
      require("mason").setup()
      require("mason-lspconfig").setup {
        ensure_installed = { "lua_ls", "gopls" },
      }

      local capabilities = require('blink.cmp').get_lsp_capabilities()

      require 'lspconfig'.lua_ls.setup{ capabilities = capabilities }
      require 'lspconfig'.pyright.setup{ capabilities = capabilities }
    end
  },
  {
    "stevearc/conform.nvim",
    event = { "BufWritePre" },
    cmd = { "ConformInfo" },
    keys = {
      {
        "<leader>f",
        function()
          require("conform").format({ async = true })
        end,
        desc = "Format current buffer"
      },
    },
    config = function()
      require("conform").setup({
        formatters_by_ft = {
          html = { "prettier" },
          css = { "prettier" },
          json = { "prettier" },
          python = { "black" },
        }
      })
    end
  }
}
