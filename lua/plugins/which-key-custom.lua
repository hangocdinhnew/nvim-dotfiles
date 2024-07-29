return {
  "folke/which-key.nvim",
  opts = {
    -- nothing here
  },
  keys = {
    {
      "<leader>\\",
      function()
        vim.cmd("Ex")
      end,
      desc = "Open a tree",
    },
  },
}
