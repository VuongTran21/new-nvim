return {
	"catppuccin/nvim",
	lazy = false,
	prioty = 999,
	config = function()
		vim.cmd("colorscheme catppuccin-latte")
		require("catppuccin").setup({
      flavour = "latte"
    })
	end,
}
