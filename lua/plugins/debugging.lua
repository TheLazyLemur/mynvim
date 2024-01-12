return {
	"mfussenegger/nvim-dap",
	dependencies = {
		"rcarriga/nvim-dap-ui",
		"leoluz/nvim-dap-go",
	},
	config = function()
		local dap, dapui = require("dap"), require("dapui")

		require("dapui").setup({})
		if vim.fn.has("macunix") == 1 then
			require("dap-go").setup({
				delve = {
					path = vim.fn.expand("$HOME") .. "/bin/dlv_wrapper.sh",
					initialize_timeout_sec = 20,
					port = "${port}",
					args = {},
					build_flags = "",
				},
			})
		else
			require("dap-go").setup()
		end

		dap.listeners.before.attach.dapui_config = function()
			dapui.open()
		end
		dap.listeners.before.launch.dapui_config = function()
			dapui.open()
		end
		dap.listeners.before.event_terminated.dapui_config = function()
			dapui.close()
		end
		dap.listeners.before.event_exited.dapui_config = function()
			dapui.close()
		end

		vim.keymap.set("n", "<leader>dt", require("dap").toggle_breakpoint, {})
		vim.keymap.set("n", "<leader>dc", require("dap").continue, {})
	end
}
