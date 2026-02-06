return {
  {
    "nvim-neo-tree/neo-tree.nvim",
    branch = "v3.x",
    dependencies = {
      "MunifTanjim/nui.nvim",
      "nvim-tree/nvim-web-devicons", -- optional, but recommended
    },
    lazy = false, -- neo-tree will laziiily load itself
    config = function()
      vim.keymap.set('n', '<leader>t', ':Neotree filesystem reveal left<CR>', {})
    end
  }
}
