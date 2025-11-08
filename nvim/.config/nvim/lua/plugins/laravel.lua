return {
  {
    "adibhanna/laravel.nvim",
    -- dir = "/Volumes/Work/Code/nvim/laravel.nvim",
    -- dev = true,
    ft = { "php", "blade" },
    dependencies = {
      "folke/snacks.nvim", -- Optional: for enhanced UI
    },
    config = function()
      require("laravel").setup({
        notifications = false,
        debug = false,
        -- keymaps = false,
      })
    end,
  },

  {
    "adibhanna/phprefactoring.nvim",
    dependencies = {
      "MunifTanjim/nui.nvim",
    },
    ft = "php",
    config = function()
      require("phprefactoring").setup()
    end,
  },
  -- {
  --   vim.lsp.enable("laravel_ls"),
  -- },
}
