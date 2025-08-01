local capabilities = require("blink.cmp").get_lsp_capabilities()

return {
	{
		"mrcjkb/rustaceanvim",
		version = "^6",
		lazy = false,
		-- config = function()
		-- 	local mason_registery = require("mason-registry")
		-- 	local codelldb = mason_registery.get_package("codelldb")
		-- 	local extension_path = codelldb:get_install_path() .. "/extension/"
		-- 	local codelldb_path = extension_path .. "adapter/codelldb"
		-- 	local liblldb_path = extension_path .. "lldb/lib/liblldb.dylib"
		-- 	local cfg = require("rustaceanvim.config")
		--
		-- 	vim.g.rustaceanvim = {
		-- 		dap = {
		-- 			adapter = cfg.get_codelldb_adapter(codelldb_path, liblldb_path),
		-- 			server = {
		-- 				settings = {
		-- 					["rust-analyzer"] = {
		-- 						-- for a list of all possible config, see:
		-- 						-- https://github.com/rust-lang/rust-analyzer/blob/master/crates/rust-analyzer/src/config.rs
		-- 						cargo = { features = "all" },
		-- 						check = {
		-- 							allTargets = true,
		-- 							features = "all",
		-- 							command = "clippy",
		-- 							extraArgs = { "--no-deps" },
		-- 						},
		-- 						files = {
		-- 							excludeDirs = {
		-- 								".direnv",
		-- 								".git",
		-- 								"bin",
		-- 								"target",
		-- 								"node_modules",
		-- 							},
		-- 						},
		-- 						inlayHints = { maxLength = 100 },
		-- 						-- procMacro = { ignored = { leptos_macro = { "component", "server" } } },
		-- 						workspace = { symbol = { search = { kind = "all_symbols" } } },
		-- 					},
		-- 					capabilities = capabilities,
		-- 				},
		-- 			},
		-- 		},
		-- 	}
		-- end,
	},
}
