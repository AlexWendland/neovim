return {
  'zbirenbaum/copilot.lua',
  cmd = 'Copilot',
  event = 'InsertEnter',
  config = function()
    require('copilot').setup {
      panel = { enabled = false },
      suggestion = {
        enabled = false,
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
