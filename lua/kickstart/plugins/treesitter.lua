return {
  { -- Highlight, edit, and navigate code
    'nvim-treesitter/nvim-treesitter',
    branch = 'main',
    lazy = false, -- main branch does not support lazy-loading
    build = ':TSUpdate',
    config = function()
      -- Install parsers
      require('nvim-treesitter').install { 'bash', 'c', 'html', 'lua', 'markdown', 'vim', 'vimdoc', 'cpp', 'python', 'nix', 'typescript', 'rust', 'go' }

      -- Enable treesitter highlighting per filetype, auto-installing parsers on demand
      local ts = require 'nvim-treesitter'
      local parsers = require 'nvim-treesitter.parsers'

      vim.api.nvim_create_autocmd('FileType', {
        callback = function()
          local ft = vim.bo.filetype
          if ft and ft ~= '' and parsers[ft] then
            ts.install { ft }
          end
          pcall(vim.treesitter.start)
        end,
      })

      -- Enable treesitter indentation per filetype
      vim.api.nvim_create_autocmd('FileType', {
        callback = function()
          vim.bo.indentexpr = "v:lua.require'nvim-treesitter'.indentexpr()"
        end,
      })
    end,
  },
}
-- vim: ts=2 sts=2 sw=2 et
