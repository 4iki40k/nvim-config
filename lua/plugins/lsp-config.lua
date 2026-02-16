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
        ensure_installed = {"lua_ls", "asm_lsp", "clangd", "neocmake", "qmlls", "jedi_language_server"}
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
      vim.lsp.config("asm_lsp", {
        root_dir = vim.fs.root(0, { ".git", ".asm-lsp.toml", "Makefile" }),
--       settings = {
--         ['asm-lsp'] = {
--           assembler = "nasm",
--           instruction_set = "x86",
--         }
--       }
      })
      vim.lsp.config("clangd", {})
      vim.lsp.config("neocmake", {})
      vim.lsp.config("qmlls", {})
      vim.lsp.config("jedi_language_server", {})

      vim.lsp.enable("lua_ls", "clangd", "neocmake", "qmlls", "jedi_language_server")

      vim.keymap.set('n', 'K', vim.lsp.buf.hover, {})
      vim.keymap.set('n', 'gd', vim.lsp.buf.definition, {})
      vim.keymap.set({'n', 'v'}, '<leader>ca', vim.lsp.buf.code_action, {})
      vim.keymap.set('n', '<leader>=', vim.lsp.buf.format, {})
    end
  }
}
