return {
  "obsidian-nvim/obsidian.nvim",
  enabled = false,
  lazy = true,
  ft = "markdown",
  event = {
    "BufReadPre /Users/moonlander/Notes/*.md",
    "BufNewFile /Users/moonlander/Notes/*.md",
  },
  dependencies = {
    "nvim-lua/plenary.nvim",
  },
  opts = {
    workspaces = {
      {
        name = "Notes",
        path = "/Users/moonlander/Notes",
      },
    },
    notes_subdir = "0. INBOX",
    new_notes_location = notes_subdir,
    attachments = {
      img_folder = "/Assets",
    },
  },
}
