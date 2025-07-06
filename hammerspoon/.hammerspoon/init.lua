-- First time notes:
--
-- Install IPC so that the `hs` utility works.
--    Go to the hammerspoon console and type: `hs.ipc.cliInstall()`
--    If this returns false, make sure you pre-create
--    `/usr/local/bin` and `/usr/local/share/man/man1` permissioned to your user:
--
--    sudo mkdir /usr/local/bin /usr/local/share/man/man1
--    sudo chown $USER /usr/local/bin /usr/local/share/man/man1
--
--    If that still fails try uninstalling first: `hs.ipc.cliUninstall()`
--    More info: https://www.hammerspoon.org/docs/hs.ipc.html#cliInstall
require("hs.ipc")

require("hs.application")
require("hs.fs")


local stackline = require "stackline"
stackline:init({
  paths = {
    yabai = "/opt/homebrew/bin/yabai"
  },
  appearance = {
    radius = 5,
    color = { white = 0.7 },
    iconPadding = 0,
    pillThinness = 5,
    dimmer = 2,
    iconDimmer = 2,
    offset = {
      x = 6,
      y = 2,
    },
  },
})

-- bind alt+ctrl+t to toggle stackline icons
hs.hotkey.bind({'alt', 'ctrl'}, 't', function()
    stackline.config:toggle('appearance.showIcons')
    if stackline.config:get('appearance.showIcons') then
        hs.execute('yabai -m space --padding abs:46:10:42:10')
    else
        hs.execute('yabai -m space --padding abs:46:10:14:10')
    end
end)
