return {
  'rose-pine/neovim',
  name = 'rose-pine',
  opts = {
    styles = {
      italic = false,
    },
  },
  init = function()
    vim.cmd('colorscheme rose-pine')
  end,
}
