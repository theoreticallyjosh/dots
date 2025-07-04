return {
	"laytan/cloak.nvim",
	event = "BufRead",
	opts = {
		enabled = true,
		cloak_character = "*",
		-- The applied highlight group (colors) on the cloaking, see `:h highlight`.
		highlight_group = "Comment",
		-- Applies the length of the replacement characters for all matched
		-- patterns, defaults to the length of the matched pattern.
		cloak_length = nil, -- Provide a number if you want to hide the true length of the value.
		-- Whether it should try every pattern to find the best fit or stop after the first.
		try_all_patterns = true,
		-- Set to true to cloak Telescope preview buffers. (Required feature not in 0.1.x)
		cloak_telescope = true,
		-- Re-enable cloak when a matched buffer leaves the window.
		cloak_on_leave = false,
		patterns = {
			{
				file_pattern = { ".env*", "*config.json" },
				cloak_pattern = { "(=).+", '(:) *".+"' },
				-- A function, table or string to generate the replacement.
				-- The actual replacement will contain the 'cloak_character'
				-- where it doesn't cover the original text.
				-- If left empty the legacy behavior of keeping the first character is retained.
				replace = "%1",
			},
		},
	},
	keys = {
		{ "<Leader>ct", ":CloakToggle<CR>", desc = "cloak toggle" },
		{ "<Leader>cl", ":CloakPreviewLine<CR>", desc = "cloak preview line" },
	},
}
