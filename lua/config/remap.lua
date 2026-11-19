vim.g.mapleader = " "
vim.keymap.set("n", "<leader>e", vim.cmd.Ex)
vim.keymap.set("i", "<C-c>", "<Esc>")
vim.keymap.set("n", "<C-s>", vim.cmd.w)
vim.keymap.set("i", "<C-s>", "<Esc>:w")

-- no highlight
vim.keymap.set("n", "<Esc>", "<cmd>nohlsearch<Cr>")

-- sessionizer
vim.keymap.set("n", "<C-f>", "<cmd>silent !tmux neww tmux-sessionizer<CR>")
vim.keymap.set("n", "<M-h>", "<cmd>silent !tmux neww tmux-sessionizer -s 0<CR>")
vim.keymap.set("n", "<M-t>", "<cmd>silent !tmux neww tmux-sessionizer -s 1<CR>")
vim.keymap.set("n", "<M-n>", "<cmd>silent !tmux neww tmux-sessionizer -s 2<CR>")
vim.keymap.set("n", "<M-s>", "<cmd>silent !tmux neww tmux-sessionizer -s 3<CR>")

-- move line
vim.keymap.set("n", "<A-j>", ":m .+1<CR>==")
vim.keymap.set("n", "<A-k>", ":m .-2<CR>==")
vim.keymap.set("v", "<A-j>", ":m '>+1<CR>gv=gv") -- move line up(v)
vim.keymap.set("v", "<A-k>", ":m '<-2<CR>gv=gv") -- move line down(v)

vim.api.nvim_create_autocmd("TextYankPost", {
	desc = "Highlight when yanking (copying) text",
	group = vim.api.nvim_create_augroup("kickstart-highlight-yank", { clear = true }),
	callback = function()
		vim.hl.on_yank()
	end,
})


