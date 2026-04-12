vim.pack.add({'https://github.com/nanozuki/tabby.nvim'})
vim.o.showtabline = 2
vim.opt.sessionoptions = 'curdir,folds,globals,help,tabpages,terminal,winsize'

require('tabby').setup({
  preset = 'active_tab_with_wins',
  option = {
    tab_name = {
      name_fallback = function(tabid)
        return ''
      end,
    },
  },
})
