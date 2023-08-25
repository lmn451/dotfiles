# ───────────────────────────────────────
# RESTORING CONFIGURATIONS FROM DOTFILES
# ───────────────────────────────────────

# 🍺 Restore Homebrew installations
echo "Restoring Homebrew packages..."
brew bundle --file=Brewfile
echo "Homebrew packages restored!\n"

# 🐟 Restore Fish shell configurations
echo "Restoring Fish configurations..."
cp fish_config.fish ~/.config/fish/config.fish
cp -r fish_functions/* ~/.config/fish/functions/
cp -r fish_completions/* ~/.config/fish/completions/
echo "Fish configurations restored!\n"

# 🖥️ Restore iTerm2 preferences
echo "Restoring iTerm2 preferences..."
cp com.googlecode.iterm2.plist ~/Library/Preferences/
echo "iTerm2 preferences restored!\n"

echo "All configurations have been restored!"
