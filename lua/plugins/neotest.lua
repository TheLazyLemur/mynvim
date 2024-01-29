return {
	"nvim-neotest/neotest",
	event = "VeryLazy",
	dependencies = {
		"antoinemadec/FixCursorHold.nvim",
		"nvim-neotest/neotest-go",
	},
	config = function()
		require("neotest").setup({
			adapters = {
				require("neotest-go")({}),
			},
		})
	end,
}
