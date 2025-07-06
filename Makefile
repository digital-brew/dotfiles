deploy:
	./scripts/deploy

brew:
	brew bundle install

macos:
	sh ./macos/defaults.sh

symlink:
	./scripts/symlink

init-brew:
	"$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"

stow:
	stow aerospace AutoRaise borders github-copilot hammerspoon ideavimrc intelephense npmrc nushell nvim opencode raycast sketchybar skhd starship svim yabai tmux wezterm zellij zshrc
