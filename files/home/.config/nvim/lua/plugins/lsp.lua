return {
  -- Language Server para comunicar erros, mostrar informações do código, hover da documentação, etc.

  -- Instalar LSPs com Mason
  {
    "williamboman/mason.nvim",

    config = function ()
      require ("mason").setup ()
    end
  },
  -- Comunica como uma ponte entre o Mason e Neovim e traz a garantia para instalação das linguagens
  {
    "williamboman/mason-lspconfig.nvim",

    config = function ()
      require ("mason-lspconfig").setup ({
        ensure_installed = { "lua_ls" }
      })
    end
  },
  -- Configurações do Neovim para o plugin
  {
    "neovim/nvim-lspconfig",

    config = function ()
      local lspconfig = require("lspconfig")
      lspconfig.lua_ls.setup({})
      vim.keymap.set("n", "K", vim.lsp.buf.hover, {}) -- abre um hover com texto sobre o comando
      vim.keymap.set({"n", "v"}, "<leader>ca", vim.lsp.buf.code_action, {}) -- mostra ações possíveis para correção
      -- vim.keymap.set("n", "gd", vim.lsp.buf.definition, {}) -- traz a definição
    end
  }
}
