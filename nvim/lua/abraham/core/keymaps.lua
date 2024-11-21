vim.g.mapleader = " "
local keymap = vim.keymap -- for conciseness
local silent = { silent = true }
local noremap = { noremap = true }
local opts = { silent = true, noremap = true }

---------------------
-- General Keymaps -------------------

-- use jk to exit insert mode
keymap.set("i", "jk", "<ESC>", opts, { desc = "Exit insert mode with jk" })
keymap.set("v", "<space>", "<ESC>", opts, { desc = "Exit visual mode with space" })
keymap.set("x", "<space>", "<ESC>", opts, { desc = "Exit visual mode with space" })

-- clear search highlights
keymap.set("n", "<leader>h", ":nohl<CR>", opts, { desc = "Clear search highlights" })

-- delete single character without copying into register
keymap.set("n", "x", '"_x')
-- Delete a word backwards
keymap.set("n", "dw", 'vb"_d', opts, { desc = "Delete word backwards" })

-- Indenting
keymap.set("v", "<", "<gv", opts, { desc = "Indent to left" })
keymap.set("v", ">", ">gv", opts, { desc = "Indent to right" })

-- Saving
keymap.set("n", "<leader>w", ":w!<CR>", opts, { desc = "Saving file" })
keymap.set("n", "<leader>q", ":q!<CR>", opts, { desc = "Quit file or Neovim" })

-- Jumping
keymap.set("i", "jjw", "<ESC>wa", opts, { desc = "Jump to the end of the word" })
keymap.set("i", "jjo", "<ESC>o", opts, { desc = "Jump to new line" })
keymap.set("i", "jja", "<ESC>A", opts, { desc = "Jump to the end of the line" })
keymap.set("i", "jji", "<ESC>I", opts, { desc = "Jump to beginning of the line" })

-- increment/decrement numbers
-- keymap.set("n", "<leader>+", "<C-a>", { desc = "Increment number" }) -- increment
-- keymap.set("n", "<leader>-", "<C-x>", { desc = "Decrement number" }) -- decrement

-- window management
keymap.set("n", "<leader>sv", "<C-w>v", { desc = "Split window vertically" }) -- split window vertically
keymap.set("n", "<leader>sh", "<C-w>s", { desc = "Split window horizontally" }) -- split window horizontally
keymap.set("n", "<leader>se", "<C-w>=", { desc = "Make splits equal size" }) -- make split windows equal width & height
keymap.set("n", "<leader>sx", "<cmd>close<CR>", { desc = "Close current split" }) -- close current split window

keymap.set("n", "<leader>tn", "<cmd>tabnew<CR>", { desc = "Open new tab" }) -- open new tab
keymap.set("n", "<leader>tx", "<cmd>tabclose<CR>", { desc = "Close current tab" }) -- close current tab
keymap.set("n", "<Tab>", "<cmd>tabn<CR>", { desc = "Go to next tab" }) --  go to next tab
keymap.set("n", "<S-Tab>", "<cmd>tabp<CR>", { desc = "Go to previous tab" }) --  go to previous tab
keymap.set("n", "<leader>tf", "<cmd>tabnew %<CR>", { desc = "Open current buffer in new tab" }) --  move current buffer to new tab
