return {
	"echasnovski/mini.ai",
	version = false,
	opts = function()
		local ai = require("mini.ai")
		local f = function(args)
			vim.b[args.buf].miniai_disable = true
		end
		vim.api.nvim_create_autocmd("Filetype", { pattern = "html", callback = f })
		return {
			n_lines = 500,
			custom_textobjects = {
				f = ai.gen_spec.treesitter({ a = "@function.outer", i = "@function.inner" }), -- function
			},
		}
	end,
}
