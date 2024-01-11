return {
	"ThePrimeagen/harpoon",
	config = function()
		local setKeymap = require("utils").SetKeymap
		require("harpoon").setup()
		setKeymap("n", "<leader>ha", require("harpoon.mark").add_file)
		setKeymap("n", "<leader>hv", require("harpoon.ui").toggle_quick_menu)
	end,
}
