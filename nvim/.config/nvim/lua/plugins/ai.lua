return {
  {
    "olimorris/codecompanion.nvim",
    enabled = false,
    opts = {
      extensions = {
        history = {
          enabled = true,
          opts = {
            keymap = "gh",
            auto_generate_title = true,
            continue_last_chat = false,
            delete_on_clearing_chat = false,
            picker = "snacks",
            enable_logging = false,
            dir_to_save = vim.fn.stdpath("data") .. "/codecompanion-history",
          },
        },
        -- mcphub = {
        --   callback = "mcphub.extensions.codecompanion",
        --   opts = {
        --     make_vars = true,
        --     make_slash_commands = true,
        --     show_result_in_chat = true,
        --   },
        -- },
        vectorcode = {
          opts = {
            add_tool = true,
          },
        },
      },
      adapters = {
        copilot = function()
          return require("codecompanion.adapters").extend("copilot", {
            schema = {
              model = {
                default = "gemini-2.5-pro",
              },
            },
          })
        end,
      },
    },
    keys = {
      { "<leader>ic", "<cmd>CodeCompanion<cr>", desc = "CodeCompanion" },
      { "<leader>iC", "<cmd>CodeCompanionChat<cr>", desc = "CodeCompanion Chat" },
      { "<leader>ia", "<cmd>CodeCompanionActions<cr>", desc = "CodeCompanion Actions" },
      { "<leader>id", "<cmd>CodeCompanionCmd<cr>", desc = "CodeCompanion CMD" },
    },
    dependencies = {
      "j-hui/fidget.nvim",
      "ravitemer/codecompanion-history.nvim", -- Save and load conversation history
      "nvim-lua/plenary.nvim",
      "nvim-treesitter/nvim-treesitter",
      -- {
      --     "Davidyz/VectorCode", -- Index and search code in your repositories
      --     version = "*",
      --     build = "pipx upgrade vectorcode",
      --     dependencies = { "nvim-lua/plenary.nvim" },
      -- },
    },
    config = function()
      require("codecompanion").setup({
        strategies = {
          chat = {
            adapter = "copilot",
          },
          inline = {
            adapter = "copilot",
          },
          cmd = {
            adapter = "copilot",
          },
        },
        display = {
          action_palette = {
            width = 95,
            height = 10,
            prompt = "Prompt ", -- Prompt used for interactive LLM calls
            provider = "snacks", -- Can be "default", "telescope", "mini_pick" or "snacks". If not specified, the plugin will autodetect installed providers.
            opts = {
              show_default_actions = true, -- Show the default actions in the action palette?
              show_default_prompt_library = true, -- Show the default prompt library in the action palette?
            },
          },
        },
      })
    end,
  },
  {
    "yetone/avante.nvim",
    event = "VeryLazy",
    enabled = false,
    lazy = false,
    version = false, -- Set this to "*" to always pull the latest release version, or set it to false to update to the latest code changes.
    opts = {
      -- add any opts here
      -- for example
      provider = "copilot",
      copilot = {
        -- model = "claude-3.7-sonnet-thought",
        model = "claude-3.7-sonnet",
        temperature = 1,
        max_tokens = 20000,
      },
    },
    -- if you want to build from source then do `make BUILD_FROM_SOURCE=true`
    build = "make",
    -- build = "powershell -ExecutionPolicy Bypass -File Build.ps1 -BuildFromSource false" -- for windows
    dependencies = {
      "nvim-treesitter/nvim-treesitter",
      "stevearc/dressing.nvim",
      "nvim-lua/plenary.nvim",
      "MunifTanjim/nui.nvim",
      --- The below dependencies are optional,
      -- "echasnovski/mini.pick", -- for file_selector provider mini.pick
      -- "nvim-telescope/telescope.nvim", -- for file_selector provider telescope
      -- "hrsh7th/nvim-cmp", -- autocompletion for avante commands and mentions
      -- "ibhagwan/fzf-lua", -- for file_selector provider fzf
      -- "nvim-tree/nvim-web-devicons", -- or echasnovski/mini.icons
      "zbirenbaum/copilot.lua", -- for providers='copilot'
      {
        -- support for image pasting
        "HakonHarnes/img-clip.nvim",
        event = "VeryLazy",
        opts = {
          -- recommended settings
          default = {
            embed_image_as_base64 = false,
            prompt_for_file_name = false,
            drag_and_drop = {
              insert_mode = true,
            },
            -- required for Windows users
            use_absolute_path = true,
          },
        },
      },
      {
        -- Make sure to set this up properly if you have lazy=true
        "MeanderingProgrammer/render-markdown.nvim",
        opts = {
          file_types = { "markdown", "Avante" },
        },
        ft = { "markdown", "Avante" },
      },
    },
  },
  {
    "zbirenbaum/copilot.lua",
    enabled = false,
    cmd = "Copilot",
    build = ":Copilot auth",
    event = "InsertEnter",
    config = function()
      require("copilot").setup({
        panel = {
          enabled = true,
          auto_refresh = true,
          keymap = {
            jump_next = "<c-j>",
            jump_prev = "<c-k>",
            accept = "<c-a>",
            refresh = "r",
            open = "<M-CR>",
          },
          layout = {
            position = "bottom", -- | top | left | right
            ratio = 0.4,
          },
        },
        suggestion = {
          enabled = true,
          auto_trigger = true,
          debounce = 75,
          keymap = {
            accept = "<c-a>",
            accept_word = false,
            accept_line = false,
            next = "<c-j>",
            prev = "<c-k>",
            dismiss = "<C-e>",
          },
        },
      })
    end,
  },
  {
    "CopilotC-Nvim/CopilotChat.nvim",
    enabled = false,
    dependencies = {
      { "github/copilot.vim" }, -- or zbirenbaum/copilot.lua
      { "nvim-lua/plenary.nvim", branch = "master" }, -- for curl, log and async functions
    },
    build = "make tiktoken", -- Only on MacOS or Linux
    opts = {
      -- See Configuration section for options
    },
    -- See Commands section for default commands if you want to lazy load on them
  },
  {
    "supermaven-inc/supermaven-nvim",
    enabled = false,
    config = function()
      require("supermaven-nvim").setup({})
    end,
  },
  {
    "Exafunction/windsurf.nvim",
    enabled = true,
    dependencies = {
      "nvim-lua/plenary.nvim",
      "hrsh7th/nvim-cmp",
    },
    config = function()
      require("codeium").setup({
        -- Optionally disable cmp source if using virtual text only
        enable_cmp_source = false,
        virtual_text = {
          enabled = false,

          -- These are the defaults

          -- Set to true if you never want completions to be shown automatically.
          manual = false,
          -- A mapping of filetype to true or false, to enable virtual text.
          filetypes = {},
          -- Whether to enable virtual text of not for filetypes not specifically listed above.
          default_filetype_enabled = true,
          -- How long to wait (in ms) before requesting completions after typing stops.
          idle_delay = 75,
          -- Priority of the virtual text. This usually ensures that the completions appear on top of
          -- other plugins that also add virtual text, such as LSP inlay hints, but can be modified if
          -- desired.
          virtual_text_priority = 65535,
          -- Set to false to disable all key bindings for managing completions.
          map_keys = true,
          -- The key to press when hitting the accept keybinding but no completion is showing.
          -- Defaults to \t normally or <c-n> when a popup is showing.
          accept_fallback = nil,
          -- Key bindings for managing completions in virtual text mode.
          key_bindings = {
            -- Accept the current completion.
            accept = "<Tab>",
            -- Accept the next word.
            accept_word = false,
            -- Accept the next line.
            accept_line = false,
            -- Clear the virtual text.
            clear = false,
            -- Cycle to the next completion.
            next = "<M-]>",
            -- Cycle to the previous completion.
            prev = "<M-[>",
          },
        },
      })
    end,
  },
  {
    "NickvanDyke/opencode.nvim",
    dependencies = {
      -- Recommended for `ask()` and `select()`.
      -- Required for `toggle()`.
      { "folke/snacks.nvim", opts = { input = {}, picker = {} } },
    },
    config = function()
      vim.g.opencode_opts = {
        -- Your configuration, if any — see `lua/opencode/config.lua`
      }

      -- Required for `vim.g.opencode_opts.auto_reload`
      vim.opt.autoread = true

      -- Recommended/example keymaps
      vim.keymap.set({ "n", "x" }, "<leader>oa", function()
        require("opencode").ask("@this: ", { submit = true })
      end, { desc = "Ask about this" })
      vim.keymap.set({ "n", "x" }, "<leader>os", function()
        require("opencode").select()
      end, { desc = "Select prompt" })
      vim.keymap.set({ "n", "x" }, "<leader>o+", function()
        require("opencode").prompt("@this")
      end, { desc = "Add this" })
      vim.keymap.set("n", "<leader>ot", function()
        require("opencode").toggle()
      end, { desc = "Toggle embedded" })
      vim.keymap.set("n", "<leader>oc", function()
        require("opencode").command()
      end, { desc = "Select command" })
      vim.keymap.set("n", "<leader>on", function()
        require("opencode").command("session_new")
      end, { desc = "New session" })
      vim.keymap.set("n", "<leader>oi", function()
        require("opencode").command("session_interrupt")
      end, { desc = "Interrupt session" })
      vim.keymap.set("n", "<leader>oA", function()
        require("opencode").command("agent_cycle")
      end, { desc = "Cycle selected agent" })
      vim.keymap.set("n", "<S-C-u>", function()
        require("opencode").command("messages_half_page_up")
      end, { desc = "Messages half page up" })
      vim.keymap.set("n", "<S-C-d>", function()
        require("opencode").command("messages_half_page_down")
      end, { desc = "Messages half page down" })
    end,
  },
}
