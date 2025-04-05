return {
	-- Tema do Catppuccin
	"catppuccin/nvim",
  name = "catppuccin",
  priority = 1000,

  config = function()
    vim.cmd.colorscheme "catppuccin-macchiato"
    -- pode-se usar: catppuccin-latte, catppuccin-frappe, catppuccin-macchiato (melhor), catppuccin-mocha
  end
}
