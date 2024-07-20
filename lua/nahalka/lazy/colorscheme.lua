return {
	"folke/tokyonight.nvim",
	lazy = false,
	priority = 1000,
	config = function()
		vim.cmd([[colorscheme tokyonight-night]])
		vim.cmd("highlight EndOfBuffer guifg=#444b6a guibg=NONE")
	end,
	opts = {},
}
