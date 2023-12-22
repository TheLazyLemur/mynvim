return {
	"nvim-neotest/neotest",
	dependencies = {
		"nvim-lua/plenary.nvim",
		"antoinemadec/FixCursorHold.nvim",
		"nvim-treesitter/nvim-treesitter",
		"nvim-neotest/neotest-go",
	},
	config = function()
		local function nearestTest()
			require("neotest").run.run(vim.fn.expand("%"))
		end
		require("neotest").setup({
			adapters = {
				require("neotest-go")({
				}),
			},
		})

		vim.keymap.set("n", "<leader>tf", nearestTest, { noremap = true, silent = true })
	end

}
