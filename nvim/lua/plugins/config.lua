local M = {}


function M.config()

    local plugins = {

        -- editor
        require( 'plugins.editor.nvim-treesitter' ),

        require( 'plugins.editor.neo-tree' ),


        -- scheme
        require( 'plugins.theme.tokyonight' ),
    }

    return plugins
end


function M.setup()
    require('lazy').setup( M.config() )
end


return M
