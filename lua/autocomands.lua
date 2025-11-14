-- [[ Basic Autocommands ]]
--  See `:help lua-guide-autocommands`

-- Highlight when yanking (copying) text
--  Try it with `yap` in normal mode
--  See `:help vim.highlight.on_yank()`
vim.api.nvim_create_autocmd('TextYankPost', {
  desc = 'Highlight when yanking (copying) text',
  group = vim.api.nvim_create_augroup('kickstart-highlight-yank', { clear = true }),
  callback = function()
    vim.highlight.on_yank()
  end,
})

-- Automatically convert tabs to spaces on save
--  This runs before conform.nvim formatters
vim.api.nvim_create_autocmd('BufWritePre', {
  desc = 'Convert tabs to spaces before saving',
  group = vim.api.nvim_create_augroup('retab-on-save', { clear = true }),
  callback = function()
    vim.cmd('retab')
  end,
})
-- vim: ts=2 sts=2 sw=2 et

