return {
  {
    "saghen/blink.cmp",
    dependencies = { "rafamadriz/friendly-snippets" },
    version = "1.*",
    
    opts = {
      keymap = { preset = "default" },
      
      appearance = {
        nerd_font_variant = "mono",
      },
      
      completion = { 
        documentation = { auto_show = false },
        menu = {
          max_height = 15,
          border = "rounded",
        }
      },
      
      sources = {
        default = { "lsp", "path", "snippets", "buffer" },
      },
      
      fuzzy = { implementation = "prefer_rust_with_warning" },
    },
    opts_extend = { "sources.default" },
  },
}