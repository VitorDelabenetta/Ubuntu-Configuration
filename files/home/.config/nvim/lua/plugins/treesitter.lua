return {
  -- Treesitter para highlight do código e identação
  "nvim-treesitter/nvim-treesitter",
  build = ":TSUpdate",

  config = function ()
    local config = require("nvim-treesitter.configs")
    config.setup ({
      ensure_installed = { "lua", "javascript", "html", "java" },
      highlight = { enable = true },
      indent = { enable = true },
    })
  end
}
