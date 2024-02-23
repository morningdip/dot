return {
  "akinsho/toggleterm.nvim",
  version = "*",
  cmd = { "ToggleTerm" },
  config = function()
    require("toggleterm").setup({
      size = function(term)
        if term.direction == "horizontal" then
          return 15
        elseif term.direction == "vertical" then
          return vim.o.columns * 0.4
        end
      end
    })
    function _G.set_terminal_keymaps()
      local opts = { buffer = 0 }
      vim.keymap.set('t', '<esc>', [[<C-\><C-n>]], opts)
      vim.keymap.set('t', 'jk', [[<C-\><C-n><Cmd>ToggleTerm<CR>]], opts)
    end

    vim.cmd("autocmd! TermOpen term://* lua set_terminal_keymaps()")
  end,
  keys = {
    { "<leader>t", "<Cmd>exe v:count1 . 'ToggleTerm direction=horizontal'<CR>" },
    { "<leader>T", "<Cmd>exe v:count1 . 'ToggleTerm direction=vertical'<CR>" },
    { "<C-t>", "<Cmd>exe v:count1 . 'ToggleTerm direction=float'<CR>" },
  },
}
