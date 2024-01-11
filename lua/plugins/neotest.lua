return {
	"nvim-neotest/neotest",
	dependencies = {
		"antoinemadec/FixCursorHold.nvim",
		"nvim-neotest/neotest-go",
	},
	config = function()
		local function nearestTest()
			require("neotest").run.run(vim.fn.expand("%"))
		end

		require("neotest").setup({
			adapters = {
				require("neotest-go")({}),
			},
		})

		vim.keymap.set("n", "<leader>tt", nearestTest, { noremap = true, silent = true })
	end

}
