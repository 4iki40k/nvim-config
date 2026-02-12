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
      vim.api.nvim_create_autocmd("VimEnter", {
	      callback = function()
		      vim.cmd("Neotree filesystem reveal left")
	      end,
      })
    end
  }
}
