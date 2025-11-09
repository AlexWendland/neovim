-- NOTE: Plugins can also be configured to run lua code when they are loaded.
--
-- This is often very useful to both group configuration, as well as handle
-- lazy loading plugins that don't need to be loaded immediately at startup.
--
-- For example, in the following configuration, we use:
--  event = 'VimEnter'
--
-- which loads which-key before all the UI elements are loaded. Events can be
-- normal autocommands events (`:help autocmd-events`).
--
-- Then, because we use the `config` key, the configuration only runs
-- after the plugin has been loaded:
--  config = function() ... end

return {
  { -- Useful plugin to show you pending keybinds.
    'folke/which-key.nvim',
    event = 'VimEnter', -- Sets the loading event to 'VimEnter'
    config = function() -- This is the function that runs, AFTER loading
      require('which-key').setup {
        -- Document existing key chains
        spec = {
          { '<leader>b', group = '[B]reakpoint' },
          { '<leader>c', group = '[C]ode' },
          { '<leader>d', group = '[D]ocument' },
          { '<leader>g', group = '[G]it' },
          { '<leader>l', group = '[L]azy' },
          { '<leader>r', group = '[R]ename' },
          { '<leader>s', group = '[S]earch' },
          { '<leader>t', group = '[T]oggle' },
          { '<leader>w', group = '[W]orkspace' },
          -- Standalone mappings
          { '<leader>e', desc = 'Show diagnostic [E]rror messages' },
          { '<leader>q', desc = 'Open diagnostic [Q]uickfix list' },
          { '<leader>D', desc = 'Type [D]efinition' },
          { '<leader>/', desc = '[/] Fuzzily search in current buffer' },
          { '<leader><leader>', desc = '[ ] Find existing buffers' },
        },
      }
    end,
  },
}
-- vim: ts=2 sts=2 sw=2 et
