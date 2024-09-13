return {
  "nvim-neotest/neotest",
  dependencies = {
    "nvim-neotest/nvim-nio",
    "nvim-lua/plenary.nvim",
    "antoinemadec/FixCursorHold.nvim",
    "nvim-treesitter/nvim-treesitter",
    "haydenmeade/neotest-jest",
  },
  keys = {
    -- {
    --   "<leader>tr",
    --   function()
    --     require("neotest").run.run()
    --   end,
    --   desc = "Run close test",
    -- },
    {
      "<leader>tl",
      function()
        require("neotest").run.run_last()
      end,
      desc = "Run Last Test",
    },
    {
      "<leader>tL",
      function()
        require("neotest").run.run_last({ strategy = "dap" })
      end,
      desc = "Debug Last Test",
    },
    {
      "<leader>tw",
      "<cmd>lua require('neotest').run.run({ jestCommand = 'jest --watch ' })<cr>",
      desc = "Run Watch",
    },
  },
  -- opts = function(_, opts)
  --   table.insert(
  --     opts.adapters,
  --     require("neotest-jest")({
  --       jestCommand = "npm test --",
  --       jestConfigFile = "jest.config.js",
  --       env = { CI = true },
  --       cwd = function()
  --         return vim.fn.getcwd()
  --       end,
  --     })
  --   )
  --   table.insert(opts.adapters, require("neotest-vitest"))
  -- end,
  opts = {
    adapters = {
      ["neotest-jest"] = {
        jestCommand = "npm test --",
        jestConfigFile = "jest.config.js",
        env = { CI = true },
        cwd = function()
          return vim.fn.getcwd()
        end,
      },
    },
  },
}
