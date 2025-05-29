return {
	"karb94/neoscroll.nvim",
	enabled = false,
	opts = {
		post_hook = function(info)
			vim.cmd("normal! zz")
		end,
	},
}
