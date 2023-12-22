# ───────────────────────────────────────
# BACKING UP CONFIGURATIONS TO DOTFILES
# ───────────────────────────────────────

# 🍺 Backup Homebrew installations
echo "Backing up Homebrew packages..."
brew bundle dump --file=Brewfile
echo "Homebrew packages backed up!\n"

# 🐟 Backup Fish shell configurations
echo "Backing up Fish configurations..."
cp ~/.config/fish/config.fish fish_config.fish
cp -r ~/.config/fish/functions/ fish_functions/
cp -r ~/.config/fish/completions/ fish_completions/
echo "Fish configurations backed up!\n"

# 🖥️ Backup iTerm2 preferences
echo "Backing up iTerm2 preferences..."
cp ~/Library/Preferences/com.googlecode.iterm2.plist .
echo "iTerm2 preferences backed up!\n"

echo "All configurations have been backed up!"
