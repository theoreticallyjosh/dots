return {
	{
		"nvim-telescope/telescope-ui-select.nvim",
	},
	{
		"nvim-telescope/telescope.nvim",
		dependencies = { "nvim-lua/plenary.nvim", { "nvim-telescope/telescope-fzf-native.nvim", build = "make" } },
		opts = {
			pickers = {
				find_files = {
					hidden = false,
				},
			},
			extensions = {
				fzf = {},
			},
		},
		keys = function()
			local builtin = require("telescope.builtin")
			require("telescope").load_extension("ui-select")
			require("telescope").load_extension("fidget")
			return {
				{ "<leader>ff", builtin.find_files, desc = "find files" },
				{ "<leader>fg", builtin.live_grep, desc = "file grep" },
				{ "<leader>fk", builtin.keymaps, desc = "file keymaps" },
				{ "<leader>fb", builtin.buffers, desc = "find open buffers" },
				{ "<leader>fq", builtin.buffers, desc = "find in quickfix" },
				{ "<leader>tc", builtin.colorscheme, desc = "choose color scheme" },
				{ "<leader>ft", ":TodoTelescope<enter>", desc = "find open todos" },
				{ "<leader><leader>", builtin.oldfiles, desc = "search recent" },
				{
					"<leader>fm",
					function()
						require("telescope.builtin").lsp_document_symbols({ symbols = { "method", "function" } })
					end,
					desc = "find methods in file",
				},
				{
					"<leader>pws",
					function()
						local word = vim.fn.expand("<cword>")
						builtin.grep_string({ search = word })
					end,
					desc = "find word in file",
				},
				{
					"<leader>pWs",
					function()
						local word = vim.fn.expand("<cWORD>")
						builtin.grep_string({ search = word })
					end,
					desc = "find Word in files",
				},
			}
		end,
	},
}
