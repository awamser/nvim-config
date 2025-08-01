-- lua/plugins/none-ls.lua

return {
	"nvimtools/none-ls.nvim",
	dependencies = {
		"nvimtools/none-ls-extras.nvim",
		"nvim-lua/plenary.nvim",
	},
	config = function()
		local null_ls = require("null-ls")
		local swift_format = require("formatters.swift")

		null_ls.setup({
			sources = {
				null_ls.builtins.formatting.stylua,
				null_ls.builtins.formatting.prettier,
				swift_format,
				null_ls.builtins.diagnostics.swiftlint,
				require("none-ls.diagnostics.eslint_d"),
			},
		})

		vim.keymap.set("n", "<leader>gf", function()
			vim.lsp.buf.format({ async = true })
		end, {})

		vim.api.nvim_create_autocmd("BufWritePre", {
			pattern = "*.swift",
			callback = function()
				vim.lsp.buf.format({ async = false })
			end,
		})
	end,
}
