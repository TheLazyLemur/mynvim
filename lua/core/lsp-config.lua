return {
	{
		"neovim/nvim-lspconfig",
		dependencies = {
			"williamboman/mason.nvim",
			"williamboman/mason-lspconfig.nvim",
		},
		config = function()
			require("mason").setup()
			require("mason-lspconfig").setup({
				ensure_installed = { "lua_ls", "gopls", "templ" },
				handlers = {
					function(server_name)
						require("lspconfig")[server_name].setup {}
					end
				},
			})

			vim.api.nvim_create_autocmd("LspAttach", {
				group = vim.api.nvim_create_augroup("LspLsp", {}),
				callback = function(ev)
					local opts = { buffer = ev.buf }

					vim.keymap.set("n", "K", vim.lsp.buf.hover, opts)
					vim.keymap.set("n", "gd", vim.lsp.buf.definition, opts)
					vim.keymap.set("n", "<leader>ca", vim.lsp.buf.code_action, opts)
					vim.keymap.set("n", '<leader>rn', vim.lsp.buf.rename, opts)
					vim.keymap.set("i", '<C-h>', vim.lsp.buf.signature_help, opts)
				end
			})

		end
	},
	{
		'echasnovski/mini.completion',
		version = false,
		config = function()
			require('mini.completion').setup()
		end
	},
}
