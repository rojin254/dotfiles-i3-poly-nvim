
vim.g.mapleader = " "


vim.keymap.set("n","<leader>pv",vim.cmd.Ex) --netrw



vim.keymap.set("v", "<A-Up>", ":m '<-2<CR>gv=gv")
vim.keymap.set("v", "<A-Down>", ":m '>+1<CR>gv=gv")  -- alt move

vim.keymap.set("x","<leader>p","\"_dP")  -- pastes without copying the reeplaced selection

vim.keymap.set("n","<leader>y","\"+y")   --
vim.keymap.set("v","<leader>y","\"+y")    -- yank directly into system clipboard
vim.keymap.set("n","<leader>Y","\"+Y")   --



vim.keymap.set("n", "<leader>s", [[:%s/\<<C-r><C-w>\>/<C-r><C-w>/gI<Left><Left><Left>]]) -- search and replace all occurences

vim.keymap.set("n", "<C-k>", "<cmd>cnext<CR>zz")     --
vim.keymap.set("n", "<C-j>", "<cmd>cprev<CR>zz")     -- quickfix options
vim.keymap.set("n", "<leader>k", "<cmd>lnext<CR>zz") --
vim.keymap.set("n", "<leader>j", "<cmd>lprev<CR>zz") --


vim.keymap.set("n","<C-left>",":bp<CR>") --previous buffer
vim.keymap.set("n","<C-right>",":bn<CR>") -- next buffer

vim.keymap.set("n","<A-S-left>","<C-W>h")
vim.keymap.set("n","<A-S-right>","<C-W>l")
vim.keymap.set("n","<A-S-down>","<C-W>j")
vim.keymap.set("n","<A-S-up>","<C-W>k")


