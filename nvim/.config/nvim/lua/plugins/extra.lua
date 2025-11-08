return {
  -- Autotags
  {
    "windwp/nvim-ts-autotag",
    opts = {},
  },

  -- comments
  {
    "numToStr/Comment.nvim",
    opts = {},
    lazy = false,
  },
  -- useful when there are embedded languages in certain types of files (e.g. Vue or React)
  { "joosepalviste/nvim-ts-context-commentstring", lazy = true },

  -- Neovim plugin to improve the default vim.ui interfaces
  {
    "stevearc/dressing.nvim",
    dependencies = { "MunifTanjim/nui.nvim" },
    opts = {},
    config = function()
      require("dressing").setup()
    end,
  },

  -- Neovim notifications and LSP progress messages
  {
    "j-hui/fidget.nvim",
  },

  -- find and replace
  {
    "windwp/nvim-spectre",
    enabled = true,
    event = "BufRead",
    keys = {
      {
        "<leader>Rr",
        function()
          require("spectre").open()
        end,
        desc = "Replace",
      },
      {
        "<leader>Rw",
        function()
          require("spectre").open_visual({ select_word = true })
        end,
        desc = "Replace Word",
      },
      {
        "<leader>Rf",
        function()
          require("spectre").open_file_search()
        end,
        desc = "Replace Buffer",
      },
    },
  },

  -- Heuristically set buffer options
  {
    "tpope/vim-sleuth",
  },

  {
    {
      "folke/lazydev.nvim",
      ft = "lua", -- only load on lua files
      opts = {
        library = {
          -- See the configuration section for more details
          -- Load luvit types when the `vim.uv` word is found
          { path = "${3rd}/luv/library", words = { "vim%.uv" } },
        },
      },
    },
    -- {
    --   "saghen/blink.cmp",
    --   opts = {
    --     sources = {
    --       -- add lazydev to your completion providers
    --       default = { "lazydev", "lsp", "path", "snippets", "buffer" },
    --       providers = {
    --         lazydev = {
    --           name = "LazyDev",
    --           module = "lazydev.integrations.blink",
    --           -- make lazydev completions top priority (see `:h blink.cmp`)
    --           score_offset = 100,
    --         },
    --       },
    --     },
    --   },
    -- }
  },

  -- editor config support
  {
    "editorconfig/editorconfig-vim",
  },

  {
    "folke/flash.nvim",
    event = "VeryLazy",
    ---@type Flash.Config
    opts = {},
    -- stylua: ignore
    keys = {
      { "s",     mode = { "n", "x", "o" }, function() require("flash").jump() end,              desc = "Flash" },
      { "S",     mode = { "n", "x", "o" }, function() require("flash").treesitter() end,        desc = "Flash Treesitter" },
      { "r",     mode = "o",               function() require("flash").remote() end,            desc = "Remote Flash" },
      { "R",     mode = { "o", "x" },      function() require("flash").treesitter_search() end, desc = "Treesitter Search" },
      { "<c-s>", mode = { "c" },           function() require("flash").toggle() end,            desc = "Toggle Flash Search" },
    },
  },

  -- {
  --   "utilyre/barbecue.nvim",
  --   name = "barbecue",
  --   version = "*",
  --   dependencies = {
  --     "SmiteshP/nvim-navic",
  --     "nvim-tree/nvim-web-devicons", -- optional dependency
  --   },
  --   opts = {
  --     -- configurations go here
  --   },
  --   config = function()
  --     require("barbecue").setup({
  --       create_autocmd = false, -- prevent barbecue from updating itself automatically
  --     })
  --
  --     vim.api.nvim_create_autocmd({
  --       "WinScrolled", -- or WinResized on NVIM-v0.9 and higher
  --       "BufWinEnter",
  --       "CursorHold",
  --       "InsertLeave",
  --
  --       -- include this if you have set `show_modified` to `true`
  --       -- "BufModifiedSet",
  --     }, {
  --       group = vim.api.nvim_create_augroup("barbecue.updater", {}),
  --       callback = function()
  --         require("barbecue.ui").update()
  --       end,
  --     })
  --   end,
  -- },
  -- persist sessions
  {
    "folke/persistence.nvim",
    event = "BufReadPre", -- this will only start session saving when an actual file was opened
    opts = {},
  },

  {
    "echasnovski/mini.nvim",
    config = function()
      -- Better Around/Inside textobjects
      --
      -- Examples:
      --  - va)  - [V]isually select [A]round [)]paren
      --  - yinq - [Y]ank [I]nside [N]ext [']quote
      --  - ci'  - [C]hange [I]nside [']quote
      require("mini.ai").setup({ n_lines = 500 })

      -- Add/delete/replace surroundings (brackets, quotes, etc.)
      --
      -- - saiw) - [S]urround [A]dd [I]nner [W]ord [)]Paren
      -- - sd'   - [S]urround [D]elete [']quotes
      -- - sr)'  - [S]urround [R]eplace [)] [']
      require("mini.surround").setup()

      require("mini.pairs").setup()

      -- local statusline = require("mini.statusline")
      -- statusline.setup({
      --   use_icons = vim.g.have_nerd_font,
      -- })
      -- ---@diagnostic disable-next-line: duplicate-set-field
      -- statusline.section_location = function()
      --   return "%2l:%-2v"
      -- end

      local gen_loader = require("mini.snippets").gen_loader
      -- require("mini.snippets").setup({
      --   snippets = {
      --     -- Load custom file with global snippets first (adjust for Windows)
      --     gen_loader.from_file("~/.config/nvim/snippets/global.json"),
      --
      --     -- Load snippets based on current language by reading files from
      --     -- "snippets/" subdirectories from 'runtimepath' directories.
      --     gen_loader.from_lang(),
      --   },
      --   -- Module mappings. Use `''` (empty string) to disable one.
      --   mappings = {
      --     -- Expand snippet at cursor position. Created globally in Insert mode.
      --     expand = "<C-i>",
      --
      --     -- Interact with default `expand.insert` session.
      --     -- Created for the duration of active session(s)
      --     jump_next = "<C-l>",
      --     jump_prev = "<C-h>",
      --     stop = "<C-c>",
      --   },
      -- })
    end,
  },

  {
    "echasnovski/mini.icons",
    enabled = true,
    opts = {},
    lazy = true,
  },

  {
    "fladson/vim-kitty",
    "MunifTanjim/nui.nvim",
  },

  {
    "nvchad/showkeys",
    cmd = "ShowkeysToggle",
    opts = {
      timeout = 1,
      maxkeys = 6,
      -- bottom-left, bottom-right, bottom-center, top-left, top-right, top-center
      position = "bottom-right",
    },

    keys = {
      {
        "<leader>ut",
        function()
          vim.cmd("ShowkeysToggle")
        end,
        desc = "Show key presses",
      },
    },
  },

  {
    "whatyouhide/vim-textobj-xmlattr",
    dependencies = "kana/vim-textobj-user",
  },

  {
    "mg979/vim-visual-multi",
  },

  {
    "nvim-lualine/lualine.nvim",
    config = function()
      require("lualine").setup({
        options = {
          theme = "catppuccin",
          section_separators = "",
          component_separators = "",
          -- section_separators = { left = '', right = '' },
          -- component_separators = { left = '', right = '' },
          icons_enabled = true,
        },
        dependencies = {
          "nvim-tree/nvim-web-devicons",
        },
        sections = {
          lualine_a = { "mode" },
          -- lualine_b = { "diagnostics" },
          lualine_b = { "diagnostics", "filename" },
          lualine_c = {},
          -- lualine_c = { { "filename", path = 1 } },
          lualine_x = { "lsp_status", "filetype" },
          lualine_y = { "branch", "diff", "progress" },
          lualine_z = { "location" },
        },
      })
    end,
  },

  -- {
  --   "vimpostor/vim-tpipeline",
  --   config = function()
  --     vim.g.tpipeline_autoembed = 1
  --     vim.g.tpipeline_restore = 1
  --     vim.g.tpipeline_clearstl = 1
  --     vim.g.tpipeline_map_keys = 1
  --     vim.g.tpipeline_use_default_keybindings = 0
  --     vim.g.tpipeline_use_default_menu = 0
  --     vim.g.tpipeline_show_cmd = 1
  --     vim.g.tpipeline_show_context = 1
  --     vim.g.tpipeline_show_keybindings = 1
  --     vim.g.tpipeline_show_menu = 1
  --   end,
  -- },
  -- {
  --   "chrisgrieser/nvim-origami",
  --   event = "VeryLazy",
  --   opts = {
  --     foldtext = {
  --       lineCount = {
  --         template = " %d",
  --       },
  --     },
  --   },
  --   init = function()
  --     vim.opt.foldlevel = 99
  --     vim.opt.foldlevelstart = 99
  --
  --     local fold_util = require("utils.code-folds")
  --
  --     vim.keymap.set("n", "za", "za", { noremap = true, silent = true })
  --     vim.keymap.set("n", "[[", fold_util.goto_previous_fold, { noremap = true, silent = true })
  --     vim.keymap.set("n", "]]", "zj", { noremap = true, silent = true })
  --
  --     vim.api.nvim_create_autocmd({ "TextChanged", "InsertLeave", "LspAttach" }, {
  --       callback = function(opts)
  --         fold_util.update_ranges(opts.buf)
  --       end,
  --     })
  --
  --     local last_row = nil
  --     vim.api.nvim_create_autocmd("CursorMoved", {
  --       callback = function(opts)
  --         local row = vim.api.nvim_win_get_cursor(0)[1]
  --         if row ~= last_row then
  --           last_row = row
  --
  --           fold_util.update_current_fold(row, opts.buf)
  --         end
  --       end,
  --     })
  --
  --     vim.api.nvim_create_autocmd({ "BufUnload", "BufWipeout" }, {
  --       callback = function(opts)
  --         fold_util.clear(opts.buf)
  --       end,
  --     })
  --
  --     vim.opt.statuscolumn = "%!v:lua.StatusCol()"
  --     function _G.StatusCol()
  --       return fold_util.statuscol()
  --     end
  --   end,
  -- },
}
