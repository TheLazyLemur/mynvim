local setKeymap = require("utils").SetKeymap

setKeymap("", "<Space>", "<Nop>")
vim.g.mapleader = " "
vim.g.maplocalleader = " "

vim.cmd([[
	set winbar=%f
	set laststatus=3
]])

local options = {
	backup = false,
	clipboard = "unnamedplus",
	cmdheight = 2,
	number = true,
	relativenumber = true,
	undofile = true,
	scrolloff = 8,
	sidescrolloff = 8,
	swapfile = false,
	updatetime = 300,
	wrap = false,
}

for k, v in pairs(options) do
	vim.opt[k] = v
end

vim.filetype.add({
	extension = {
		templ = "templ",
	},
})
