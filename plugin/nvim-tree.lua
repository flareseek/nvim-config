vim.pack.add({
  { src = 'https://github.com/nvim-tree/nvim-web-devicons' },
  { src = 'https://github.com/nvim-tree/nvim-tree.lua' },
})

vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1
vim.opt.termguicolors = true

local api = require('nvim-tree.api')

vim.keymap.set('n', '<leader>e', function()
  api.tree.toggle({
    path = "<args>",
    find_file = false,
    update_root = false,
    focus = true,
  })
end)

vim.keymap.set('n', '<leader>f', '<cmd>NvimTreeFocus<cr>')
require("nvim-tree").setup({
  disable_netrw = true,
  sync_root_with_cwd = true,
  view = {
    preserve_window_proportions = true,
    width = 25,
    -- float = { enable = true },
  },

  renderer = {
    add_trailing = true,
    highlight_git = "all",
    -- highlight_diagnostics = "name",
    indent_markers = { enable = true },

    -- NVCHAD
    icons = {
      glyphs = {
        default = "󰈚",
        folder = {
          default = "",
          empty = "",
          empty_open = "",
          open = "",
          symlink = "",
        },
        git = { unmerged = "" },
      },
    },
  },

  update_focused_file = {
    enable = false,
    update_root = {
      enable = true,
    },
  },

  filters = {
    enable = true,
    dotfiles = false,
  },

  actions = {
    remove_file = {
      close_window = false,
    }
  },
})

