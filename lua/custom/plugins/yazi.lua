return {
  'mikavilpas/yazi.nvim',
  event = 'VeryLazy',
  dependencies = {
    'folke/snacks.nvim',
  },
  keys = {
    {
      '<leader>tt',
      mode = { 'n', 'v' },
      '<cmd>Yazi<cr>',
      desc = '[T]oggle [T]ree',
    },
    {
      '<leader>tr',
      '<cmd>Yazi cwd<cr>',
      desc = '[T]oggle [R]oot',
    },
  },
  opts = {
    open_for_directories = true,
    keymaps = {
      show_help = '<f1>',
    },
  },
  -- 👇 if you use `open_for_directories=true`, this is recommended
  init = function()
    vim.g.loaded_netrwPlugin = 1
  end,
}
