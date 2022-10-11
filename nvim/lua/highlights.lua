vim.opt.cursorline = true
vim.opt.termguicolors = true
vim.cmd[[ set completeopt=menuone,noinsert,noselect ]]
vim.opt.winblend = 1 -- Opacity of window, 0 is fully opaque or disable
vim.opt.wildoptions = 'pum' -- Display the completion matches using the popupmenu in the same style as the |ins-completion-menu|.
vim.opt.pumblend = 5 -- Enables pseudo-transparency for the |popup-menu|.
vim.opt.pumheight = 10
vim.cmd[[ colorscheme sonokai ]]
vim.g.sonokai_style = 'maia'
vim.opt.background = 'dark'
