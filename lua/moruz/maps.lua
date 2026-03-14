local function map(mode, lhs, rhs)
	vim.keymap.set(mode, lhs, rhs, { silent = true })
end

vim.g.mapleader = " "

-- Show Error
map("n", "<leader>e", vim.diagnostic.open_float)

-- Save
map("n", "<leader>w", "<CMD>update<CR>")

-- Quit
map("n", "<leader>q", "<CMD>q<CR>")

-- Exit insert mode
map("i", "jk", "<ESC>")

-- NeoTree
-- map("n", "<leader>ñ", "<CMD>Neotree toggle<CR>")
map("n", "<leader>r", "<CMD>Neotree focus<CR>")

-- New Windows
map("n", "<leader>o", "<CMD>vsplit<CR>")
map("n", "<leader>p", "<CMD>split<CR>")

-- Window Navigation
map("n", "<C-h>", "<C-w>h")
map("n", "<C-l>", "<C-w>l")
map("n", "<C-k>", "<C-w>k")
map("n", "<C-j>", "<C-w>j")

-- Resize Windows
map("n", "<C-Left>", "<C-w><")
map("n", "<C-Right>", "<C-w>>")
map("n", "<C-Up>", "<C-w>+")
map("n", "<C-Down>", "<C-w>-")

-- Mover lineas con alt
map("n", "<A-j>", ":m .-2<CR>==")
map("n", "<A-k>", ":m .+1<CR>==")
