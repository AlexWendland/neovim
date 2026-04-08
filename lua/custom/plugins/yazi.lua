return {
  'mikavilpas/yazi.nvim',
  version = '*',
  event = 'VeryLazy',
  dependencies = {
    { 'folke/snacks.nvim', lazy = true },
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
    open_file_function = function(chosen_file, config, state)
      vim.cmd('edit! ' .. vim.fn.fnameescape(chosen_file))
    end,
  },
}
