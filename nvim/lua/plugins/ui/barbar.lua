return {
  "romgrk/barbar.nvim",
  dependencies = {
    "lewis6991/gitsigns.nvim",
    "nvim-tree/nvim-web-devicons",
  },
  opts = {
    animation = true,
    sidebar_filetypes = {
      NvimTree = true,
    }
  },
  event = "BufEnter",
  --event = "BufAdd",
  keys = {
    -- Move to previous or next
    { "<A-,>", "<Cmd>BufferPrevious<CR>" },
    { "<A-.>", "<Cmd>BufferNext<CR>" },
    -- Re-order to previous or next
    { "<A-<>", "<Cmd>BufferMovePrevious<CR>" },
    { "<A->>", "<Cmd>BufferMoveNext<CR>" },
    -- Goto buffer in position
    { "<A-1>", "<Cmd>BufferGoto 1<CR>" },
    { "<A-2>", "<Cmd>BufferGoto 2<CR>" },
    { "<A-3>", "<Cmd>BufferGoto 3<CR>" },
    { "<A-4>", "<Cmd>BufferGoto 4<CR>" },
    { "<A-5>", "<Cmd>BufferGoto 5<CR>" },
    { "<A-6>", "<Cmd>BufferGoto 6<CR>" },
    { "<A-7>", "<Cmd>BufferGoto 7<CR>" },
    { "<A-8>", "<Cmd>BufferGoto 8<CR>" },
    { "<A-9>", "<Cmd>BufferGoto 9<CR>" },
    { "<A-0>", "<Cmd>BufferGoto 0<CR>" },
    -- Pin or unpin buffer
    { "<A-p>", "<Cmd>BufferPin<CR>" },
    -- Close buffer
    { "<A-c>", "<Cmd>BufferClose<CR>" },
    { "<A-C>", "<Cmd>BufferCloseAllButCurrentOrPinned<CR>" },
    -- Magic buffer picking mode
    { "<C-p>", "<Cmd>BufferPick<CR>" },
  }
}
