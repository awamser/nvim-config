-- lua/plugins/none-ls.lua

return {
	"nvimtools/none-ls.nvim",
	dependencies = {
		"nvimtools/none-ls-extras.nvim",
		"nvim-lua/plenary.nvim",
	},
	config = function()
		local null_ls = require("null-ls")
		null_ls.setup({
			sources = {
				null_ls.builtins.diagnostics.swiftlint,
				require("none-ls.diagnostics.eslint_d"),
			},
		})
	end,
}
