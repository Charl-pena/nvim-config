-- ~/.config/nvim/lua/plugins/rust.lua
return {
	-- The powerhouse for Rust
	{
		"mrcjkb/rustaceanvim",
		version = "^5", -- Recommended for 2026 stability
		lazy = false, -- This plugin is already lazy-loaded by filetype
		config = function()
			vim.g.rustaceanvim = {
				server = {
					on_attach = function(client, bufnr)
						-- Add your keymaps here (e.g., hover actions, code actions)
					end,
					default_settings = {
						["rust-analyzer"] = {
							checkOnSave = { command = "clippy" }, -- Use clippy for linting
							cargo = { allFeatures = true },
						},
					},
				},
			}
		end,
	},

	-- Fast autocompletion
	{
		"saghen/blink.cmp",
		dependencies = "rafamadriz/friendly-snippets",
		version = "v0.*",
		opts = {
			keymap = { preset = "default" },
			sources = {
				default = { "lsp", "path", "snippets", "buffer" },
			},
		},
	},
}
