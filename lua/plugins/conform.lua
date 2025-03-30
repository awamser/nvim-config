return {
  "stevearc/conform.nvim",
  opts = {},
  confing = function()
    require("conform").setup({
      formatters_by_ft = {
        lua = { "stylua" },
        javascript = { "prettier" },
        typescript = { "prettier" },
        html = { "prettier" },
        css = { "prettier" },
        json = { "prettier" },
        markdown = { "prettier" },
        rust = { "rustfmt", lsp_format = "fallback" },
      },
      format_on_save = {
        lsp_fallback = true,
        timeout_ms = 500,
        lsp_format = "fallback",
      },
    })
  end,
}
