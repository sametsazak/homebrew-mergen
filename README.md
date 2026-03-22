# homebrew-mergen

Homebrew tap for [Mergen](https://github.com/sametsazak/mergen) — macOS security auditing tool.

## Install

**CLI tool:**
```bash
brew install sametsazak/mergen/mergen
```

**GUI app:**
```bash
brew install --cask sametsazak/mergen/mergen-app
```

Or tap first if you prefer:
```bash
brew tap sametsazak/mergen
brew install mergen
brew install --cask mergen-app
```

## Usage

```bash
mergen scan          # run all CIS Benchmark checks
mergen scan --fix    # run checks and auto-fix issues
mergen report        # export results to JSON/HTML
```
