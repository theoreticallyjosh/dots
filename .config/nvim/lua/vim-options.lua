vim.opt.expandtab = true
vim.opt.tabstop = 2
vim.opt.softtabstop = 2
vim.opt.shiftwidth = 2

vim.g.mapleader = " "
vim.g.background = "dark"
vim.opt.relativenumber = true
vim.opt.swapfile = false

vim.opt.cursorline = true
vim.opt.colorcolumn = "120,200"

vim.opt.signcolumn = "yes"
vim.opt.shada = "!,'20,<50,s10,h"

vim.wo.number = true

vim.opt.scrolloff = 4
vim.opt.sidescrolloff = 4

vim.g["diagnostics_active"] = true
function Toggle_diagnostics()
	if vim.g.diagnostics_active then
		vim.g.diagnostics_active = false
		vim.diagnostic.disable()
	else
		vim.g.diagnostics_active = true
		vim.diagnostic.enable()
	end
end

vim.keymap.set(
	"n",
	"<leader>xd",
	Toggle_diagnostics,
	{ noremap = true, silent = true, desc = "Toggle vim diagnostics" }
)
vim.diagnostic.config({ virtual_lines = { current_line = true } })
vim.diagnostic.config({
	underline = true,
	virtual_lines = { current_line = true },
	signs = {
		text = {
			[vim.diagnostic.severity.ERROR] = "",
			[vim.diagnostic.severity.WARN] = "",
			[vim.diagnostic.severity.INFO] = "",
			[vim.diagnostic.severity.HINT] = "",
		},
	},
})
