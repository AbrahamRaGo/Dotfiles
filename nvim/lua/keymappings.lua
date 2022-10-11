local keymap = vim.keymap.set

local silent = { silent = true }
local noremap = { noremap = true }
local opts = { silent = true, noremap = true }

keymap('n', '<Space>', '<NOP>', opts)

vim.g.mapleader = ' '

-- Jump to normal mode
keymap('i', 'jk', '<ESC>')
keymap('v', '<space>', '<ESC>')
keymap('x', '<space>', '<ESC>')

-- Moving fast in insert mode
keymap('i', 'jw', '<ESC>wa')
keymap('i', 'jo', '<ESC>o')
keymap('i', 'ja', '<ESC>A')
keymap('i', 'ji', '<ESC>I')

-- Search and replace
keymap('n', '<leader>;r', ':%s/oldword/newword/gc')

-- Save and exit
keymap('n', '<leader>w', ':w!<CR>', opts)
keymap('n', '<leader>q', ':q!<CR>', opts)

-- Do not yank with x
keymap('n', 'x', '"_x')

-- Increment, Decrement
keymap('n', '+', '<C-a>')
keymap('n', '-', '<C-x>')

-- Delete a word backwards
keymap('n', 'dw', 'vb"_d')

-- Select all
keymap('n', '<C-a>', 'gg<S-v>G')

-- Tab movements
keymap('n', '<Tab>', ':tabnext<CR>', silent)
keymap('n', '<S-Tab>', ':tabprevious<CR>', silent)
keymap('n', '<leader>c', ':tabclose<CR>', silent)

-- Window movements
keymap('n', '<C-h>', '<C-w>h', silent)
keymap('n', '<C-l>', '<C-w>l', silent)
keymap('n', '<C-j>', '<C-w>j', silent)
keymap('n', '<C-k>', '<C-w>k', silent)

-- Resizing windows
keymap('n', '<C-Up>', ':resize -2<CR>', silent)
keymap('n', '<C-Down>', ':resize +2<CR>', silent)
keymap('n', '<C-Left>', ':vertical resize -2<CR>', silent)
keymap('n', '<C-Right>', ':vertical resize +2<CR>', silent)

-- nohl
keymap('n', '<leader>o', ':set hlsearch!<CR>', silent)


-- Indenting
keymap('v', '<', '<gv', opts)
keymap('v', '>', '>gv', opts)

-- Move line or block of lines in visual mode
keymap("x", "<C-j>", ":move '>+1<CR>gv-gv", opts)
keymap("x", "<C-k>", ":move '<-2<CR>gv-gv", opts)

-- Open File explorer
keymap('n', '<leader>e', ':NvimTreeToggle<CR>', opts)

-- Open symbols
keymap('n', '<leader>s', ':SymbolsOutline<CR>', opts)

-- Go to definition
keymap('n', '<leader>gd', ':Telescope lsp_definitions<CR>', opts)

-- Git
keymap('n', '<leader>m', ':DiffviewOpen<CR>', opts)
keymap('n', '<leader>lg', ':LazyGit<CR>', opts)

-- Telescope
keymap('n', 'ff', ":lua require'telescope.builtin'.find_files(require('telescope.themes').get_dropdown({ previewer = false }))<cr>", opts)
keymap('n', 'fr', ":lua require'telescope.builtin'.live_grep(require('telescope.themes').get_ivy({}))<cr>", opts)
keymap('n', 'fb', ":lua require'telescope.builtin'.buffers(require('telescope.themes').get_dropdown({ previewer = false, initial_mode = 'normal' }))<cr>", opts)
keymap('n', 'fd', ":lua require'telescope.builtin'.diagnostics(require('telescope.themes').get_dropdown({initial_mode = 'nornal'}))<cr>", opts)
keymap('n', ';f', ":lua require'telescope'.extensions.file_browser.file_browser{ path = '%:p:h', cwd = telescope_buffer_dir(), respect_git_ignore = false, hidden = true, grouped=true, previewer = false, initial_mode = 'normal', layout_config = { height = 40 } }<cr>", opts)

-- Better movements in buffer
keymap('n', '<leader>/', ':Telescope current_buffer_fuzzy_find<CR>', opts)
keymap('n', 'f', ':HopChar1CurrentLine<CR>', opts)
keymap('n', '<leader>1', ':HopChar1<CR>', opts)
keymap('n', '<leader>2', ':HopChar2<CR>', opts)
keymap('n', '<leader>p', ':HopPattern<CR>', opts)

-- Twilight
keymap('n', '<leader>t', ':Twilight<CR>', opts)
