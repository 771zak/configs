vim.g.mapleader = " "

local keymap = vim.keymap

-- general keymaps
keymap.set("i", "ii", "<ESC>") 

keymap.set("n", "<leader>sv", "<C-w>v") --split window vertically
keymap.set("n", "<leader>sh", "<C-w>s") -- split window horizontally

keymap.set("n", "nt", ":tabnew<CR>") -- open a new tab
keymap.set("n", "pt", ":tabp<CR>") -- go to previous tab
keymap.set("n", "qt", ":tabn<CR>") -- go to next tab

keymap.set("n", "<C-f>", ":NvimTreeToggle<CR>") -- toggle file explorer
keymap.set("i", "<C-s>", "<ESC>:w<CR>") -- make ctrl+s to save
keymap.set("n", "<C-s>", "<ESC>:w<CR>") -- make ctrl+s to save

-- fzf commands
keymap.set("n", ";f", "<cmd>Telescope find_files<cr>")
