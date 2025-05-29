-- return {
-- 	"vim-test/vim-test",
-- 	-- dependencies = {
-- 	--     "preservim/vimux"
-- 	-- },
-- 	config = function()
-- 		vim.cmd("let test#strategy = 'make'")
-- 		vim.cmd("let test#go#gotest#options={'all':'-fullpath'}")
-- 	end,
-- 	keys = {
-- 		{ "<leader>tn", ":TestNearest<CR>", desc = "test nearest" },
-- 		{ "<leader>tf", ":TestFile<CR>", desc = "test file" },
-- 		{ "<leader>ts", ":TestSuite<CR>", desc = "test suite" },
-- 	},
-- }
return {
	{
		"nvim-neotest/neotest",
		event = "VeryLazy",
		dependencies = {
			"nvim-neotest/nvim-nio",
			"nvim-lua/plenary.nvim",
			"antoinemadec/FixCursorHold.nvim",
			"nvim-treesitter/nvim-treesitter",
			{ "fredrikaverpil/neotest-golang", version = "*" }, -- Installation
		},
		config = function()
			local neotest_golang_opts = {} -- Specify custom configuration
			require("neotest").setup({
				adapters = {
					require("neotest-golang")(neotest_golang_opts), -- Registration
				},
			})
		end,
		keys = {
			{
				"<leader>ta",
				function()
					require("neotest").run.attach()
				end,
				desc = "Test [a]ttach",
			},
			{
				"<leader>tf",
				function()
					require("neotest").run.run(vim.fn.expand("%"))
				end,
				desc = "Test run [f]ile",
			},
			{
				"<leader>tA",
				function()
					require("neotest").run.run(vim.uv.cwd())
				end,
				desc = "Test [A]ll files",
			},
			{
				"<leader>tS",
				function()
					require("neotest").run.run({ suite = true })
				end,
				desc = "Test [S]uite",
			},
			{
				"<leader>tn",
				function()
					require("neotest").run.run()
				end,
				desc = "Test [n]earest",
			},
			{
				"<leader>tl",
				function()
					require("neotest").run.run_last()
				end,
				desc = "Test [l]ast",
			},
			{
				"<leader>ts",
				function()
					require("neotest").summary.toggle()
				end,
				desc = "Test [s]ummary",
			},
			{
				"<leader>to",
				function()
					require("neotest").output.open({ enter = true, auto_close = true })
				end,
				desc = "Test [o]utput",
			},
			{
				"<leader>tO",
				function()
					require("neotest").output_panel.toggle()
				end,
				desc = "Test [O]utput panel",
			},
			{
				"<leader>tt",
				function()
					require("neotest").run.stop()
				end,
				desc = "Test [t]erminate",
			},
			{
				"<leader>td",
				function()
					require("neotest").run.run({ suite = false, strategy = "dap" })
				end,
				desc = "Debug nearest test",
			},
			{
				"<leader>tD",
				function()
					require("neotest").run.run({ vim.fn.expand("%"), strategy = "dap" })
				end,
				desc = "Debug current file",
			},
		},
	},
}
