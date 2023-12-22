return {
	"ThePrimeagen/harpoon",
	config = function()
		require("harpoon").setup()
		vim.keymap.set("n", "<leader>ha", require("harpoon.mark").add_file)
		vim.keymap.set("n", "<leader>hv", require("harpoon.ui").toggle_quick_menu)
	end,
}
