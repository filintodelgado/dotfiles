return { 
	"catppuccin/nvim",
	name = "catppuccin",
	priority = 1000,
	config = function()
		require("catppuccin").setup({
			transparent_background = true,
			flavour = "mocha",
			integrations = {
				cmp = true,
				nvimtree = true,
			},
		})
	end,
}
