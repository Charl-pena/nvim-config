return {
	"NvChad/nvim-colorizer.lua",
	event = "BufReadPre",
	config = function()
		require("colorizer").setup({
			user_default_options = {
				RGB = true,
				RRGGBB = true,
				names = false,
			},
		})
	end,
}
