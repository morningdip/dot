return {
  "rmagatti/goto-preview",
  dependencies = "nvim-telescope/telescope.nvim",
  config = function()
    require("goto-preview").setup({
      width = 120,
      height = 15,
      default_mappings = true,
      debug = false,
      opacity = nil,
      resizing_mappings = true,
      post_open_hook = nil,
    })
  end
}
