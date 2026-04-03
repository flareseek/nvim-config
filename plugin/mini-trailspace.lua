vim.pack.add({'https://github.com/nvim-mini/mini.trailspace'})
vim.api.nvim_create_autocmd({ "BufReadPost", "BufNewFile" }, {
  group = vim.api.nvim_create_augroup("LoadMiniTrailspace", { clear = true }),
  callback = function()
    require("mini.trailspace").setup()
  end,
  once = true,
})
