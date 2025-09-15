local M = {}

function M.theme()
    local basic_theme = {
        -- set number lines
        number = true,
        relativenumber = true,

        -- cursorline
        cursorline = true,

        -- mode hint
        showmode = false,    -- don't show "--INSERT--"

        -- search highlight
        hlsearch   = true,
        incsearch  = true,
        ignorecase = true,    -- ignore case in searches by default
        smartcase  = true,    -- but make it case sensitive if an uppercase is entered
    }

    for k, v in pairs(basic_theme) do
        vim.opt[k] = v
    end
end


function M.backgroud()
    vim.cmd('highlight Normal       ctermbg=NONE guibg=NONE')
    vim.cmd('highlight NormalNC     ctermbg=NONE guibg=NONE')
    vim.cmd('highlight NoText       ctermbg=NONE guibg=NONE')
    vim.cmd('highlight LineNr       ctermbg=NONE guibg=NONE')
    vim.cmd('highlight CursorLineNr ctermbg=NONE guibg=NONE')
    vim.cmd('highlight StatusLine   ctermbg=NONE guibg=NONE')
    vim.cmd('highlight StatusLineNc ctermbg=NONE guibg=NONE')
    vim.cmd('highlight VertSplit    ctermbg=NONE guibg=NONE')

    -- Neotree.nvim
    vim.cmd('highlight NeoTreeNormal       ctermbg=NONE guibg=NONE')
    vim.cmd('highlight NeoTreeNormalNC     ctermbg=NONE guibg=NONE')
    vim.cmd('highlight NeoTreeSignColumn   ctermbg=NONE guibg=NONE')
    vim.cmd('highlight NeoTreeStatusLine   ctermbg=NONE guibg=NONE')
    vim.cmd('highlight NeoTreeStatusLineNC ctermbg=NONE guibg=NONE')
    vim.cmd('highlight NeoTreeVertSplit    ctermbg=NONE guibg=NONE')
    vim.cmd('highlight NeoTreeWinSeparator ctermbg=NONE guibg=NONE')
    vim.cmd('highlight NeoTreeEndOfBuffer  ctermbg=NONE guibg=NONE')
end


function M.setup()
    M.theme()
    M.backgroud()
end


return M
