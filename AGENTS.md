# AGENTS.md - Dotfiles Repository Guide

## Build/Test/Lint Commands
- `make stow` - Deploy dotfiles using GNU Stow
- `make brew` - Install Homebrew packages from Brewfile
- `make macos` - Apply macOS system defaults
- `make deploy` - Run deployment script
- `stylua .` - Format Lua files (in nvim configs)

## Code Style Guidelines

### Lua (Neovim configs)
- Use 2-space indentation
- Double quotes preferred for strings
- No call parentheses for single string/table args
- Line width: 120 characters
- Unix line endings

### Shell Scripts
- Use `#!/bin/bash` or `#!/bin/sh` shebang
- Follow POSIX compliance where possible
- Use proper error handling with `set -e`

### Configuration Files
- TOML: Use snake_case for keys
- JSON: Follow standard formatting
- YAML: 2-space indentation

### File Organization
- Group related configs in subdirectories
- Use descriptive filenames
- Keep init files minimal, delegate to modules