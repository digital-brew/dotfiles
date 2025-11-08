return {
  {
    "catgoose/nvim-colorizer.lua",
    opts = {
      user_default_options = {
        -- Highlighting mode.  'background'|'foreground'|'virtualtext'
        mode = "virtualtext", -- Set the display mode
        -- Virtualtext character to use
        virtualtext = "■",
        -- Display virtualtext inline with color.  boolean|'before'|'after'.  True sets to 'after'
        virtualtext_inline = 'before',
        -- Virtualtext highlight mode: 'background'|'foreground'
        virtualtext_mode = "foreground",
        tailwind = true,
      },
    },
  },
  -- {
  --   "hrsh7th/nvim-cmp",
  --   dependencies = {
  --     { "roobert/tailwindcss-colorizer-cmp.nvim", config = true },
  --   },
  --   opts = function(_, opts)
  --     -- original LazyVim kind icon formatter
  --     local format_kinds = opts.formatting.format
  --     opts.formatting.format = function(entry, item)
  --       format_kinds(entry, item) -- add icons
  --       return require("tailwindcss-colorizer-cmp").formatter(entry, item)
  --     end
  --   end,
  -- },
}
