return {
	"stevearc/conform.nvim",
	opts = {},
	config = function()
		require("conform").setup({
			formatters_by_ft = {
				lua = { "stylua" },
				javascript = { "prettier" },
				typescript = { "prettier" },
				html = { "prettier" },
				leaf = { "prettier" },
				css = { "prettier" },
				json = { "prettier" },
				markdown = { "prettier" },
				rust = { "rustfmt", lsp_format = "fallback" },
				swift = { "swift_format" },
			},
			format_on_save = {
				lsp_fallback = true,
				timeout_ms = 500,
				lsp_format = "fallback",
			},
		})
	end,
}
