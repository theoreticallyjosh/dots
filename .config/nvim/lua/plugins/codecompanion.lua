return {
	"olimorris/codecompanion.nvim",
	config = true,
	enabled = false,
	dependencies = {
		"nvim-lua/plenary.nvim",
		"nvim-treesitter/nvim-treesitter",
	},
	opts = {
		strategies = {
			chat = {
				adapter = "codegemma",
			},
			inline = {
				adapter = "codegemma",
			},
			cmd = {
				adapter = "codegemma",
			},
		},
		adapters = {
			codegemma = function()
				return require("codecompanion.adapters").extend("ollama", {
					name = "codegemma", -- Give this adapter a different name to differentiate it from the default ollama adapter
					schema = {
						model = {
							default = "codegemma:latest",
						},
					},
				})
			end,
		},
	},
}
