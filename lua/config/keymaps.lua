-- Define options
local opts = { noremap = true, silent = true }

-- Line editing
vim.keymap.set("n", "<Leader>o", "o<Esc>^Da", opts)
vim.keymap.set("n", "<Leader>O", "O<Esc>^Da", opts)

-- Tab navigation
vim.keymap.set("n", "<C-n>", ":tabedit<CR>", opts)
vim.keymap.set("n", "<tab>", ":tabnext<CR>", opts)
vim.keymap.set("n", "<s-tab>", ":tabprev<CR>", opts)

-- Neotree toggle
vim.keymap.set("n", "<c-\\>", ":Neotree filesystem toggle left<CR>", opts)
--LazyGit toggle
vim.keymap.set("n", "<c-'>", ":LazyGitConfig<CR>", opts)
-- Split windows
vim.keymap.set("n", "ss", ":split<CR>", opts)
vim.keymap.set("n", "sv", ":vsplit<CR>", opts)

local fzf = require("fzf-lua")
-- Window movement
vim.keymap.set("n", "sh", "<C-w>h", opts)
vim.keymap.set("n", "sk", "<C-w>k", opts)
vim.keymap.set("n", "sj", "<C-w>j", opts)
vim.keymap.set("n", "sl", "<C-w>l", opts)
vim.keymap.set("n", "<C-/>", fzf.files, opts)
