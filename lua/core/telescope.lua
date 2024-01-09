return {
  {
    "nvim-telescope/telescope.nvim",
    tag = "0.1.5",
    dependencies = { "nvim-lua/plenary.nvim" },
    config = function()
      local builtin = require("telescope.builtin")
      vim.keymap.set("n", "<leader>sf", builtin.find_files, {})
      vim.keymap.set("n", "<leader>sg", builtin.live_grep, {})

      vim.api.nvim_create_autocmd("LspAttach", {
        group = vim.api.nvim_create_augroup("LspTelescope", {}),
        callback = function(ev)
          local opts = { buffer = ev.buf }

          vim.keymap.set("n", 'gd', require('telescope.builtin').lsp_definitions,opts)
          vim.keymap.set("n", 'gr', require('telescope.builtin').lsp_references, opts)
          vim.keymap.set("n", 'gI', require('telescope.builtin').lsp_implementations, opts)
          vim.keymap.set("n", '<leader>D', require('telescope.builtin').lsp_type_definitions, opts)
          vim.keymap.set("n", '<leader>ds', require('telescope.builtin').lsp_document_symbols, opts)
        end
      })
    end,
  },
  {
    'nvim-telescope/telescope-ui-select.nvim',
    config = function()
      require("telescope").setup {
        extensions = {
          ["ui-select"] = {
            require("telescope.themes").get_dropdown {
            }
          }
        }
      }
      require("telescope").load_extension("ui-select")
    end
  },
}
