return {
  "adibhanna/simplemarkdown.nvim",
  ft = { "markdown" },
  config = function()
    require("simplemarkdown").setup({
      -- Preview mode settings
      preview_mode = {
        enable = true,
        default_mode = "preview", -- "preview" or "edit"
        conceal_level = 2,
        show_raw_on_cursor = true, -- Show raw markdown when cursor is on line
      },
      -- Other settings...
    })
  end,
}
