# homebrew-mergen

Homebrew tap for [Mergen](https://github.com/sametsazak/mergen) — macOS security auditing tool.

## Install

```bash
brew tap sametsazak/mergen
```

**CLI tool:**
```bash
brew install mergen
```

**GUI app:**
```bash
brew install --cask mergen-app
```

## Usage

```bash
mergen scan          # run all CIS Benchmark checks
mergen scan --fix    # run checks and auto-fix issues
mergen report        # export results to JSON/HTML
```
