return {
	{
		"saghen/blink.cmp",
		-- optional: provides snippets for the snippet source
		dependencies = "rafamadriz/friendly-snippets",

		-- use a release tag to download pre-built binaries
		version = "v0.*",
		-- AND/OR build from source, requires nightly: https://rust-lang.github.io/rustup/concepts/channels.html#working-with-nightly-rust
		-- build = 'cargo build --release',
		-- If you use nix, you can build from source using latest nightly rust with:
		-- build = 'nix run .#build-plugin',

		opts = {
			-- 'default' for mappings similar to built-in completion
			-- 'super-tab' for mappings similar to vscode (tab to accept, arrow keys to navigate)
			-- 'enter' for mappings similar to 'super-tab' but with 'enter' to accept
			-- see the "default configuration" section below for full documentation on how to define
			-- your own keymap.
			keymap = { preset = "default" },
			snippets = { preset = "luasnip" },
			appearance = {
				-- Sets the fallback highlight groups to nvim-cmp's highlight groups
				-- Useful for when your theme doesn't support blink.cmp
				-- will be removed in a future release
				use_nvim_cmp_as_default = true,
				-- Set to 'mono' for 'Nerd Font Mono' or 'normal' for 'Nerd Font'
				-- Adjusts spacing to ensure icons are aligned
				nerd_font_variant = "mono",
			},

			-- default list of enabled providers defined so that you can extend it
			-- elsewhere in your config, without redefining it, via `opts_extend`
			sources = {
				default = { "lsp", "path", "snippets", "buffer", "dadbod" },
				-- optionally disable cmdline completions
				-- cmdline = {},
				providers = {
					dadbod = { name = "Dadbod", module = "vim_dadbod_completion.blink" },
					-- minuet = {
					-- 	name = "minuet",
					-- 	module = "minuet.blink",
					-- 	score_offset = 8, -- Gives minuet higher priority among suggestions
					-- },
				},
				per_filetype = {
					codecompanion = { "codecompanion" },
				},
			},

			-- experimental signature help support
			signature = {
				enabled = true,
				window = {
					border = "single",
				},
			},
			completion = {
				documentation = {
					auto_show = true,
					window = {
						border = "single",
					},
				},
				trigger = { prefetch_on_insert = false },
			},
		},
		-- allows extending the providers array elsewhere in your config
		-- without having to redefine it
		opts_extend = { "sources.default" },
	},
}
