-- neo-tree
-- https://github.com/nvim-neo-tree/neo-tree.nvim

return {
  "nvim-neo-tree/neo-tree.nvim",
  branch = "v3.x",
  dependencies = {
    "nvim-lua/plenary.nvim",
    "nvim-tree/nvim-web-devicons",
    "MunifTanjim/nui.nvim",
  },
  cmd = 'Neotree',
  config = function()
    vim.keymap.set('n', '<leader>e', ':Neotree reveal<CR>', {silent = true})  
  end
}
