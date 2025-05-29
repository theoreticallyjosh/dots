return {
	{
		"lukas-reineke/indent-blankline.nvim",
		enabled = false,
		event = "BufEnter",
		main = "ibl",
		opts = {
			scope = {
				enabled = true,
				show_start = false,
				show_end = false,
			},
		},
	},
}
