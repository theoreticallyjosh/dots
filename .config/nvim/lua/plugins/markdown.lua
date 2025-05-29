return {
	"MeanderingProgrammer/render-markdown.nvim",
	opts = {
		code = {
			sign = false,
			width = "block",
			right_pad = 1,
		},
		heading = {
			sign = false,
			icons = {},
		},
	},
	ft = { "markdown", "norg", "rmd", "org", "codecompanion" },
	config = function()
		require("render-markdown").setup()
		vim.keymap.set("n", "<leader>um", function()
			local m = require("render-markdown")
			m.enable()
		end)
	end,
}
