return {
	"zbirenbaum/copilot.lua",
	enabled = false,
	cmd = "Copilot",
	event = "InsertEnter",
	config = function()
		require("copilot").setup({
			suggestion = { enabled = true, auto_trigger = true, keymap = { accept = "<TAB>" } },
			panel = { enabled = false },
		})
	end,
}
