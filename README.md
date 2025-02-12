## Requirements

- `brew install git stow neovim tmux`
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
