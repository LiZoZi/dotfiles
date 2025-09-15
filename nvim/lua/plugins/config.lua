local M = {}


local plugins = {
    -- editor
    require( 'plugins.editor.nvim-treesitter' ),
    require( 'plugins.editor.neo-tree' ),


    -- scheme
    require( 'plugins.theme.tokyonight' ),
}



function M.setup()
    require('lazy').setup( plugins )
end


return M
