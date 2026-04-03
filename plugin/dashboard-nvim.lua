vim.pack.add({'https://github.com/nvimdev/dashboard-nvim'})

require('dashboard').setup({
  confirm_key = { 'o', '<CR>' },
  shortcuts_left_side = true,
  config = {
    shortcut = {
      { desc = '󰊳 Plugins Update', group = '@property', action = 'vim.pack.update()', key = 'u' },
    },
    -- packages = { enable = false },
    project = { enable = false },
    header = {},
    footer = {},
  },
})
