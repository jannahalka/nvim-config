require("config")

vim.lsp.enable({ "clangd", "pyright", "ruff", "lua_ls", "gopls", "ts_ls" })
vim.diagnostic.config({ virtual_text = true })
vim.cmd("set completeopt+=noselect")
