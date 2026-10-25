# Homebrew tap for Orchestra

```sh
brew install --cask theorchestradev/tap/orchestra
```

The cask installs [Orchestra](https://github.com/theorchestradev/orchestra) for macOS 13
or later. Orchestra updates itself, so `brew upgrade` skips it unless you pass `--greedy`.
`brew uninstall --zap --cask orchestra` keeps `~/.orchestra/`, which holds your
workspaces and session worktrees.

The release workflow in `theorchestradev/orchestra` updates `Casks/orchestra.rb` for each
stable, signed release. Don't edit the version or SHA-256 by hand.
