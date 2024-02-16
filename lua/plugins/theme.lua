return {
	"catppuccin/nvim",
	name = "theme",
	lazy = false,
	config = function()
		require("catppuccin").setup({
			flavour = "macchiato",
      transparent_background = true
		})
		vim.cmd("colorscheme catppuccin")
	end,
}
