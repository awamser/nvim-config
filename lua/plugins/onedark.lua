return {
  'navarasu/onedark.nvim',
  config = function()
    require('onedark').setup({
      styles = 'warm'
    })
    require('onedark').load()
  end,
}
