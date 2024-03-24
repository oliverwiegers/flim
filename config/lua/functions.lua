-- Open fuzzy file finder if not a file is given at startup.
if vim.fn.argc() == 0 then
    vim.defer_fn(
        function ()
            vim.cmd('Files')
        end,
        0
    )
end

-- Custom user command
vim.api.nvim_create_user_command('Grbi',
  'G commit -am test|G rebase -i main|G push -f'
)
