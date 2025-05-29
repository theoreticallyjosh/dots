return {
	{
		"nvim-treesitter/nvim-treesitter",
		-- "nvim-treesitter/nvim-treesitter-textobjects",
		build = ":TSUpdate",
		config = function()
			local config = require("nvim-treesitter.configs")
			config.setup({
				ensure_installed = { "typescript", "lua", "go" },
				auto_install = true,
				highlight = { enable = true, disable = { "csv", "tsv" } },
				indent = { enable = true },
				textobjects = {
					select = {
						enable = true,
						lookahead = true,
						keymaps = {
							["af"] = "@function.outer",
							["if"] = "@function.inner",
						},
					},
				},
			})
		end,
	},
	{
		"nvim-treesitter/nvim-treesitter-textobjects",
		init = function() end,
	},
}
