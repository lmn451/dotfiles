# ───────────────────────────────────────
# RESTORING CONFIGURATIONS FROM DOTFILES
# ───────────────────────────────────────

# 🍺 Restore Homebrew installations
echo "Restoring Homebrew packages..."
brew bundle --file=Brewfile
echo "Homebrew packages restored!\n"

# 🐟 Restore Fish shell configurations
echo "Restoring Fish configurations..."
cp -r fish/* ~/.config/fish
source ~/.config/fish/config.fish
echo "Fish configurations restored!\n"

# 🖥️ Restore iTerm2 preferences
echo "Restoring iTerm2 preferences..."
cp com.googlecode.iterm2.plist ~/Library/Preferences/
echo "iTerm2 preferences restored!\n"

#  Restore ZSH configuration
echo "Restoring ZSH configuration..."
cp zsh_config.zsh ~/.zshrc
echo "ZSH configuration restored!\n"
source ~/.zhrcs

echo "All configurations have been restored!"
