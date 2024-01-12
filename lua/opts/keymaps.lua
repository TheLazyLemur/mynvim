local setKeymap = require("utils").SetKeymap
local setKeymapWithOpts = require("utils").SetKeymapWithOpts

setKeymap("n", "<C-h>", "<C-w>h")
setKeymap("n", "<C-j>", "<C-w>j")
setKeymap("n", "<C-k>", "<C-w>k")
setKeymap("n", "<C-l>", "<C-w>l")

setKeymap("n", "<C-Up>", ":resize -2<CR>")
setKeymap("n", "<C-Down>", ":resize +2<CR>")
setKeymap("n", "<C-Left>", ":vertical resize -2<CR>")
setKeymap("n", "<C-Right>", ":vertical resize +2<CR>")

setKeymap("n", "<S-l>", ":bnext<CR>")
setKeymap("n", "<S-h>", ":bprevious<CR>")

setKeymap("v", "<", "<gv")
setKeymap("v", ">", ">gv")

setKeymap("v", "<A-j>", ":m .+1<CR>==")
setKeymap("v", "<A-k>", ":m .-2<CR>==")
setKeymap("v", "p", '"_dP')

setKeymap("x", "J", ":move '>+1<CR>gv-gv")
setKeymap("x", "K", ":move '<-2<CR>gv-gv")
setKeymap("x", "<A-j>", ":move '>+1<CR>gv-gv")
setKeymap("x", "<A-k>", ":move '<-2<CR>gv-gv")

-- Plugin keymaps

setKeymap("n", "<leader>oo", ":<c-u>lua require('ollama').prompt()<cr>")
setKeymap("v", "<leader>oo", ":<c-u>lua require('ollama').prompt()<cr>")

setKeymapWithOpts('i', '<C-f>', function() return vim.fn['codeium#Accept']() end, { expr = true })
setKeymapWithOpts('i', '<c-;>', function() return vim.fn['codeium#CycleCompletions'](1) end, { expr = true })
setKeymapWithOpts('i', '<c-,>', function() return vim.fn['codeium#CycleCompletions'](-1) end, { expr = true })
setKeymapWithOpts('i', '<c-x>', function() return vim.fn['codeium#Clear']() end, { expr = true })

local builtin = require("telescope.builtin")
setKeymap("n", "<leader>sf", builtin.find_files)
setKeymap("n", "<leader>sg", builtin.live_grep)
vim.api.nvim_create_autocmd("LspAttach", {
	group = vim.api.nvim_create_augroup("Lsp", {}),
	callback = function(ev)
		local opts = { buffer = ev.buf }

		setKeymapWithOpts("n", 'gd', builtin.lsp_definitions, opts)
		setKeymapWithOpts("n", 'gr', builtin.lsp_references, opts)
		setKeymapWithOpts("n", 'gI', builtin.lsp_implementations, opts)
		setKeymapWithOpts("n", '<leader>D', builtin.lsp_type_definitions, opts)
		setKeymapWithOpts("n", '<leader>ds', builtin.lsp_document_symbols, opts)

		setKeymapWithOpts("n", "K", vim.lsp.buf.hover, opts)
		setKeymapWithOpts("n", "gd", vim.lsp.buf.definition, opts)
		setKeymapWithOpts("n", "<leader>ca", vim.lsp.buf.code_action, opts)
		setKeymapWithOpts("n", '<leader>rn', vim.lsp.buf.rename, opts)
		setKeymapWithOpts("i", '<C-h>', vim.lsp.buf.signature_help, opts)

		setKeymapWithOpts("n", "<leader>dt", require("dap").toggle_breakpoint, opts)
		setKeymapWithOpts("n", "<leader>dc", require("dap").continue, opts)
	end
})

setKeymapWithOpts("n", "-", require("oil").open, { desc = "Open parent directory" })
setKeymapWithOpts("n", "<leader>tt", function() require("neotest").run.run(vim.fn.expand("%")) end, { noremap = true, silent = true })
