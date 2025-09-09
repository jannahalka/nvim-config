return {
  "nvim-telescope/telescope.nvim",
  tag = '0.1.8',
  dependencies = {
    "nvim-lua/plenary.nvim",
    { 'nvim-telescope/telescope-fzf-native.nvim', build = 'cmake -S. -Bbuild -DCMAKE_BUILD_TYPE=Release && cmake --build build --config Release' }
  },

  config = function()
    require("telescope").setup {}

    local builtin = require("telescope.builtin")

    vim.keymap.set("n", "<leader>pf", builtin.find_files)
    vim.keymap.set("n", "<leader>ph", builtin.help_tags)
    vim.keymap.set("n", "<C-p>", builtin.git_files, {})
    vim.keymap.set("n", "fr", builtin.lsp_references, { noremap = true, silent = true })
    vim.keymap.set('n', '<leader>fg', builtin.live_grep, { desc = 'Telescope live grep' })

    vim.keymap.set("n", "<leader>en", function()
      builtin.find_files {
        cwd = vim.fn.stdpath("config")
      }
    end)
  end,
}
