local function change_nvim_tree_dir()
  local nvim_tree = require("nvim-tree")
  nvim_tree.change_dir(vim.fn.getcwd())
end
return {
  "rmagatti/auto-session",
  lazy = false,
  opts = {
    log_level = "error",
    auto_session_use_git_branch = true,
    -- post_restore_cmds = { change_nvim_tree_dir, "NvimTreeOpen" },
    pre_save_cmds = { "NvimTreeClose" },
  }
}

