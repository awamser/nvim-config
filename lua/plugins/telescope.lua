return {
  {
    "nvim-telescope/telescope.nvim",
    tag = "0.1.8",
    dependencies = { "nvim-lua/plenary.nvim" },
    config = function()
      local builtin = require("telescope.builtin")
      local actions = require("telescope.actions")

      require("telescope").setup({
        pickers = {
          buffers = {
            previewer = false, -- 💡 Needed to make delete_buffer work
            sort_mru = true,
            mappings = {
              i = {
                ["<C-d>"] = actions.delete_buffer,
              },
              n = {
                ["<C-d>"] = actions.delete_buffer,
              },
            },
          },
        },
      })

      vim.keymap.set("n", "<leader>ff", builtin.find_files, {desc = "Telescope Find Files"})
      vim.keymap.set("n", "<leader>fg", builtin.live_grep, {desc = "Telescope Live Grep"})
      vim.keymap.set("n", "<leader>fb", builtin.buffers, {desc = "Telescope Buffer"})
      vim.keymap.set("n", "<leader>fh", builtin.help_tags, {desc = "Telescope Help Tags"})
    end,
  },
  {
    "nvim-telescope/telescope-ui-select.nvim",
    config = function()
      require("telescope").setup({
        extensions = {
          ["ui-select"] = {
            require("telescope.themes").get_dropdown({}),
          },
        },
      })
      require("telescope").load_extension("ui-select")
    end,
  },
}
