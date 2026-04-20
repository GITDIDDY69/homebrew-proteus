# homebrew-proteus

Homebrew tap for [Proteus](https://github.com/GITDIDDY69/Proteus) — a
lightweight macOS virtual machine manager powered by the Apple Hypervisor
Framework.

## Install

```bash
brew tap gitdiddy69/proteus
brew install --cask proteus
```

## Uninstall

```bash
brew uninstall --cask proteus
```

Virtual machine data at `~/Library/Application Support/Proteus/vms/` is
**not removed** on uninstall. See [docs/uninstall.md](https://github.com/GITDIDDY69/Proteus/blob/main/docs/uninstall.md)
for complete removal instructions.

## Requirements

- macOS Ventura 13 or later (Apple silicon or Intel)
- The app requires the Apple Hypervisor Framework (`com.apple.security.hypervisor`)

## Updates

Proteus uses [Sparkle](https://sparkle-project.org/) for in-app update
detection. The appcast is published at:
`https://gitdiddy69.github.io/Proteus/appcast.xml`
