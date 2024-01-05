# ───────────────────────────────────────
# BACKING UP CONFIGURATIONS TO DOTFILES
# ───────────────────────────────────────

# 🍺 Backup Homebrew installations
echo "Backing up Homebrew packages..."
rm Brewfile
brew bundle dump --file=Brewfile
echo "Homebrew packages backed up!\n"

# 🐟 Backup Fish shell configurations
echo "Backing up Fish configurations..."
cp -r ~/.config/fish/* fish
echo "Fish configurations backed up!\n"

# 🖥️ Backup iTerm2 preferences
echo "Backing up iTerm2 preferences..."
cp ~/Library/Preferences/com.googlecode.iterm2.plist .
echo "iTerm2 preferences backed up!\n"

#  Backup ZSH configuration
echo "Backing up ZSH configuration..."
cp ~/.zshrc zsh_config.zsh
echo "ZSH configuration backed up!\n"

echo "All configurations have been backed up!"
