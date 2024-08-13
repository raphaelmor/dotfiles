return {
  {
    "neovim/nvim-lspconfig",
    opts = {
      servers = { ols = {} },
    },
  },
  {
    "nvim-treesitter/nvim-treesitter",
    opts = {
      ensure_installed = {
        "odin",
      },
    },
  },
  {
    "mfussenegger/nvim-dap",
    config = function()
      local dap = require("dap")
      dap.adapters.codelldb = {
        type = "server",
        host = "127.0.0.1",
        port = 1300, -- 💀 Use the port printed out or specified with `--port`
      }
      dap.configurations.odin = {
        {
          name = "Launch file",
          type = "codelldb",
          request = "launch",
          program = function()
            return vim.fn.input("Path to executable: ", vim.fn.getcwd() .. "/", "file")
          end,
          cwd = "${workspaceFolder}",
          stopOnEntry = false,
        },
      }
    end,
  },
}
