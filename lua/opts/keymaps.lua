local normalModeOpts = {
	noremap = true,
	silent = true,
}

local function setKeymap(mode, lhs, rhs, opts)
	vim.api.nvim_set_keymap(mode, lhs, rhs, opts)
end

setKeymap("", "<Space>", "<Nop>", normalModeOpts)
vim.g.mapleader = " "
vim.g.maplocalleader = " "

setKeymap("n", "<C-h>", "<C-w>h", normalModeOpts)
setKeymap("n", "<C-j>", "<C-w>j", normalModeOpts)
setKeymap("n", "<C-k>", "<C-w>k", normalModeOpts)
setKeymap("n", "<C-l>", "<C-w>l", normalModeOpts)

setKeymap("n", "<C-Up>", ":resize -2<CR>", normalModeOpts)
setKeymap("n", "<C-Down>", ":resize +2<CR>", normalModeOpts)
setKeymap("n", "<C-Left>", ":vertical resize -2<CR>", normalModeOpts)
setKeymap("n", "<C-Right>", ":vertical resize +2<CR>", normalModeOpts)

setKeymap("n", "<S-l>", ":bnext<CR>", normalModeOpts)
setKeymap("n", "<S-h>", ":bprevious<CR>", normalModeOpts)

setKeymap("v", "<", "<gv", normalModeOpts)
setKeymap("v", ">", ">gv", normalModeOpts)

setKeymap("v", "<A-j>", ":m .+1<CR>==", normalModeOpts)
setKeymap("v", "<A-k>", ":m .-2<CR>==", normalModeOpts)
setKeymap("v", "p", '"_dP', normalModeOpts)


setKeymap("x", "J", ":move '>+1<CR>gv-gv", normalModeOpts)
setKeymap("x", "K", ":move '<-2<CR>gv-gv", normalModeOpts)
setKeymap("x", "<A-j>", ":move '>+1<CR>gv-gv", normalModeOpts)
setKeymap("x", "<A-k>", ":move '<-2<CR>gv-gv", normalModeOpts)
