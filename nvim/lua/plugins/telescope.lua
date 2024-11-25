return {
	"nvim-telescope/telescope.nvim",
	tag = "0.1.8",
	dependencies = { "nvim-lua/plenary.nvim" },
	opts = function()
		defaults = {
			layout_config = {
				vertical = { width = 0.5 },
				-- other layout configuration here
			},
		}
		require("telescope").setup({
			-- the rest of your telescope config goes here
			extensions = {
				undo = {
					-- telescope-undo.nvim config, see below
				},
				-- other extensions:
				-- file_browser = { ... }
			},
		})
		require("telescope").load_extension("undo")
		 vim.keymap.set("n", "<leader>u", "<cmd>Telescope undo<cr>")
	end,
}
