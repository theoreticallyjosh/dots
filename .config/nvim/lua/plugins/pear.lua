return {
	"sylvanfranklin/pear",
	keys = {
		{
			"<leader>j",
			mode = { "n", "x" },
			function()
				require("pear").jump_pair()
			end,
			desc = "Jump to pair",
		},
	},
}
