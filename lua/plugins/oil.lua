return {
	"stevearc/oil.nvim",
	opts = {},
	config = function()
		require("oil").setup({
			view_options = {
				show_hidden = true,
			},
		})
	end,
	-- Optional dependencies
	dependencies = { { "echasnovski/mini.icons", opts = {} } },
}