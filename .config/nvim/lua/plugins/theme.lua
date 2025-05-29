return {
	{
		"folke/tokyonight.nvim",
		config = function()
			require("tokyonight").setup({
				style = "moon",
				on_colors = function(colors)
					colors.bg = "#101219"
					colors.bg_float = "#101219"
				end,
			})

			vim.cmd.colorscheme("tokyonight-storm")
		end,
	},
	{
		"rose-pine/neovim",
		name = "rose-pine",

		config = function()
			require("rose-pine").setup({
				-- styles = { transparency = true },
			})
		end,
		-- vim.cmd.colorscheme("rose-pine"),
	},
	{
		"eldritch-theme/eldritch.nvim",
		enabled = false,
		priority = 1000,
		opts = {},
	},
}
