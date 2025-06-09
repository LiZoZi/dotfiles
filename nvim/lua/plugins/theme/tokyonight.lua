local M = {
    "folke/tokyonight.nvim",
    lazy = false,
    priority = 1000, -- make sure to load this before all the other start plugins
    transparent = true, -- Enable this to disable setting the background color
    terminal_colors = false, -- Configure the colors used when opening a ':terminal' in neovim

    style = "day",
    styles = {
        sidebars = "transparent", -- style for sidebars, see below
        floats = "transparent",  -- style for floating windows
    },


    config = function()
        vim.cmd( [[colorscheme tokyonight]] )
    end,
}


return M
