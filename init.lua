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

-- Keep signcolumn on by default
vim.opt.signcolumn = 'yes'

-- Enable mouse
vim.opt.mouse = 'a'

-- Enable break indent
vim.opt.breakindent = true

-- Configure how new splits should be opened
vim.opt.splitright = true
vim.opt.splitbelow = true

-- Sync clipboard for Os
vim.schedule(function()
  vim.opt.clipboard = 'unnamedplus'
end)


-- Keymaps
vim.keymap.set("n", "<leader>pv", vim.cmd.Ex)
-- vim.keymap.set('n', '<leader>e', ':Neotree reveal<CR>', {silent = true})
vim.api.nvim_set_keymap('n', '<leader>w', ':w<CR>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<leader>q', ':q<CR>', { noremap = true, silent = true })

--  See `:help wincmd` for a list of all window commands
vim.keymap.set('n', '<C-h>', '<C-w><C-h>', { desc = 'Move focus to the left window' })
vim.keymap.set('n', '<C-l>', '<C-w><C-l>', { desc = 'Move focus to the right window' })
vim.keymap.set('n', '<C-j>', '<C-w><C-j>', { desc = 'Move focus to the lower window' })
vim.keymap.set('n', '<C-k>', '<C-w><C-k>', { desc = 'Move focus to the upper window' })

-- Lazy Package Manager
require("config.lazy")
require("config.options")
