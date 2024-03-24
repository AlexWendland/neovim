return {
  {
    'nvim-tree/nvim-tree.lua',
    config = function()
      local function my_on_attach(bufnr)
        local api = require 'nvim-tree.api'

        local function opts(desc)
          return { desc = 'nvim-tree: ' .. desc, buffer = bufnr, noremap = true, silent = true, nowait = true }
        end

        -- default mappings
        api.config.mappings.default_on_attach(bufnr)

        -- custom mappings
        vim.keymap.set('n', '<C-t>', api.tree.change_root_to_parent, opts 'Up')
        vim.keymap.set('n', '?', api.tree.toggle_help, opts 'Help')
      end

      local gheight = vim.api.nvim_list_uis()[1].height
      local gwidth = vim.api.nvim_list_uis()[1].width
      local width = 60
      local height = 40

      require('nvim-tree').setup {
        on_attach = my_on_attach,
        view = {
          relativenumber = true,
          float = {
            enable = true,
            open_win_config = {
              relative = 'editor',
              width = width,
              height = height,
              row = (gheight - height) * 0.5,
              col = (gwidth - width) * 0.5,
            },
          },
        },
      }
      local api = require 'nvim-tree.api'
      vim.keymap.set('n', '<leader>tt', api.tree.toggle, { desc = '[T]oggle [T]ree' })
    end,
  },
}

-- vim: ts=2 sts=2 sw=2 et
