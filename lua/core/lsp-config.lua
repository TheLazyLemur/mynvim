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
						if server_name == "html" then
							require("lspconfig")[server_name].setup({
								filetypes = { "html", "templ" },
							})
						else
							require("lspconfig")[server_name].setup({})
						end
					end,
				},
			})
		end,
	},
	{
		"echasnovski/mini.completion",
		version = false,
		config = function()
			require("mini.completion").setup()
		end,
	},
}
