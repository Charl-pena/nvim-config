return {
	"rebelot/kanagawa.nvim",
	lazy = false,
	priority = 1000,
	config = function()
		require("kanagawa").setup({
			transparent = true,
			colors = {
				palette = {
					-- change all usages of these colors
					sumiInk3 = "#1F1F28",
				},
			},
		})
		vim.cmd("colorscheme kanagawa")
	end,
}
