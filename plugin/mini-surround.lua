vim.pack.add({'https://github.com/nvim-mini/mini.nvim'})
require('mini.surround').setup({
  mappings = {
    add = 'ys',
    delete = 'ds',
    replace = 'cs',
  }
})
