-- Navigate vim panes better
vim.keymap.set("n", "<c-k>", ":wincmd k<CR>")
vim.keymap.set("n", "<c-j>", ":wincmd j<CR>")
vim.keymap.set("n", "<c-h>", ":wincmd h<CR>")
vim.keymap.set("n", "<c-l>", ":wincmd l<CR>")

-- vim.keymap.set('n', '<leader>h', ':nohlsearch<CR>')

-- buffer navigation
vim.keymap.set("n", "<tab>", ":bn!<CR>")
vim.keymap.set("n", "<S-tab>", ":bp!<CR>")

-- jump to middle of page
vim.api.nvim_set_keymap("n", "<C-d>", "<C-d>zz", { noremap = true, silent = true })
vim.api.nvim_set_keymap("n", "<C-u>", "<C-u>zz", { noremap = true, silent = true })

-- more universal commenting
vim.keymap.set("i", "<C-/>", "<Esc>gcc")
vim.keymap.set("n", "<C-/>", "gcc", { remap = true })
vim.keymap.set("v", "<C-/>", "gc", { remap = true })
-- handle tmux and zellij ctrl chars
vim.keymap.set("i", "<C-_>", "<Esc>gcc")
vim.keymap.set("n", "<C-_>", "gcc", { remap = true })
vim.keymap.set("v", "<C-_>", "gc", { remap = true })

-- increment/decrement
vim.keymap.set("n", "+", "<C-a>")
vim.keymap.set("n", "-", "<C-x>")

-- yank to clipboard
vim.keymap.set({ "n", "v" }, "<leader>y", [["+y]], { desc = "yank to clipboard" })
vim.keymap.set({ "n", "v" }, "<leader>Y", [["+Y]], { desc = "yank line to clipboard" })

-- Paste in visual mode without yanking replaced text
vim.keymap.set("x", "p", [["_dP]])

-- delete without yanking
vim.keymap.set({ "n", "v" }, "<leader>D", [["_d]])

vim.keymap.set("n", "<leader>rc", ":%s/<C-r><C-w>/", { desc = "find replace under cursor" })

vim.keymap.set("n", "<leader>co", ":copen<enter>", { desc = "quickfix open" })
vim.keymap.set("n", "<leader>cc", ":cclose<enter>", { desc = "quickfix close" })
vim.keymap.set("n", "<leader>cp", ":cp<enter>", { desc = "quickfix next" })
vim.keymap.set("n", "<leader>cn", ":cn<enter>", { desc = "quickfix previous" })

vim.keymap.set("v", "J", ":m'>+1<CR>gv=gv", { desc = "move current line down" })
vim.keymap.set("v", "K", ":m'>-2<CR>gv=gv", { desc = "move current line up" })

vim.keymap.set("v", "<leader>s", ":sort<CR>", { desc = "sort selection" })

vim.keymap.set("n", "<leader>xf", function()
	vim.diagnostic.open_float({ scope = "line", border = "rounded" })
end, { desc = "show diagnostic float" })
