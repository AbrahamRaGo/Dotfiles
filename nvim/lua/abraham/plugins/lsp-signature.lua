return {
	"ray-x/lsp_signature.nvim",
	event = "VeryLazy",
	opts = {
		hint_enable = false, -- virtual hint enable
	},
	config = function(_, opts)
		require("lsp_signature").setup(opts)
	end,
}
