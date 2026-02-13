return {
  {
    "mason-org/mason.nvim",
    config = function()
      require("mason").setup()
    end
  },
  {
    "mason-org/mason-lspconfig.nvim",
    config = function()
      require("mason-lspconfig").setup({
        ensure_installed = {"lua_ls", "clangd", "cmake", "qmlls", "jedi_language_server"}
      })
    end
  },
  {
    "neovim/nvim-lspconfig",
    config = function()
      vim.diagnostic.config({
        virtual_text = true,
        signs = true,
        underline = false,
        update_in_insert = false,
        severity_sort = true,
      })

      vim.lsp.config("lua_ls", {})
      vim.lsp.config("clangd", {})
--    vim.lsp.config("cmake", {})
      vim.lsp.config("qmlls", {})
      vim.lsp.config("jedi_language_server", {})

      vim.lsp.enable("lua_ls", "clangd", --[["cmake", ]]"qmlls", "jedi_language_server")

      vim.keymap.set('n', 'K', vim.lsp.buf.hover, {})
      vim.keymap.set('n', 'gd', vim.lsp.buf.definition, {})
      vim.keymap.set({'n', 'v'}, '<leader>ca', vim.lsp.buf.code_action, {})
    end
  }
}
