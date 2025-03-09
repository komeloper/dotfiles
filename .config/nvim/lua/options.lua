local opt = vim.opt

-- マウス操作
opt.mouse = 'a'
opt.showmode = false

-- 行番号
opt.number = true
opt.relativenumber = false

-- tab / indent
opt.tabstop = 2
opt.shiftwidth = 2
opt.expandtab = true
opt.breakindent = true

-- 検索
opt.ignorecase = true
opt.smartcase = true

opt.undofile = true
opt.signcolumn = 'yes'
opt.updatetime = 250
opt.timeoutlen = 300
opt.splitright = true
opt.splitbelow = true
opt.list = true
opt.listchars = { tab = '» ', trail = '·', nbsp = '␣' }
opt.inccommand = 'split'
opt.cursorline = true
opt.scrolloff = 10

-- clipboardの有効化
vim.schedule(function()
  vim.opt.clipboard = 'unnamedplus'
end)
