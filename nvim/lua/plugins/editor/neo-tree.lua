local M = {
    "nvim-neo-tree/neo-tree.nvim", 
    branch = "v3.x",
    dependencies = {
        "nvim-lua/plenary.nvim",
        "nvim-tree/nvim-web-devicons",
        "MunifTanjim/nui.nvim",
    },

    lazy = false,
}


local map = vim.keymap.set
local opts = { silent = false }


function M.keymaps()
    map("n", "<leader>tt", ":Neotree <CR>", opts)
end


function M.theme()
end

return M 
