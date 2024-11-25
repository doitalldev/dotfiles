return {
  "debugloop/telescope-undo.nvim",
  lazy = true,
  event = "VeryLazy",
  keys = {
    { -- lazy style key map
      "<leader>u",
      "<cmd>telescope undo<cr>",
      desc = "undo history",
    },
  },
  opts = {
    -- don't use `defaults = { }` here, do this in the main telescope spec
    extensions = {
      undo = {
        -- telescope-undo.nvim config, see below
      },
      -- no other extensions here, they can have their own spec too
    },
  },
  config = function(_, opts)
    -- calling telescope's setup from multiple specs does not hurt, it will happily merge the
    -- configs for us. we won't use data, as everything is in it's own namespace (telescope
    -- defaults, as well as each extension).
    require("telescope").setup(opts)
    require("telescope").load_extension("undo")
  end,
}

