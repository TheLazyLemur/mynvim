local function setKeymap(m, l, r)
	local opts = {
		noremap = true,
		silent = true,
	}

	vim.api.nvim_set_keymap(m, l, r, opts)
end

setKeymap("", "<Space>", "<Nop>")

vim.g.mapleader = " "
vim.g.maplocalleader = " "

setKeymap("n", "<C-h>", "<C-w>h")
setKeymap("n", "<C-j>", "<C-w>j")
setKeymap("n", "<C-k>", "<C-w>k")
setKeymap("n", "<C-l>", "<C-w>l")

setKeymap("n", "<C-Up>", ":resize -2<CR>")
setKeymap("n", "<C-Down>", ":resize +2<CR>")
setKeymap("n", "<C-Left>", ":vertical resize -2<CR>")
setKeymap("n", "<C-Right>", ":vertical resize +2<CR>")

setKeymap("n", "<S-l>", ":bnext<CR>")
setKeymap("n", "<S-h>", ":bprevious<CR>")

setKeymap("v", "<", "<gv")
setKeymap("v", ">", ">gv")

setKeymap("v", "<A-j>", ":m .+1<CR>==")
setKeymap("v", "<A-k>", ":m .-2<CR>==")
setKeymap("v", "p", '"_dP')


setKeymap("x", "J", ":move '>+1<CR>gv-gv")
setKeymap("x", "K", ":move '<-2<CR>gv-gv")
setKeymap("x", "<A-j>", ":move '>+1<CR>gv-gv")
setKeymap("x", "<A-k>", ":move '<-2<CR>gv-gv")
