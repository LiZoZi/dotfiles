local M = {}


local map = vim.keymap.set
local opts = { silent = true }


function M.leaderset()
    vim.g.mapleader = ' '
    vim.g.mapcoleader = ','
end


function M.windows()
    -- windows split: alt + arrow keys
    map("n", "<A-Down>",  ":split  | wincmd j <CR>", opts)    -- split vertically and focus on the loewr window
    map("n", "<A-Up>",    ":split  | wincmd k <CR>", opts)    -- split vertically and focus on the upper window
    map("n", "<A-Left>",  ":vsplit | wincmd h <CR>", opts)    -- split horizontally and focus on the left window
    map("n", "<A-Eight>", ":vsplit | wincmd l <CR>", opts)    -- split horizontally and focus on the right window

    -- open a terminal and auto into insert mode: <leader> + t + hjkl
    map("n", "<leader>tj", ":split  | wincmd j | term <CR> :startinsert <CR>", opts)    
    map("n", "<leader>tk", ":split  | wincmd k | term <CR> :startinsert <CR>", opts)    
    map("n", "<leader>th", ":vsplit | wincmd h | term <CR> :startinsert <CR>", opts)    
    map("n", "<leader>tl", ":vsplit | wincmd l | term <CR> :startinsert <CR>", opts)    

    -- resizing window: ctrl + arrow keys 
    map("n", "<C-down>",  ":resize -5<CR>",          opts)    -- increase height
    map("n", "<C-up>",    ":resize +5<CR>",          opts)    -- decrease height
    map("n", "<C-right>", ":vertical resize +5<CR>", opts)    -- increase width
    map("n", "<C-left>",  ":vertical resize -5<CR>", opts)    -- decrease width
    
    -- moving between windows: ctrl + hjkl
    map("n", "<C-j>", "<C-w>j", opts)    -- jump to the lower window 
    map("n", "<C-k>", "<C-w>k", opts)    -- jump to the upper window
    map("n", "<C-l>", "<C-w>l", opts)    -- jump to the right window
    map("n", "<C-h>", "<C-w>h", opts)    -- jump to the left  window

    -- open a file by split the window: <leader> + s + hjkl
    map("n", "<leader>sj", function() 
        vim.ui.input({ prompt = 'Enter file name: ' }, function(input)
            if input and input ~= "" then
                vim.cmd('split | wincmd j | edit ' .. input)
            end
        end)
    end, opts)
    
    map("n", "<leader>sk", function() 
        vim.ui.input({ prompt = 'Enter file name: ' }, function(input)
            if input and input ~= "" then
                vim.cmd('split | wincmd k | edit ' .. input)
            end
        end)
    end, opts)

    map("n", "<leader>sh", function() 
        vim.ui.input({ prompt = 'Enter file name: ' }, function(input)
            if input and input ~= "" then
                vim.cmd('vsplit | wincmd h | edit ' .. input)
            end
        end)
    end, opts)

    map("n", "<leader>sl", function() 
        vim.ui.input({ prompt = 'Enter file name: ' }, function(input)
            if input and input ~= "" then
                vim.cmd('vsplit | wincmd l | edit ' .. input)
            end
        end)
    end, opts)

    -- close current window
    map({"n", "v"}, "<leader>q", ":q<CR>", opts)
    map({"n", "v"}, "<leader>w", ":wq<CR>", opts)
    map("t", "<leader>q", "<C-\\><C-N>:q<CR>", opts)
    
    --map("n", "<leader>tt", ":Neotree <CR>", opts)
end


function M.lines()
    -- Move lines: Alt + arrow keys
    map("n", "<A-j>", "<cmd>execute 'move .+' . v:count1<cr>==", opts)
    map("n", "<A-k>", "<cmd>execute 'move .-' . (v:count1 + 1)<cr>==", opts)
    
    map("v", "<A-j>", ":<C-u>execute \"'<, '>move '<+\" . v:count1<cr>gv=gv", opts)
    map("v", "<A-k>", ":<C-u>execute \"'<, '>move '<-\" . (v:count1 + 1)<cr>gv=gv", opts)

    map("i", "<A-j>", "<esc><cmd>m .+1<cr>==gi", opts)
    map("i", "<A-k>", "<esc><cmd>m .-2<cr>==gi", opts)
end


function M.savefile()
    -- save files
    map({"n", "s", "x"}, "<C-s>", ":w<cr><esc>")
    map("i", "<C-s>", "<esc>:w<cr>a")
end


function M.indent()
    -- use <leader> + [ or ] at "n" and "v" mode
    map("n", "<leader>[", "<<", opts)
    map("n", "<leader>]", ">>", opts)

    map("v", "<leader>[", "<gv", opts)
    map("v", "<leader>]", ">gv", opts)

    -- use <tab> and <shift-tab> at "i" mode
    map("i", "<Tab>", "<C-t>", opts)
    map("i", "<Shift-Tab>", "<C-d>", opts)
end


function M.jumpto()
    map({"n", "v"}, "<leader>j", "G",  opts)    -- jump to the first line of the file
    map({"n", "v"}, "<leader>k", "gg", opts)    -- jump to the end of the file
    map({"n", "v"}, "<leader>h", "0",  opts)    -- jump to the start of the current line
    map({"n", "v"}, "<leader>l", "$",  opts)    -- jump to the end of the current line


    map({"n", "v"}, "J", "5j", opts)
    map({"n", "v"}, "K", "5k", opts)
    map({"n", "v"}, "H", "5h", opts)
    map({"n", "v"}, "L", "5l", opts)
end


function M.vim_terminal()
    map( "t", "<Esc>", "<C-\\><C-n>", opts )
end


function M.clipboard()
    -- copy to system clipboard
    map( 'v', 'y', ':w !clip.exe<cr><cr>', opts )
    map( 'n', 'y', ':.w !clip.exe<cr><cr>', opts )

    -- paste from system clipboard
    --map( {'n', 'v'}, 'p', '"+p', opts )
end


function M.setup()
    M.leaderset()
    M.windows()
    M.lines()
    M.savefile()
    M.indent()
    M.jumpto()
    M.vim_terminal()
    M.clipboard()
end


return M


