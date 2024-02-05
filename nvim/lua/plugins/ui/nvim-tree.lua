return {
  "nvim-tree/nvim-tree.lua",
  enabled = true,
  dependencies = { "nvim-tree/nvim-web-devicons" },
  opts = {
    disable_netrw = true,
    hijack_netrw = true,
    respect_buf_cwd = true,
    sync_root_with_cwd = true,
  },
  keys = {
    { "<leader>e", "<cmd>NvimTreeToggle<CR>" },
  },
}
