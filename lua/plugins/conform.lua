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
			formatters = {
				prettier = {
					prepend_args = function(self, ctx)
						local args = {
							"--print-width",
							"120",
							"--tab-width",
							"2",
							"--use-tabs",
							"false",
							"--semi",
							"true",
							"--single-quote",
							"false",
							"--quote-props",
							"as-needed",
							"--trailing-comma",
							"es5",
							"--bracket-spacing",
							"true",
							"--bracket-same-line",
							"true",
							"--html-whitespace-sensitivity",
							"css",
						}
						if vim.endswith(ctx.filename, ".leaf") then
							table.insert(args, "--parser")
							table.insert(args, "html")
						end
						return args
					end,
				},
			},
			format_on_save = {
				lsp_fallback = true,
				timeout_ms = 500,
				lsp_format = "fallback",
			},
		})

		vim.keymap.set("n", "<leader>gf", function()
			require("conform").format({ async = true })
		end, { desc = "Format buffer" })
	end,
}
