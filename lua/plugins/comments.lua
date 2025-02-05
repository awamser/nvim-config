-- comments
-- https://github.com/numToStr/Comment.nvim

return {
  "numToStr/Comment.nvim",
  config = function()
    require("Comment").setup({
      pre_hook = function(ctx)
        local U = require("Comment.utils")

        -- Get the current filetype
        local ft = vim.bo.filetype

        -- Handle Swift comments
        if ft == "swift" then
          if ctx.ctype == U.ctype.block or ctx.cmotion == U.cmotion.v or ctx.cmotion == U.cmotion.V then
            return "/* %s */"
          else
            return "// %s"
          end
        end

        -- Handle HTML comments
        if ft == "html" then
          return "<!-- %s -->"
        end

        -- Handle embedded JavaScript/CSS in HTML
        if ft == "javascript" or ft == "css" then
          if ctx.ctype == U.ctype.block or ctx.cmotion == U.cmotion.v or ctx.cmotion == U.cmotion.V then
            return "/* %s */"
          else
            return "// %s"
          end
        end
      end,

      -- Additional language-specific settings
      toggler = {
        line = "gcc",
        block = "gbc",
      },
      opleader = {
        line = "gc",
        block = "gb",
      },
      -- Enable extra space after comment delimiter
      padding = true,
    })
  end,
}
