return {
  "ibhagwan/fzf-lua",
  cmd = { "FzfLua" },
  key = {
    {
      "<leader>ff",
      function()
        require("fzf-lua").files()
      end,
      desc = "Files"
    },
    {
      "<leader>fb",
      function()
        require("fzf-lua").buffers()
      end,
      desc = "Buffers"
    },
    {
      "<leader>fo",
      function()
        require("fzf-lua").oldfiles()
      end,
      desc = "Old Files"
    },
    {
      "<leader>fm",
      function()
        require("fzf-lua").marks()
      end,
      desc = "Marks"
    },
    {
      "<leader>fg",
      function()
        require("fzf-lua").live_grep_native()
      end,
      desc = "Live Grep"
    },
    {
      "<leader>fj",
      function()
        require("fzf-lua").jump()
      end,
      desc = "Jumplist"
    }
  }
}
