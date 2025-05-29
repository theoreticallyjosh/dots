return {
	"danymat/neogen",
	opts = { snippet_engine = "luasnip" },
	keys = {
		{ "<Leader>gc", ":lua require('neogen').generate()<CR>", desc = "generate annotations" },
	},
}
