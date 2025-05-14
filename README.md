## Requirements

- `brew install git stow tmux`
- `brew install neovim ripgrep fd`
- `brew install zsh pure fzf zsh-completions zsh-autosuggestions olets/tap/zsh-abbr`

## Installation

```
git clone git@github.com:vpryim/dotfiles.git
cd dotfiles
stow .
```

## Disable MacOS lang popup

```
sudo mkdir -p /Library/Preferences/FeatureFlags/Domain
sudo /usr/libexec/PlistBuddy -c "Add 'redesigned_text_cursor:Enabled' bool false" /Library/Preferences/FeatureFlags/Domain/UIKit.plist
```

## Disable font smoothing

```
defaults -currentHost write -g AppleFontSmoothing -int 0
```

## Install ukrainian typography keyboard layout

```
brew install --cask ukrainian-typographic-keyboard
```

https://github.com/denysdovhan/ukrainian-typographic-keyboard
