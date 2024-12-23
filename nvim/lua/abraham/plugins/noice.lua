return {
	"folke/noice.nvim",
	event = "VeryLazy",
	opts = {
		lsp = {
			signature = {
				enabled = false,
			},
		},
		views = {
			cmdline_popup = {
				position = {
					row = 4,
					col = "50%",
				},
				size = {
					width = 60,
					height = "auto",
				},
			},
		},
	},
	dependencies = {
		-- if you lazy-load any plugin below, make sure to add proper `module="..."` entries
		"MunifTanjim/nui.nvim",
		-- OPTIONAL:
		--   `nvim-notify` is only needed, if you want to use the notification view.
		--   If not available, we use `mini` as the fallback
		-- "rcarriga/nvim-notify",
	},
}
