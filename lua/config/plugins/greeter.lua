return {
	"goolord/alpha-nvim",
	dependencies = { "nvim-tree/nvim-web-devicons" },
	config = function()
		--local dashboard = require("alpha.themes.dashboard")
		--dashboard.section.buttons.val = {
		--dashboard.button("e", "  New file", ":ene <BAR> startinsert <CR>"),
		--dashboard.button("q", "󰅚  Quit NVIM", ":qa<CR>"),
		--}
		require("alpha").setup(require("alpha.themes.theta").config)
	end,
}
