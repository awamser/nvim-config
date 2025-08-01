return {
	"OXY2DEV/markview.nvim",
	dependencies = {
		"nvim-treesitter/nvim-treesitter",
	},
	ft = { "markdown", "codecompanion" },
	opts = {
		preview = {
			filetypes = { "markdown", "codecompanion" },
			ignore_buftypes = {},
		},
	},
	config = function(_, opts)
		require("markview").setup(opts)
	end,
}
