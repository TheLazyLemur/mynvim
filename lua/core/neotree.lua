return {
	"nvim-neo-tree/neo-tree.nvim",
	branch = "v3.x",
	dependencies = {
		"nvim-lua/plenary.nvim",
		"nvim-tree/nvim-web-devicons",
		"MunifTanjim/nui.nvim",
	},
	config = function()
		local setKeymap = require("utils").SetKeymap
		setKeymap("n", "<leader>t", ":Neotree filesystem reveal left<CR>")
	end
}
