return {
  'folke/snacks.nvim',
  priority = 1000,
  lazy = false,
  opts = {
    -- your configuration comes here
    -- or leave it empty to use the default settings
    -- refer to the configuration section below
    bigfile = { enabled = true },
    indent = { enabled = false }, -- disabled: nvim 0.12 TSNode:range() API break
    picker = { enabled = true },
    notifier = { enabled = true },
    scope = { enabled = false }, -- disabled: nvim 0.12 TSNode:range() API break
    scroll = { enabled = true },
    statuscolumn = { enabled = true },
    words = { enabled = true },
  },
}
