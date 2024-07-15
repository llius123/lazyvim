return {
  "nvim-neo-tree/neo-tree.nvim",
  cmd = "Neotree",
  keys = {
    {
      "<leader>tf",
      ":Neotree focus<CR>",
      desc = "Focus Neotree",
    },
    {
      "<leader>th",
      ":Neotree close<CR>",
      desc = "Close Neotree",
    },
  },
  config = function()
    require("neo-tree").setup({
      window = {
        position = "right",
      },
    })
  end,
}
