return {
  "RRethy/vim-illuminate",
  event = "BufReadPost",
  config = function()
    require("illuminate").configure({
      delay = 200,
      filetypes_denylist = {
        "NvimTree",
        "toggleterm",
        "TelescopePrompt",
      },
    })
  end,
  keys = {
    {
      "]r",
      function()
        require("illuminate").goto_next_reference(false)
      end,
      desc = "illuminate Next Reference",
    },
    {
      "[r",
      function()
        require("illuminate").goto_prev_reference(false)
      end,
      desc = "illuminate Prev Reference",
    },
  },
}
