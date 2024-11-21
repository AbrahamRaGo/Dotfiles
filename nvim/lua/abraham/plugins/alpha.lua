return {
	"goolord/alpha-nvim",
	event = "VimEnter",
	config = function()
		local alpha = require("alpha")
		local dashboard = require("alpha.themes.dashboard")

		-- Set header
		dashboard.section.header.val = {
			"                                                     ",
			"  ███╗   ██╗███████╗ ██████╗ ██╗   ██╗██╗███╗   ███╗ ",
			"  ████╗  ██║██╔════╝██╔═══██╗██║   ██║██║████╗ ████║ ",
			"  ██╔██╗ ██║█████╗  ██║   ██║██║   ██║██║██╔████╔██║ ",
			"  ██║╚██╗██║██╔══╝  ██║   ██║╚██╗ ██╔╝██║██║╚██╔╝██║ ",
			"  ██║ ╚████║███████╗╚██████╔╝ ╚████╔╝ ██║██║ ╚═╝ ██║ ",
			"  ╚═╝  ╚═══╝╚══════╝ ╚═════╝   ╚═══╝  ╚═╝╚═╝     ╚═╝ ",
			"                                                     ",
		}

		-- Set menu
		dashboard.section.buttons.val = {
			dashboard.button("q", "  Quit", "<cmd>q!<CR>"),
			dashboard.button("wr", "󰁯  Restore Session For Current Directory", "<cmd>SessionRestore<CR>"),
			dashboard.button("g", "  LazyGit", ":LazyGit<CR>"),
			dashboard.button("b", "  Branches", ":Telescope git_branches<CR>"),
			dashboard.button("t", "  Telescope", ":Telescope<CR>"),
			dashboard.button("n", "  New File", ":ene <BAR> startinsert <CR>"),
			dashboard.button(
				"f",
				"  Find File",
				":lua require'telescope.builtin'.find_files(require('telescope.themes').get_dropdown({ previewer = false }))<cr>"
			),
			dashboard.button(
				"s",
				"  Live Grep",
				":lua require'telescope.builtin'.live_grep(require('telescope.themes').get_dropdown({}))<cr>"
			),
			dashboard.button("e", "  File Explorer", ":NvimTreeToggle<cr>"),
			dashboard.button("c", "  Configurations", ":e ~/.config/nvim/init.lua <CR>"),
		}

		-- Send config to alpha
		alpha.setup(dashboard.opts)

		-- Disable folding on alpha buffer
		vim.cmd([[autocmd FileType alpha setlocal nofoldenable]])
	end,
}
