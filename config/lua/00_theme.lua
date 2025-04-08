require('kanagawa').setup({
    dimInactive = true,         -- dim inactive window `:h hl-NormalNC`
    theme = "wave",              -- Load "wave" theme
    background = {               -- map the value of 'background' option to a theme
        dark = "wave",           -- try "dragon" !
    },
})

-- setup must be called before loading
vim.cmd("colorscheme kanagawa")
