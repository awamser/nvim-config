return {
  {
    "OXY2DEV/markview.nvim",
    dependencies = {
      "nvim-treesitter/nvim-treesitter",
    },
    opts = {
      preview = {
        filetypes = { "markdown", "codecompanion" },
        ignore_buftypes = {},
      },
    },
  },
  -- Load nvim-treesitter after
  {
    "nvim-treesitter/nvim-treesitter",
    build = ":TSUpdate",
  },
}
