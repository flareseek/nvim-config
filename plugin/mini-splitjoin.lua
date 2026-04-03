vim.pack.add({'https://github.com/nvim-mini/mini.splitjoin'})
local split_join = require('mini.splitjoin')
split_join.setup({
  mappings = { toggle = '=s' },
  join = {
    hooks_post = { split_join.gen_hook.pad_brackets({brackets = { '%b{}' }}) }
  }
})

