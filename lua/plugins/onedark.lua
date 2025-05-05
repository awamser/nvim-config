return {
  'navarasu/onedark.nvim',
  priority = 1000,
  config = function()
    require('onedark').setup({
      styles = 'dark'
    })
    require('onedark').load()
  end,
}
