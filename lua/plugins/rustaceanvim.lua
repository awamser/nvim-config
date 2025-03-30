local capabilities = require("cmp_nvim_lsp").default_capabilities()

vim.g.rustaceanvim = {
	server = {
		settings = {
			["rust-analyzer"] = {
				-- for a list of all possible config, see:
				-- https://github.com/rust-lang/rust-analyzer/blob/master/crates/rust-analyzer/src/config.rs
				cargo = { features = "all" },
				check = {
					allTargets = true,
					features = "all",
					command = "clippy",
					extraArgs = { "--no-deps" },
				},
				inlayHints = { maxLength = 100 },
				-- procMacro = { ignored = { leptos_macro = { "component", "server" } } },
				workspace = { symbol = { search = { kind = "all_symbols" } } },
			},
			capabilities = capabilities,
		},
	},
}

return {
	{
		"mrcjkb/rustaceanvim",
		version = "^5", -- pin to releases, but allow majors
		lazy = false, -- the plugin handles its own lazy loading
	},
}
