return {
	"folke/trouble.nvim",
	dependencies = { "nvim-tree/nvim-web-devicons" },
	opts = {
	},
	config = function()
		local function default()
			require("trouble").toggle()
		end

		local function workspace()
			require("trouble").toggle("workspace_diagnostics")
		end

		local function document()
			require("trouble").toggle("document_diagnostics")
		end

		local function quickfix()
			require("trouble").toggle("quickfix")
		end

		local function loclist()
			require("trouble").toggle("loclist")
		end

		vim.keymap.set("n", "<leader>xx", default, {})
		vim.keymap.set("n", "<leader>xw", workspace, {})
		vim.keymap.set("n", "<leader>xd", document, {})
		vim.keymap.set("n", "<leader>xq", quickfix, {})
		vim.keymap.set("n", "<leader>xl", loclist, {})
	end
}
