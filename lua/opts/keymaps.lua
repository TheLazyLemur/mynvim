local function setKeymap(m, l, r, o)
	vim.api.nvim_set_keymap(m, l, r, o)
end

local opts = {
	noremap = true,
	silent = true,
}

setKeymap("", "<Space>", "<Nop>", opts)

vim.g.mapleader = " "
vim.g.maplocalleader = " "

setKeymap("n", "<C-h>", "<C-w>h", opts)
setKeymap("n", "<C-j>", "<C-w>j", opts)
setKeymap("n", "<C-k>", "<C-w>k", opts)
setKeymap("n", "<C-l>", "<C-w>l", opts)

setKeymap("n", "<C-Up>", ":resize -2<CR>", opts)
setKeymap("n", "<C-Down>", ":resize +2<CR>", opts)
setKeymap("n", "<C-Left>", ":vertical resize -2<CR>", opts)
setKeymap("n", "<C-Right>", ":vertical resize +2<CR>", opts)

setKeymap("n", "<S-l>", ":bnext<CR>", opts)
setKeymap("n", "<S-h>", ":bprevious<CR>", opts)

setKeymap("v", "<", "<gv", opts)
setKeymap("v", ">", ">gv", opts)

setKeymap("v", "<A-j>", ":m .+1<CR>==", opts)
setKeymap("v", "<A-k>", ":m .-2<CR>==", opts)
setKeymap("v", "p", '"_dP', opts)


setKeymap("x", "J", ":move '>+1<CR>gv-gv", opts)
setKeymap("x", "K", ":move '<-2<CR>gv-gv", opts)
setKeymap("x", "<A-j>", ":move '>+1<CR>gv-gv", opts)
setKeymap("x", "<A-k>", ":move '<-2<CR>gv-gv", opts)
