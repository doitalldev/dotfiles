return {
	"nvim-telescope/telescope.nvim",
	tag = "0.1.8",
	dependencies = {
		"nvim-lua/plenary.nvim",
		"nvim-telescope/telescope-undo.nvim",
		{ "nvim-telescope/telescope-fzf-native.nvim", build = "make" },
	},
	opts = function()
		require("telescope").setup({
			defaults = {
				layout_strategy = "bottom_pane",
			},
			extensions = {
				fzf = {},
				undo = {},
				-- other extensions:
				-- file_browser = { ... }
			},
		})
		require("telescope").load_extension("fzf")
		require("telescope").load_extension("undo")
		vim.keymap.set("n", "<leader>u", "<cmd>Telescope undo<cr>")
	end,
}
