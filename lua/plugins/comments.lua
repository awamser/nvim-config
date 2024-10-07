-- comments
-- https://github.com/numToStr/Comment.nvim

return {
  "numToStr/Comment.nvim",
  config = function()
    -- require("Comment").setup({
    -- pre_hook = function(ctx)
    --     local U = require("Comment.utils")
    --
    --     -- Detect the filetype as Swift
    --     if vim.bo.filetype == "swift" then
    --       local type = ctx.ctype == U.ctype.line and "__default" or "__multiline"
    --       local location = nil
    --       if ctx.ctype == U.ctype.block then
    --         location = require("ts_context_commentstring.utils").get_cursor_location()
    --       end
    --       return require("ts_context_commentstring.internal").calculate_commentstring({
    --         key = type,
    --         location = location,
    --       })
    --     end
    --   end,
    -- })
    require("Comment").setup({
      -- Add a hook to recognize Swift file types
      pre_hook = function(ctx)
        local U = require("Comment.utils")

        if vim.bo.filetype == "swift" then
          -- Determine whether to use linewise (single line //) or blockwise (/* */)
          local location = nil
          if ctx.ctype == U.ctype.block then
            location = require("ts_context_commentstring.utils").get_cursor_location()
          elseif ctx.cmotion == U.cmotion.v or ctx.cmotion == U.cmotion.V then
            location = require("ts_context_commentstring.utils").get_visual_start_location()
          end

          return require("ts_context_commentstring.internal").calculate_commentstring({
            key = ctx.ctype == U.ctype.line and "__default" or "__multiline",
            location = location,
          })
        end
      end,
    })
  end,
}
