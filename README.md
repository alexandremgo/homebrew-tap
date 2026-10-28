# BaguetteDB Homebrew tap

```bash
brew install alexandremgo/tap/baguettedb
```

Installs `bdb`, the [BaguetteDB](https://baguettedb.com) command line, also available as `baguettedb`, on Apple
Silicon and Intel Macs and on x86-64 and ARM64 Linux. `alexandremgo/tap/bdb` names the same formula.

The formula installs the archives of the [releases](https://github.com/alexandremgo/baguettedb/releases), checked
against their SHA-256. Publishing a release rewrites it from
[`scripts/homebrew-formula.sh`](https://github.com/alexandremgo/baguettedb/blob/main/scripts/homebrew-formula.sh), so a
change to the formula belongs in that script.
