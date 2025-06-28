local keymaps = {
    map = vim.keymap.set,
    opts = { silent = true },

    map("n", "<leader>tt", ":Neotree", opts)
}


local function theme()
end



local M = {
    "nvim-neo-tree/neo-tree.nvim", 
    branch = "v3.x",
    dependencies = {
        "nvim-lua/plenary.nvim",
        "nvim-tree/nvim-web-devicons",
        "MunifTanjim/nui.nvim",
    },
    lazy = false,

    config = function()
        keymaps
    end
}

 

return M 
