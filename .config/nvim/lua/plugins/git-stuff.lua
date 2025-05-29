return {
	{
		"tpope/vim-fugitive",
		enabled = false,
	},
	{
		"lewis6991/gitsigns.nvim",
		opts = {},
		keys = {
			{ "<leader>gp", ":Gitsigns preview_hunk<CR>", desc = "git preview hunk" },
			{ "<leader>gb", ":Gitsigns toggle_current_line_blame<CR>", desc = "toggle git blame" },
			{ "<leader>gs", ":Gitsigns toggle_signs<CR>", desc = "toggle signs" },
		},
	},
}
