return {
	"j-hui/fidget.nvim",
	opts = function()
		local fidget = require("fidget")
		vim.notify = fidget.notify
		return {
			notification = {
				window = {
					winblend = 0,
				},
			},
		}
	end,
}
