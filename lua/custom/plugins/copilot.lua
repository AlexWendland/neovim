return {
  'zbirenbaum/copilot.lua',
  cmd = 'Copilot',
  event = 'InsertEnter',
  config = function()
    require('copilot').setup {
      panel = { enabled = false },
      suggestion = {
        auto_trigger = true,
        keymap = {
          accept = '<M-y>',
        },
      },
      filetypes = {
        python = true,
        markdown = true,
        lua = true,
        ['*'] = false,
      },
    }
  end,
}
