vim.pack.add({'https://github.com/rebelot/kanagawa.nvim'})

require('kanagawa').setup({ compile = true })
vim.cmd('colorscheme kanagawa')
-- " 1. Modify your config
-- " 2. Restart nvim
-- " 3. Run this command:
-- :KanagawaCompile
