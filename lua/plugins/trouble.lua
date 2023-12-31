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


		vim.api.nvim_create_autocmd("LspAttach", {
			group = vim.api.nvim_create_augroup("LspTrouble", {}),
			callback = function(ev)
				local opts = { buffer = ev.buf }

				vim.keymap.set("n", "<leader>xx", default, opts)
				vim.keymap.set("n", "<leader>xw", workspace, opts)
				vim.keymap.set("n", "<leader>xd", document, opts)
				vim.keymap.set("n", "<leader>xq", quickfix, opts)
				vim.keymap.set("n", "<leader>xl", loclist, opts)
			end
		})
	end
}
