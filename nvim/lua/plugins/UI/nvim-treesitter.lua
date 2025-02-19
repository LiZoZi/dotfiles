local M = {
    "nvim-treesitter/nvim-treesitter",
    build = ":TSUpdate",
    languages = {"c", "lua", "vim", "vimdoc", "query", "elixir", "heex", "javascript", 
                 "html", "python", "rust", "typescript", "bash", "markdown", "zig", 
                 "matlab", "go"},

    config = function()
        local configs = require('nvim-treesitter.configs')

        configs.setup({
            ensure_installed = languages,
            sync_install = false,
            highlight = { enable = true },
            indent = { enable = true },
        })
    end
}

return M

