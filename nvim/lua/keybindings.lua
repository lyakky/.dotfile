vim.g.mapleader = " "
vim.g.maplocalleader = " "

local map =vim.api.nvim_set_keymap
local opt ={noremap = true, silent = true}

map("n","<C-u", "9k", opt)
map("n", "C-d", "9j", opt)

map("n", "<C-h>", ":BufferLineCyclePrev<CR>", opt)
map("n", "<C-l>", ":BufferLineCycleNext<CR>", opt)

map("v", "<", "<gv", opt)
map("v", ">", ">gv", opt)
--分屏快捷
map("n", "sv", ":vsp<CR>", opt)
map("n", "sh", ":sp<CR>", opt)
map("n", "sc", "<C-w>c", opt)
map("n", "so", "<C-w>o", opt)
--比例控制
map("n", "s>",":vertical resize +20<CR>", opt)
map("n", "s<",":vertical resize -20<CR>", opt)
map("n", "s=", "<C-w>=", opt)
map("n", "sj", ":resize -10<CR>", opt)
map("n", "sk", ":resize +10<CR>", opt)
--分配控制
map("n", "<A-h>", "<C-w>h", opt)
map("n", "<A-j>", "<C-w>j", opt)
map("n", "<A-k>", "<C-w>k", opt)
map("n", "<A-l>", "<C-w>l", opt)

-- nvimTree
--map("n", "<C-n>", ":NvimTreeToggle<CR>", opt)
map('n', '<A-m>', ':NvimTreeToggle<CR>', opt)

--code run
map("n", "<leader>r", ":wall<CR>:RunCode<CR>", opt)
map("n", "<leader>rc", ":RunClose<CR>", opt)

