return {
  "nvim-tree/nvim-tree.lua",
  dependencies = { "nvim-tree/nvim-web-devicons" },
  opts = {
    disable_netrw = true,
    hijack_netrw = true,
    respect_buf_cwd = true,
    sync_root_with_cwd = true,
    filters = {
      dotfiles = false,
      git_clean = false,
      no_buffer = false,
      custom = { ".DS_Store" }
    },
  },
  keys = {
    { "<leader>e", "<cmd>NvimTreeToggle<CR>" },
  },
}
