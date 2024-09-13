return {
  "nvim-neo-tree/neo-tree.nvim",
  cmd = "Neotree",
  keys = function()
    local find_buffer_by_type = function(type)
      for _, buf in ipairs(vim.api.nvim_list_bufs()) do
        local ft = vim.api.nvim_buf_get_option(buf, "filetype")
        if ft == type then
          return buf
        end
      end
      return -1
    end
    local toggle_neotree = function(toggle_command)
      if find_buffer_by_type("neo-tree") > 0 then
        require("neo-tree.command").execute({ action = "close" })
      else
        toggle_command()
      end
    end
    return {
      {
        "<leader>e",
        function()
          toggle_neotree(function()
            require("neo-tree.command").execute({ action = "focus", reveal = true, dir = vim.uv.cwd() })
          end)
        end,
        desc = "Toggle Explorer (cwd)",
      },
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
    }
  end,
  config = function()
    require("neo-tree").setup({
      window = {
        position = "right",
      },
    })
  end,
}
