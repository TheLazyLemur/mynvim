return {
	"folke/trouble.nvim",
	dependencies = { "nvim-tree/nvim-web-devicons" },
	opts = {},
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

		vim.api.nvim_create_autocmd("LspAttach", {
			group = vim.api.nvim_create_augroup("LspTrouble", {}),
			callback = function(ev)
				local setKeymap = require("utils").SetKeymapWithOpts
				local opts = { buffer = ev.buf }

				setKeymap("n", "<leader>xx", default, opts)
				setKeymap("n", "<leader>xw", workspace, opts)
				setKeymap("n", "<leader>xd", document, opts)
				setKeymap("n", "<leader>xq", quickfix, opts)
				setKeymap("n", "<leader>xl", loclist, opts)
			end,
		})
	end,
}
