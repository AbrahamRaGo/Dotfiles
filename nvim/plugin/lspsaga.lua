local status, saga = pcall(require, 'lspsaga')

if (not status) then return end

saga.init_lsp_saga{
  server_filetype_map = {}
}

local opts = { silent = true, noremap = true}

local keymap = vim.keymap.set

keymap('n', '<C-]>', ':Lspsaga diagnostic_jump_next<CR>', opts)
keymap('n', '<C-[>', ':Lspsaga diagnostic_jump_prev<CR>', opts)
keymap('n', '<C-i>', ':Lspsaga hover_doc<CR>', opts)
keymap('n', '<C-k>', ':Lspsaga lsp_finder<CR>', opts)
keymap('n', '<space>d', ':Lspsaga peek_definition<CR>', opts)
keymap('n', '<space>rn', ':Lspsaga rename<CR>', opts)
keymap('n', 'gi', ':Lspsaga show_line_diagnostics<CR>', opts)
