vim.cmd("autocmd!")

vim.scriptencoding = "utf-8"
vim.wo.number = true

-- Open hoge file 
vim.api.nvim_create_user_command("Note", function(opts)
    vim.cmd("e" .. "~/_/note/note.markdown")
end, {})