# Macbook Pro dotfiles and setup at GitLab

This repository contains everything to bootstrap my Macbook Pro (16 inch, 2019).

In addition to the files stored in this repository, the following instructions are needed to fully setup a Macbook Pro.

## Preparations

### iterm2

Install it manually from the [website](https://www.iterm2.com/), start it and add it to the deck.

Initial settings:

- Create a new profile in `Preferences > Profile` named `white`
     - `Colors > Color presets > Tango Light`
     - `Session > Status bar enabled` and `Configure Status Bar`. Add `git state`, `CPU utilization`, `Memory utilization`. Click `Auto-Rainbow`.
- Mark `white` profile and select `Other Actions > Set as default`.

### Git (XCode)

Install it on the command line first, it will ask for permission.

```
xcode-select --install
```

### Dot files

```
git clone https://gitlab.com/dnsmichi/dotfiles.git
cd dotfiles
```

Sync the files.

```
./bootstrap.sh
```

Apply macOS settings.

```
./.macos
```

Install Homebrew and OhMyZSH.

```
./brew_once.sh
```

Install tools and applications with Homebrew bundle.

```
brew bundle
```

This makes use of the [Brewfile](Brewfile) definitions.

