local last_width = vim.g.last_width

local function toggle_neotree_remember()
	-- Si Neo-Tree ya esta abierto. Cerrarlo
	for _, win in ipairs(vim.api.nvim_list_wins()) do
		local buf = vim.api.nvim_win_get_buf(win)
		if vim.bo[buf].filetype == "neo-tree" then
			vim.cmd("Neotree close")
			return
		end
	end

	-- Abrir Neo-Tree
	vim.cmd("Neotree position=left")

	--Ajustar ancho al ultimo valor
	for _, win in ipairs(vim.api.nvim_list_wins()) do
		local buf = vim.api.nvim_win_get_buf(win)
		if vim.bo[buf].filetype == "neo-tree" then
			vim.api.nvim_win_set_width(win, last_width)
		end
	end
end

-- Autocmd para actualizar el ancho cuando Neo-tree se redimensiona
vim.api.nvim_create_autocmd("WinResized", {
	callback = function()
		for _, win in ipairs(vim.api.nvim_list_wins()) do
			local buf = vim.api.nvim_win_get_buf(win)
			if vim.bo[buf].filetype == "neo-tree" then
				last_width = vim.api.nvim_win_get_width(win)
			end
		end
	end,
})

-- Keymap
vim.keymap.set("n", "<C-n>", toggle_neotree_remember, { noremap = true, silent = true })
