return {
	-- Tema do Catppuccin
	"catppuccin/nvim",
  name = "catppuccin",
  priority = 1000,

  config = function()
    vim.cmd.colorscheme "catppuccin-macchiato"
    -- pode-se usar mocha, frappe, latte ou simplesmente "catppuccin"
  end
}
