-- comments
-- https://github.com/numToStr/Comment.nvim

return {
  "numToStr/Comment.nvim",
  config = function()
    require("Comment").setup({
      pre_hook = function(ctx)
        local U = require("Comment.utils")
        -- Check if filetype is Swift
        if vim.bo.filetype == "swift" then
          -- If the context is blockwise (visual selection or operator pending blockwise), use /* */
          if ctx.ctype == U.ctype.block or ctx.cmotion == U.cmotion.v or ctx.cmotion == U.cmotion.V then
            return "/* %s */"
          else
            -- For linewise comments, use //
            return "// %s"
          end
        end
      end,
    })
  end,
}
