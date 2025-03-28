return {
  -- Adicionando o Neotree para melhor visualização dos arquivos
  "nvim-neo-tree/neo-tree.nvim",
  branch = "v3.x",
  dependencies = {
    "nvim-lua/plenary.nvim",
    "nvim-tree/nvim-web-devicons",
    "MunifTanjim/nui.nvim",
  },

  config = function ()
    vim.keymap.set("n", "<C-n>", ":Neotree filesystem reveal left<CR>", {}) -- Abrir Neotree (ctrl + n)
    vim.keymap.set("n", "<leader>n", ":Neotree filesystem action=close<CR>", {}) -- Fechar Neotree (space + n)
  end
}
