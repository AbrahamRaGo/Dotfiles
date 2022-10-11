vim.cmd('autocmd!')
vim.wo.number = true
vim.opt.mouse = 'a'
vim.opt.numberwidth = 4
vim.o.swapfile = false
vim.o.undofile = true
vim.opt.title = true
vim.opt.autoindent = true
vim.opt.hlsearch = false
vim.opt.backup = false
vim.opt.showcmd = false
vim.opt.cmdheight = 1
vim.opt.autowrite = true
vim.opt.laststatus = 2
vim.opt.expandtab = true
vim.opt.scrolloff = 15
vim.opt.colorcolumn = '120'
--vim.opt.shell = 'kitty'
vim.opt.inccommand = 'split'
vim.opt.signcolumn = 'yes'
vim.opt.ignorecase = true
vim.opt.smarttab = true
vim.opt.breakindent = true
vim.opt.shiftwidth = 2
vim.opt.showtabline = 2
vim.opt.hidden = true
vim.opt.exrc = true
vim.opt.showmatch = true
vim.opt.ruler = true
vim.opt.showmode = false
vim.opt.tabstop = 2
vim.opt.ai = true -- AutoIndent
vim.opt.si = true -- SmartIndent
vim.opt.wrap = false
vim.opt.backspace = 'start,eol,indent'
vim.opt.path:append { '**' } -- Finding files - Search down into subfolders
vim.opt.wildignore:append { '*/node_modules/*' }
vim.opt.clipboard:append { 'unnamed', 'unnamedplus' }
