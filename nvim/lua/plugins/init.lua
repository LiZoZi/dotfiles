local M = {}


function M.config()

    config = {
        require('plugins.UI.nvim-treesitter'),

        --require('plugins.editor.neo-tree')
    }

    return config
end


function M.setup()
    require('lazy').setup( M.config() )
end


return M
