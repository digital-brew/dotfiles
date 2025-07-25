return {
  'adibhanna/nvim-notes',
  dependencies = {
    'MunifTanjim/nui.nvim', -- Required for UI components
  },
  config = function()
    require('nvim-notes').setup({
      vault_path = '~/Notes', -- Where to store notes
    })
  end,
}
