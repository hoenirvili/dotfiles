return {
  'nvim-lualine/lualine.nvim',
  dependencies = { 'nvim-tree/nvim-web-devicons' },
  opts = {
    options = {
      disabled_filetypes = {
        statusline = {
          'neo-tree',
        },
      },
      theme = 'seoul256',
      component_separators = {},
      section_separators = {},
    },
  },
}
