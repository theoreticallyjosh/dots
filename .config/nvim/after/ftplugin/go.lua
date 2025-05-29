vim.opt_local.tabstop = 4
vim.opt_local.softtabstop = 4
vim.opt_local.shiftwidth = 4
vim.opt_local.expandtab = false

-- Custom Macros
vim.fn.setreg("j", '^yiw$a `json:"pb~$a"`==j')
