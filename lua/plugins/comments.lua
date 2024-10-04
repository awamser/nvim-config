-- comments
-- https://github.com/numToStr/Comment.nvim_lsp

return {
  "numToStr/Comment.nvim",
  config = function()
    -- Swift specific setup
    require("Comment").setup({
      -- Swift specific setup
      pre_hook = function(ctx)
        local U = require("Comment.utils")

        -- Detect the filetype as Swift
        if vim.bo.filetype == "swift" then
          local type = ctx.ctype == U.ctype.line and "__default" or "__multiline"
          local location = nil
          if ctx.ctype == U.ctype.block then
            location = require("ts_context_commentstring.utils").get_cursor_location()
          end
          return require("ts_context_commentstring.internal").calculate_commentstring({
            key = type,
            location = location,
          })
        end
      end,
    })
  end,
}
