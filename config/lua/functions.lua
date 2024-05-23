-- Open fuzzy file finder if not a file is given at startup.
if vim.fn.argc() == 0 then
    vim.defer_fn(
        function ()
            vim.cmd('Telescope find_files')
        end,
        0
    )
end
