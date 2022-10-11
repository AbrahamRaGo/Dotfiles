local status, alpha = pcall(require, 'alpha')

if (not status) then return end

local theta = require('alpha.themes.theta')
local dashboard = require("alpha.themes.dashboard")

theta.header.val = {
[[ ███╗   ██╗ ███████╗ ██████╗  ██╗   ██╗ ██╗ ███╗   ███╗]],
[[ ████╗  ██║ ██╔════╝██╔═══██╗ ██║   ██║ ██║ ████╗ ████║]],
[[ ██╔██╗ ██║ █████╗  ██║   ██║ ██║   ██║ ██║ ██╔████╔██║]],
[[ ██║╚██╗██║ ██╔══╝  ██║   ██║ ╚██╗ ██╔╝ ██║ ██║╚██╔╝██║]],
[[ ██║ ╚████║ ███████╗╚██████╔╝  ╚████╔╝  ██║ ██║ ╚═╝ ██║]],
[[ ╚═╝  ╚═══╝ ╚══════╝ ╚═════╝    ╚═══╝   ╚═╝ ╚═╝     ╚═╝]],
}

theta.buttons.val = {
 { type = "text", val = "Quick links", opts = { hl = "SpecialComment", position = "center" } },
 { type = "padding", val = 1 },
 dashboard.button("q", "  Quit", "<cmd>q!<CR>"),
 dashboard.button("g", "  LazyGit", ":LazyGit<CR>"),
 dashboard.button("b", "  Branches", ":Telescope git_branches<CR>"),
 dashboard.button("t", "  Telescope", ":Telescope<CR>"),
 dashboard.button("n", "  New File", ":ene <BAR> startinsert <CR>"),
 dashboard.button("f", "  Find File", ":lua require'telescope.builtin'.find_files(require('telescope.themes').get_dropdown({ previewer = false }))<cr>"),
 dashboard.button("s", "  Live Grep", ":lua require'telescope.builtin'.live_grep(require('telescope.themes').get_dropdown({}))<cr>"),
 dashboard.button("e", "  File Explorer", ":NvimTreeToggle<cr>"),
 dashboard.button("c", "  Configurations", ":e ~/.config/nvim/init.lua <CR>"),
}

alpha.setup(theta.config)
