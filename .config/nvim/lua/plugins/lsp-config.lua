return {
	{
		"williamboman/mason.nvim",
		lazy = false,
		config = function()
			require("mason").setup()
		end,
	},
	{
		"williamboman/mason-lspconfig.nvim",
		lazy = false,
		opts = {
			auto_install = true,
		},
	},
	{
		"neovim/nvim-lspconfig",
		lazy = false,
		config = function()
			local capabilities = require("blink.cmp").get_lsp_capabilities()

			vim.api.nvim_create_autocmd("FileType", {
				pattern = "htmlangular",
				callback = function()
					vim.bo.filetype = "html"
				end,
			})

			vim.lsp.enable("tailwindcss")
			vim.lsp.config("tailwindcss", {
				capabilities = capabilities,
			})

			vim.lsp.enable("ts_ls")
			vim.lsp.config("ts_ls", {
				on_attach = function(client)
					client.server_capabilities.documentFormattingProvider = false
					client.server_capabilities.documentRangeFormattingProvider = false
				end,
				capabilities = capabilities,
			})

			vim.lsp.enable("cssls")
			vim.lsp.config("cssls", {
				capabilities = capabilities,
			})

			vim.lsp.enable("solargraph")
			vim.lsp.config("solargraph", {
				capabilities = capabilities,
			})

			vim.lsp.enable("pylsp")
			vim.lsp.config("pylsp", {
				capabilities = capabilities,
			})

			vim.lsp.enable("html")
			vim.lsp.config("html", {
				on_attach = function(client)
					client.server_capabilities.documentFormattingProvider = false
					client.server_capabilities.documentRangeFormattingProvider = false
				end,
				capabilities = capabilities,
			})

			vim.lsp.enable("lua_ls")
			vim.lsp.config("lua_ls", {
				on_attach = function(client)
					client.server_capabilities.documentFormattingProvider = false
					client.server_capabilities.documentRangeFormattingProvider = false
				end,
				settings = {
					Lua = {
						diagnostics = {
							globals = { "vim" },
						},
					},
				},
				capabilities = capabilities,
			})

			vim.lsp.enable("csharp_ls")
			vim.lsp.config("csharp_ls", {
				cmd = { "/home/jhagofsk/.dotnet/tools/csharp-ls" },
				capabilities = capabilities,
			})

			vim.lsp.enable("gopls")
			vim.lsp.config("gopls", {
				capabilities = capabilities,
				cmd = { "gopls" },
				-- init_options = {
				-- 	usePlaceholders = true,
				-- },
				settings = {
					completeUnimported = true,
				},
			})

			vim.lsp.enable("harper_ls")
			vim.lsp.config("harper_ls", {
				capabilities = capabilities,
				settings = {
					["harper-ls"] = {
						userDictPath = "/home/jhagofsk/.config/harper-ls/dictionary.txt",
						linters = {
							SentenceCapitalization = false,
							ToDoHyphen = false,
						},
					},
				},
			})

			vim.lsp.enable("emmet_language_server")

			vim.lsp.handlers["textDocument/hover"] = vim.lsp.with(vim.lsp.handlers.hover, { border = "rounded" })
			vim.lsp.handlers["textDocument/signatureHelp"] = vim.lsp.with(vim.lsp.handlers["signature_help"], {
				border = "single",
				close_events = { "CursorMoved", "BufHidden", "InsertCharPre" },
			})
		end,
		keys = {
			{
				"K",
				function()
					vim.lsp.buf.hover({ border = "single", max_height = 50, max_width = 100 })
				end,
				desc = "lsp hover",
			},
			{ "<leader>ca", vim.lsp.buf.code_action, desc = "code action" },
			{ "<leader>cs", vim.lsp.buf.signature_help, desc = "code signature" },
			{ "<space>rn", vim.lsp.buf.rename, desc = "rename entity" },
		},
	},
}
