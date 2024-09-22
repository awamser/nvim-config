return {
	"ThePrimeagen/harpoon",
	branch = "harpoon2",
	lazy = false,
	doependencies = { "nvim-lua/plenary.nvim" },
	config = function()
		local harpoon = require("harpoon")
		harpoon.setup({
			vim.keymap.set("n", "<leader>ha", function()
				harpoon:list():add()
			end),
			vim.keymap.set("n", "<leader>hr", function()
				harpoon:list():remove()
			end),
			vim.keymap.set("n", "<C-e>", function()
				harpoon.ui:toggle_quick_menu(harpoon:list())
			end),
		})
	end,
}
