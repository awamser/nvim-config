-- lua/formatters/swift.lua

local helpers = require("null-ls.helpers")
local methods = require("null-ls.methods")
local lsp_util = require("lspconfig.util")

return helpers.make_builtin({
	name = "swift-format",
	meta = {
		url = "https://github.com/apple/swift-format",
		description = "Apple’s official Swift formatting tool.",
	},
	method = methods.internal.FORMATTING,
	filetypes = { "swift" },
	generator = helpers.generator_factory({
		fn = function(params)
			local config_dir = lsp_util.root_pattern(".swift-format")(params.bufname)
			return {
				command = "swift-format",
				args = { "format", "-" },
				to_stdin = true,
				cwd = config_dir or vim.fn.getcwd(),
			}
		end,
		async = true,
		on_output = function(params, done)
			if params.output then
				done({ { text = params.output } })
			else
				done()
			end
		end,
	}),
})
