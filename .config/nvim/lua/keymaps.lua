local map = vim.keymap.set
local user_command = vim.api.nvim_create_user_command

-- Base Settings
-- User Command
user_command('T', 'sp | wincmd j | resize 16 | terminal <args>', {
  nargs = '*',
})

-- Normal mode
map('n', '<Esc>', '<cmd>nohlsearch<CR>')
map('n', '<leader>q', vim.diagnostic.setloclist, {
  desc = 'Open diagnostic [Q]uickfix list',
})
map('n', '<C-h>', '<C-w><C-h>', {
  desc = 'Move focus to the left window',
  noremap = true,
})
map('n', '<C-l>', '<C-w><C-l>', {
  desc = 'Move focus to the right window',
  noremap = true,
})
map('n', '<C-j>', '<C-w><C-j>', {
  desc = 'Move focus to the lower window',
  noremap = true,
})
map('n', '<C-k>', '<C-w><C-k>', {
  desc = 'Move focus to  the upper window',
  noremap = true,
})
map('n', 'T', '<cmd>T<CR>', {
  desc = 'Start terminal mode',
  noremap = true,
})

-- Terminal mode
map('t', '<Esc><Esc>', '<C-\\><C-n>', {
  desc = 'Exit terminal mode',
  silent = true,
})
map('t', '<leader>q', '<C-\\><C-n>', {
  desc = 'Exit terminal mode',
  silent = true,
})

-- Plugins
-- nvim tree
map('n', '<C-e>', ':Neotree filesystem reveal toggle left<CR>', {
  desc = 'Toggle Nvim tree',
  silent = true,
})

-- Telescope
-- local builtin = require 'telescope.builtin'
-- map('n', '<leader>ff', builtin.find_files, {
--   desc = 'Telescope find Files',
-- })
-- map('n', '<leader>fg', builtin.live_grep, {
--   desc = 'Telescope live grep',
-- })
-- map('n', '<leader>fb', builtin.buffers, {
--   desc = 'Telescope buffers',
-- })
-- map('n', '<leader>fh', builtin.help_tags, {
--   desc = 'Telescope help tags',
-- })
