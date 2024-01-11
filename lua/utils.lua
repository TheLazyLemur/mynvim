return {
	SetKeymap = function (m, l, r)
		local opts = {
			noremap = true,
			silent = true,
		}

		vim.keymap.set(m, l, r, opts)
	end,
	SetKeymapWithOpts = function (m, l, r, opts)
		vim.keymap.set(m, l, r, opts)
	end
}
