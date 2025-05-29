return {
	"nvim-neo-tree/neo-tree.nvim",
	branch = "v3.x",
	dependencies = {
		"nvim-lua/plenary.nvim",
		"nvim-tree/nvim-web-devicons",
		"MunifTanjim/nui.nvim",
	},
	keys = {
		{ "<C-n>", ":Neotree filesystem reveal left<CR>" },
		{ "<leader>bf", ":Neotree buffers reveal float<CR>", desc = "show buffers in float" },
	},
}
