local M = {}


function M.default()
    local default_options = {
        -- use system clipboard
    	clipboard = 'unnamedplus',

    	-- enable the mouse to be used in nvim
    	mouse = 'a',
    
    	-- file reading and writing 
    	autoread   = true,    -- auto reload file when it was been changed
    	autowrite  = true,
    	undofile   = true,
    	undolevels = 1000,
    
    	-- backup files
        backup   = false,
    	swapfile = false,
            
    	--encoding
    	encoding      = 'utf-8',
    	fileencodings = {'utf-8', 'gb18030', 'gbk', },    -- when opening a file, try these encoding in turn to display it correctly
    	fileencoding  = 'utf-8',    -- the encoding to use when saving a file
    
    	-- indent
    	autoindent  = true,
    	smartindent = true,
    	tabstop     = 4,
    	softtabstop = 4,
    	shiftwidth  = 4,       -- size of an indent
    	expandtab   = true,    -- use spaces instead of tabs
    }


    for k, v in pairs(default_options) do
        vim.opt[k] = v
    end

end


function M.setup()
    M.default()
end


return M
