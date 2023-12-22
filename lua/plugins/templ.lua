return {
	"joerdav/templ.vim",
	config = function()
		-- additional filetypes
		vim.filetype.add({
			extension = {
				templ = "templ",
			},
		})

		-- Format current buffer using LSP.
		vim.api.nvim_create_autocmd(
			{
				-- 'BufWritePre' event triggers just before a buffer is written to file.
				"BufWritePre"
			},
			{
				pattern = {"*.templ"},
				callback = function()
					-- Format the current buffer using Neovim's built-in LSP (Language Server Protocol).
					vim.lsp.buf.format()
				end,
			}
		)

		require("lspconfig").tailwindcss.setup({
			filetypes = {
				'templ'
				-- include any other filetypes where you need tailwindcss
			},
			init_options = {
				userLanguages = {
					templ = "html"
				}
			}
		})
	end
}
