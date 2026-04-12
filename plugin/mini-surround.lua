vim.pack.add({'https://github.com/nvim-mini/mini.surround'})
require('mini.surround').setup({
  mappings = {
    add = 'ys',
    delete = 'ds',
    replace = 'cs',
    find = '',
    find_left = '',
    highlight = '',
  }
})
vim.keymap.del('v', 'ys')
