local augroup = vim.api.nvim_create_augroup
local autocmd = vim.api.nvim_create_autocmd

autocmd('TextYankPost', {
  desc = 'Highlight when yanking (copying) text',
  group = augroup('my-custom', { clear = true }),
  callback = function()
    vim.highlight.on_yank()
  end,
})

autocmd('TermOpen', {
  desc = 'Terminal mode start insert',
  group = augroup('my-custom', { clear = true }),
  command = 'startinsert',
})

autocmd('TermOpen', {
  desc = 'Terminal mode start insert',
  group = augroup('my-custom', { clear = true }),
  command = 'setlocal norelativenumber',
})

autocmd('TermOpen', {
  desc = 'Terminal mode start insert',
  group = augroup('my-custom', { clear = true }),
  command = 'setlocal nonumber',
})
