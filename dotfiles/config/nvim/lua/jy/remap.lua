vim.g.mapleader = " "

local keyset = vim.keymap.set

-- <C-d> keep cursor in the middle
keyset("n", "<C-d>", "<C-d>zz")
keyset("n", "<C-u>", "<C-u>zz")

-- <leader>y yank to system clipboard
keyset({"n", "v"}, "<leader>y","\"+y")
keyset("n", "<leader>Y", "\"+Y")

keyset({"n", "v"}, "<leader>d","\"_d")

-- Windows navigation
keyset("n", "<A-h>", "<C-w>h")
keyset("n", "<A-j>", "<C-w>j")
keyset("n", "<A-k>", "<C-w>k")
keyset("n", "<A-l>", "<C-w>l")
keyset({"i", "t"}, "<A-h>", "<C-\\><C-N><C-w>h")
keyset({"i", "t"}, "<A-j>", "<C-\\><C-N><C-w>j")
keyset({"i", "t"}, "<A-k>", "<C-\\><C-N><C-w>k")
keyset({"i", "t"}, "<A-l>", "<C-\\><C-N><C-w>l")

-- Windows split
keyset("n", "<leader>vs", vim.cmd.vs)
keyset("n", "<leader>hs", vim.cmd.sp)
keyset("n", "<leader>wq", "<C-w>q")
keyset("n", "<leader>wo", "<C-w>o") -- Close all windows but one
keyset("n", "<leader>wt", "<C-w>T") -- Move the current split window into its own tab

-- Windows resizing
keyset("n", "<M-Right>", ":vertical resize +1<CR>")
keyset("n", "<M-Left>", ":vertical resize -1<CR>")
keyset("n", "<M-Down>", ":resize -1<CR>")
keyset("n", "<M-Up>", ":resize +1<CR>")

-- Taaaaabs
keyset("n", "<leader>tn", vim.cmd.tabnew)
keyset("n", "<leader>tq", vim.cmd.tabc)

-- Buffer navigation
keyset("n", "<leader>bb", vim.cmd.ls)
keyset("n", "<leader>bn", vim.cmd.bn)
keyset("n", "<leader>bp", vim.cmd.bp)
keyset("n", "<leader>bd", ":bp<bar>sp<bar>bn<bar>bd<CR>")

-- Terminal
keyset({"n", "v", "i"}, "<leader>tt", "<ESC>:sp<CR><C-\\><C-N><C-w>j:resize 10 <bar>term<CR>")
keyset("t", "<ESC><ESC>", "<C-\\><C-N>")
