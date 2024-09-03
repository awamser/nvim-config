-- Map leader
vim.g.mapleader = " "
vim.g.maplocalleader = " "

-- Nerd Fonts
vim.g.have_nerd_font = true


-- Make line numbers default
vim.opt.number = true
vim.opt.relativenumber = true

-- Show which line cursor is on
vim.opt.cursorline = true

-- Minimal number of screen lines to keep above and below the cursor.
vim.opt.scrolloff = 10

-- Enable mouse
vim.opt.mouse = 'a'

-- Sync clipboard for Os
vim.schedule(function()
  vim.opt.clipboard = 'unnamedplus'
end)


-- Keymaps
vim.keymap.set("n", "<leader>pv", vim.cmd.Ex)
vim.keymap.set('n', '<leader>e', ':Neotree reveal<CR>', {silent = true})  

-- Lazy Package Manager
require("config.lazy")
require("config.options")
