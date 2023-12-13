local keymap = vim.keymap
local opts = {noremap = true, silent = true}

-- Directory navigation
keymap.set("n", "<leader>e", ":NvimTreeToggle<CR>", opts)
keymap.set("n", "<leader>b", ":NvimTreeFindFile<CR>", opts)

-- Pane navigation
keymap.set("n", "<C-h>", "<C-w>h", opts)
keymap.set("n", "<C-l>", "<C-w>l", opts)
keymap.set("n", "<C-j>", "<C-w>j", opts)
keymap.set("n", "<C-k>", "<C-w>k", opts)

-- Window Management
keymap.set("n", "<leader>sv", ":vsplit<CR>", opts) -- split vertically
keymap.set("n", "<leader>sh", ":split<CR>", opts) -- split horizontally
keymap.set("n", "<leader>sm", ":MazimizerToggle<CR>", opts) -- split horizontally

-- Indenting
keymap.set("v", "<", "<gv")
keymap.set("v", ">", ">gv")
