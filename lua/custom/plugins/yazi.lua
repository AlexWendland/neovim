return {
  'mikavilpas/yazi.nvim',
  event = 'VeryLazy',
  dependencies = {
    'folke/snacks.nvim',
  },
  keys = {
    {
      '<leader>tt',
      '<cmd>Yazi<cr>',
      mode = { 'n', 'v' },
      desc = '[T]oggle [T]ree',
    },
    {
      '<leader>tr',
      '<cmd>Yazi cwd<cr>',
      desc = '[T]oggle [R]oot',
    },
  },
  opts = {
    open_for_directories = false,
    keymaps = {
      show_help = '<f1>',
    },
  },
}
