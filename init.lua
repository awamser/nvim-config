-- Map leader
vim.g.mapleader = " "
vim.g.maplocalleader = " "

-- Nerd Fonts
vim.g.have_nerd_font = true
vim.opt.termguicolors = true

-- Make line numbers default
vim.opt.number = true
vim.opt.relativenumber = true
vim.opt.signcolumn = "yes"
vim.opt.updatetime = 50
-- vim.opt.colorcolumn = "120"

-- tab settings
vim.opt.tabstop = 4
vim.opt.softtabstop = 4
vim.opt.shiftwidth = 4
vim.opt.expandtab = true

-- Undo settings
vim.opt.undodir = os.getenv("HOME") .. "/.vim/undodir"
vim.opt.undofile = true

-- Show which line cursor is on
vim.opt.cursorline = true

-- Minimal number of screen lines to keep above and below the cursor.
vim.opt.scrolloff = 10

-- Keep signcolumn on by default
vim.opt.signcolumn = "yes"

-- Enable mouse
vim.opt.mouse = "a"

-- Enable break indent
vim.opt.breakindent = true

-- Configure how new splits should be opened
vim.opt.splitright = true
vim.opt.splitbelow = true

-- Sync clipboard for Os
vim.schedule(function()
  vim.opt.clipboard = "unnamedplus"
end)

vim.opt.swapfile = false

vim.filetype.add({
  extension = {
    leaf = "html",
  },
})

local map = vim.keymap.set

-- Navigate vim panels with hjkl
map("n", "<c-k>", "wincmd k<CR>")
map("n", "<c-j>", "wincmd j<CR>")
map("n", "<c-h>", "wincmd h<CR>")
map("n", "<c-l>", "wincmd l<CR>")

-- Navigate insert mode with jk
map("i", "jj", "<ESC>", { noremap = false })

-- Keymaps
map("n", "<leader>pv", vim.cmd.Ex)
map("n", "<leader>e", ":Neotree reveal<CR>", { silent = true })
vim.api.nvim_set_keymap("n", "<leader>w", ":w<CR>", { noremap = true, silent = true })
vim.api.nvim_set_keymap("n", "<leader>q", ":q<CR>", { noremap = true, silent = true })

--  See `:help wincmd` for a list of all window commands
map("n", "<C-h>", "<C-w><C-h>", { desc = "Move focus to the left window" })
map("n", "<C-l>", "<C-w><C-l>", { desc = "Move focus to the right window" })
map("n", "<C-j>", "<C-w><C-j>", { desc = "Move focus to the lower window" })
map("n", "<C-k>", "<C-w><C-k>", { desc = "Move focus to the upper window" })

-- nvim DAP
map("n", "<Leader>dl", "<cmd>lua require'dap'.step_into()<CR>", { desc = "Debugger step into" })
map("n", "<Leader>dj", "<cmd>lua require'dap'.step_over()<CR>", { desc = "Debugger step over" })
map("n", "<Leader>dk", "<cmd>lua require'dap'.step_out()<CR>", { desc = "Debugger step out" })
map("n", "<Leader>dc", "<cmd>lua require'dap'.continue()<CR>", { desc = "Debugger continue" })
map("n", "<Leader>db", "<cmd>lua require'dap'.toggle_breakpoint()<CR>", { desc = "Debugger toggle breakpoint" })
map(
  "n",
  "<Leader>dd",
  "<cmd>lua require'dap'.set_breakpoint(vim.fn.input('Breakpoint condition: '))<CR>",
  { desc = "Debugger set conditional breakpoint" }
)
map("n", "<Leader>de", "<cmd>lua require'dap'.terminate()<CR>", { desc = "Debugger reset" })
map("n", "<Leader>dr", "<cmd>lua require'dap'.run_last()<CR>", { desc = "Debugger run last" })

-- keymap for nohlsearch
-- map("n", "<Esc><Esc>", ":nohlsearch<CR>", { noremap = true, silent = true, desc = "Clear search highlight" })

-- rustaceanvim
map("n", "<Leader>dt", "<cmd>lua vim.cmd('RustLsp testables')<CR>", { desc = "Debugger testables" })

-- create keymapping for floating terminal
map("n", "<Leader>ft", ":FloatermNew<CR>", { noremap = true, silent = true, desc = "Toggle floating terminal" })
map(
  "t",
  "<Leader>ft",
  "<C-\\><C-n>:FloatermNew<CR>",
  { noremap = true, silent = true, desc = "Toggle floating terminal" }
)

-- Lazy Package Manager
require("config.lazy")
require("config.options")
