-- ~/.config/nvim/lua/plugins/tree-sitter-leaf.lua
return {
  "visualbam/tree-sitter-leaf",
  lazy = false,
  config = function()
    local parser_config = require("nvim-treesitter.parsers").get_parser_configs()
    parser_config.leaf = {
      install_info = {
        url = "https://github.com/visualbam/tree-sitter-leaf",
        files = { "src/parser.c" },
        branch = "master",
      },
      filetype = "leaf",
    }

    vim.filetype.add({
      extension = { leaf = "leaf" },
      filename = { ["index.leaf"] = "leaf" },
    })

    vim.treesitter.language.register("leaf", "leaf")

  end,
}
